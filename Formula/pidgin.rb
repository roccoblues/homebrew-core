class Pidgin < Formula
  desc "Multi-protocol chat client"
  homepage "https://pidgin.im/"
  url "https://downloads.sourceforge.net/project/pidgin/Pidgin/2.14.7/pidgin-2.14.7.tar.bz2"
  sha256 "fea6ab4f0572fe24646049c2b3fecbdca27abca6d06e95bd655e44db99bd69fe"
  license "GPL-2.0-or-later"

  livecheck do
    url "https://sourceforge.net/projects/pidgin/files/Pidgin/"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/?["' >]}i)
    strategy :page_match
  end

  bottle do
    sha256 arm64_big_sur: "fd09b46fab5d0f4e52d6b460081814cbed9dc446cc6cb379976678acf48045a9"
    sha256 big_sur:       "65c8b20b138eccee7e7a45280080c161f643cb570ba2b8258b9912dfd2784f00"
    sha256 catalina:      "54287daa973969e51387ebd2cbf46d58d29d010b6f8902a1029852fdb83b20ff"
    sha256 mojave:        "a1e76cc27f0aec4899968c82c85db0f78fd2f1b9ec9e266799ca83e32d03abd3"
  end

  depends_on "intltool" => :build
  depends_on "pkg-config" => :build
  depends_on "cairo"
  depends_on "gettext"
  depends_on "gnutls"
  depends_on "gtk+"
  depends_on "libgcrypt"
  depends_on "libgnt"
  depends_on "libidn"
  depends_on "libotr"
  depends_on "pango"

  # Finch has an equal port called purple-otr but it is a NIGHTMARE to compile
  # If you want to fix this and create a PR on Homebrew please do so.
  resource "pidgin-otr" do
    url "https://otr.cypherpunks.ca/pidgin-otr-4.0.2.tar.gz"
    sha256 "f4b59eef4a94b1d29dbe0c106dd00cdc630e47f18619fc754e5afbf5724ebac4"
  end

  def install
    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --prefix=#{prefix}
      --disable-avahi
      --disable-dbus
      --disable-doxygen
      --disable-gevolution
      --disable-gstreamer
      --disable-gstreamer-interfaces
      --disable-gtkspell
      --disable-meanwhile
      --disable-vv
      --enable-gnutls=yes
      --with-tclconfig=#{MacOS.sdk_path}/System/Library/Frameworks/Tcl.framework
      --with-tkconfig=#{MacOS.sdk_path}/System/Library/Frameworks/Tk.framework
      --without-x
    ]

    ENV["ac_cv_func_perl_run"] = "yes" if MacOS.version == :high_sierra

    # patch pidgin to read plugins and allow them to live in separate formulae which can
    # all install their symlinks into these directories. See:
    #   https://github.com/Homebrew/homebrew-core/pull/53557
    inreplace "finch/finch.c", "LIBDIR", "\"#{HOMEBREW_PREFIX}/lib/finch\""
    inreplace "libpurple/plugin.c", "LIBDIR", "\"#{HOMEBREW_PREFIX}/lib/purple-2\""
    inreplace "pidgin/gtkmain.c", "LIBDIR", "\"#{HOMEBREW_PREFIX}/lib/pidgin\""
    inreplace "pidgin/gtkutils.c", "DATADIR", "\"#{HOMEBREW_PREFIX}/share\""

    system "./configure", *args
    system "make", "install"

    resource("pidgin-otr").stage do
      ENV.prepend "CFLAGS", "-I#{Formula["libotr"].opt_include}"
      ENV.append_path "PKG_CONFIG_PATH", "#{lib}/pkgconfig"
      system "./configure", "--prefix=#{prefix}", "--mandir=#{man}"
      system "make", "install"
    end
  end

  test do
    system "#{bin}/finch", "--version"
    system "#{bin}/pidgin", "--version"

    pid = fork { exec "#{bin}/pidgin", "--config=#{testpath}" }
    sleep 5
    Process.kill "SIGTERM", pid
  end
end
