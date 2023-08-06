class Dstack < Formula
  include Language::Python::Virtualenv

  desc "ML workflow orchestration system designed for reproducibility and collaboration"
  homepage "https://docs.dstack.ai/"
  url "https://files.pythonhosted.org/packages/bb/a8/7c6816c1934df51323af6cc509ed3b3d5460e428039d423daa09e99f50f7/dstack-0.10.6.tar.gz"
  sha256 "10dc0c0bd629738558c6497cabf1c28e574cc45bece6e9eab6ade623c87a6ac0"
  license "MPL-2.0"

  bottle do
    sha256 cellar: :any,                 arm64_ventura:  "71829e96c07950696d0de19fcb28f582771f7619b67f9208fb80453d9b0353ae"
    sha256 cellar: :any,                 arm64_monterey: "84c347f4f95df6d5ecae1d0a20da2e05b0481b66fa0496be83e8273c3bab8fcd"
    sha256 cellar: :any,                 arm64_big_sur:  "b5572e753065ddaf81e102a8b739b61d438fcf4aa93cd37573cb144e79fd23b0"
    sha256 cellar: :any,                 ventura:        "d6aee7ca7193866ef9c50d993e69d444881ce3463e422b0fbe07693913e0f2cc"
    sha256 cellar: :any,                 monterey:       "11674c588702642096aca27364bf7f8e32f885b6ec1ba89a3dc697487768b16d"
    sha256 cellar: :any,                 big_sur:        "ec45a93fe6eea38d4c2596b5ee3469dc48b2ca347913f07f5411d5d1bfac5a15"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "8e0012bba6cb9b1cca0834efe3e69153dcacf9481943e804d53de45693f6d8eb"
  end

  # `pkg-config`, `rust`, and `openssl@3` are for cryptography.
  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "cffi"
  depends_on "openssl@3"
  depends_on "protobuf"
  depends_on "pycparser"
  depends_on "pygments"
  depends_on "python-certifi"
  depends_on "python-typing-extensions"
  depends_on "python@3.11"
  depends_on "pyyaml"
  depends_on "six"

  resource "greenlet" do
    on_intel do
      url "https://files.pythonhosted.org/packages/1e/1e/632e55a04d732c8184201238d911207682b119c35cecbb9a573a6c566731/greenlet-2.0.2.tar.gz"
      sha256 "e7c8dc13af7db097bed64a051d2dd49e9f0af495c26995c00a9ee842690d34c0"
    end
  end

  resource "adal" do
    url "https://files.pythonhosted.org/packages/90/d7/a829bc5e8ff28f82f9e2dc9b363f3b7b9c1194766d5a75105e3885bfa9a8/adal-1.2.7.tar.gz"
    sha256 "d74f45b81317454d96e982fd1c50e6fb5c99ac2223728aea8764433a39f566f1"
  end

  resource "aiosqlite" do
    url "https://files.pythonhosted.org/packages/ea/51/060efa10a814145acd4e42c6e5ed540b8714cad52ca026c5930e7c473049/aiosqlite-0.19.0.tar.gz"
    sha256 "95ee77b91c8d2808bd08a59fbebf66270e9090c3d92ffbf260dc0db0b979577d"
  end

  resource "alembic" do
    url "https://files.pythonhosted.org/packages/c6/e3/3d9b95470606b93bd6e6d5c899ed9d0049dfa10246ecca25b18c2c708cdf/alembic-1.11.1.tar.gz"
    sha256 "6a810a6b012c88b33458fceb869aef09ac75d6ace5291915ba7fae44de372c01"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/28/99/2dfd53fd55ce9838e6ff2d4dac20ce58263798bd1a0dbe18b3a9af3fcfce/anyio-3.7.1.tar.gz"
    sha256 "44a3c9aba0f5defa43261a8b3efb97891f2bd7d804e0e1f56419befa1adfc780"
  end

  resource "apscheduler" do
    url "https://files.pythonhosted.org/packages/ea/ed/f1ad88e88208c24db80dcaae7a5a339bb283956984f8fa59933d2806413a/APScheduler-3.10.1.tar.gz"
    sha256 "0293937d8f6051a0f493359440c1a1b93e882c57daf0197afeff0e727777b96e"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/97/90/81f95d5f705be17872843536b1868f351805acf6971251ff07c1b8334dbb/attrs-23.1.0.tar.gz"
    sha256 "6279836d581513a26f1bf235f9acd333bc9115683f14f7e8fae46c98fc50e015"
  end

  resource "azure-common" do
    url "https://files.pythonhosted.org/packages/3e/71/f6f71a276e2e69264a97ad39ef850dca0a04fce67b12570730cb38d0ccac/azure-common-1.1.28.zip"
    sha256 "4ac0cd3214e36b6a1b6a442686722a5d8cc449603aa833f3f0f40bda836704a3"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/fd/51/0ee0a2844712f54117b3ee4853c3d209ba37641f0c587be22a993990989e/azure-core-1.28.0.zip"
    sha256 "e9eefc66fc1fde56dab6f04d4e5d12c60754d5a9fa49bdcfd8534fc96ed936bd"
  end

  resource "azure-graphrbac" do
    url "https://files.pythonhosted.org/packages/52/31/87dd867c239b5b2c5bccade8a0fd81c28b9b380ece3db47b58ae05270842/azure-graphrbac-0.61.1.zip"
    sha256 "53e98ae2ca7c19b349e9e9bb1b6a824aeae8dcfcbe17190d20fe69c0f185b2e2"
  end

  resource "azure-identity" do
    url "https://files.pythonhosted.org/packages/ad/3e/34b445ef2f536f4710903cbc3ca33c4272ad37f676609188c4544dc8463a/azure-identity-1.13.0.zip"
    sha256 "c931c27301ffa86b07b4dcf574e29da73e3deba9ab5d1fe4f445bb6a3117e260"
  end

  resource "azure-keyvault-secrets" do
    url "https://files.pythonhosted.org/packages/5c/a1/78ecabf98e97d600dcac1559ff64b4bc9f84eca126c0aeba859916832b0c/azure-keyvault-secrets-4.7.0.zip"
    sha256 "77ee2534ba651a1f306c85d7b505bc3ccee8fea77450ebafafc26aec16e5445d"
  end

  resource "azure-mgmt-authorization" do
    url "https://files.pythonhosted.org/packages/9e/ab/e79874f166eed24f4456ce4d532b29a926fb4c798c2c609eefd916a3f73d/azure-mgmt-authorization-4.0.0.zip"
    sha256 "69b85abc09ae64fc72975bd43431170d8c7eb5d166754b98aac5f3845de57dc4"
  end

  resource "azure-mgmt-compute" do
    url "https://files.pythonhosted.org/packages/d3/6d/6bcde6f9c551394f40c33fbc9ce0db7e2b04778265d72aa4dbd11a76f48f/azure-mgmt-compute-30.1.0.zip"
    sha256 "a56379db90d4e24c078bc8745d0e5f773229f9ef067cd712c10faa988615a75b"
  end

  resource "azure-mgmt-core" do
    url "https://files.pythonhosted.org/packages/14/95/2b2085e40f4b9de88ad256428a669583066d8ab348fc19110c7d04c3189b/azure-mgmt-core-1.4.0.zip"
    sha256 "d195208340094f98e5a6661b781cde6f6a051e79ce317caabd8ff97030a9b3ae"
  end

  resource "azure-mgmt-keyvault" do
    url "https://files.pythonhosted.org/packages/e6/e6/7fe0f188a1a574941f19820170350b321bb7fdc3f1abec232f517aadb090/azure-mgmt-keyvault-10.2.2.zip"
    sha256 "2c6ea831365ea604fceca749af00a973865811c954b04007522b59af114290be"
  end

  resource "azure-mgmt-loganalytics" do
    url "https://files.pythonhosted.org/packages/04/dc/48a624066655108e7f8490f643920c4ccec0798780a4e204e4ea93368039/azure-mgmt-loganalytics-13.0.0b6.zip"
    sha256 "f4aceb37f3ea14bffd1c5dcade31dc1f1de058621e183d9362d0966ad9c287c8"
  end

  resource "azure-mgmt-monitor" do
    url "https://files.pythonhosted.org/packages/f0/6a/3148045479b8d3c6d489d74df244c19ccd0657fa8fb84889b0cf760d7f97/azure-mgmt-monitor-6.0.1.zip"
    sha256 "8fe2eb9cbb1fbd1365a252987fbd99517c60e656f7dd1ecf7f1bde052cb11c32"
  end

  resource "azure-mgmt-msi" do
    url "https://files.pythonhosted.org/packages/77/d7/4ef788fb8e0f90a3fe5875b05dcef535ad4b4a766372af82870120cd5dd3/azure-mgmt-msi-7.0.0.zip"
    sha256 "72d46c9a62783ec4eab619be9d1b78ffebbdaa164d406fd303f16303f37256b2"
  end

  resource "azure-mgmt-network" do
    url "https://files.pythonhosted.org/packages/6b/f2/837f864ca73329becc9ab54b51469ab3bf16f6ec1c0792aecf665a9fdc93/azure-mgmt-network-23.0.0b2.zip"
    sha256 "0ce5802cee30943ea3f106cd6fcbe32ffa5dfb435ab9e7b72f4ac3cab6b74644"
  end

  resource "azure-mgmt-resource" do
    url "https://files.pythonhosted.org/packages/81/65/128984a9bdca0542a6fabd748e4b84398de625193379ac7fc3a0805465cd/azure-mgmt-resource-23.0.1.zip"
    sha256 "c2ba6cfd99df95f55f36eadc4245e3dc713257302a1fd0277756d94bd8cb28e0"
  end

  resource "azure-mgmt-storage" do
    url "https://files.pythonhosted.org/packages/83/9d/f486f601c9902bce42ea77adfa6f81895535adfb3eadc1f8522b1abbd44b/azure-mgmt-storage-21.0.0.zip"
    sha256 "6eb13eeecf89195b2b5f47be0679e3f27888efd7bd2132eec7ebcbce75cb1377"
  end

  resource "azure-mgmt-subscription" do
    url "https://files.pythonhosted.org/packages/84/67/14b19a006e13d86f05ee59faf78c39dc443d4fd6967344e9c94f688949c1/azure-mgmt-subscription-3.1.1.zip"
    sha256 "4e255b4ce9b924357bb8c5009b3c88a2014d3203b2495e2256fa027bf84e800e"
  end

  resource "azure-monitor-query" do
    url "https://files.pythonhosted.org/packages/ad/16/fd06cccfc583d8d38d8d99ee92ec1bbc9604cf6e8c62e64ddca5644e0a60/azure-monitor-query-1.2.0.zip"
    sha256 "2c57432443f203069e64e500c7e958ca31650f641950515ffe65555ba134c371"
  end

  resource "azure-storage-blob" do
    url "https://files.pythonhosted.org/packages/bd/5f/64a471e09f064b3b3a53529ecd9ed8facfebfafff3dad7ee9350f3a00a30/azure-storage-blob-12.17.0.zip"
    sha256 "c14b785a17050b30fc326a315bdae6bc4a078855f4f94a4c303ad74a48dc8c63"
  end

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/8c/ae/3af7d006aacf513975fd1948a6b4d6f8b4a307f8a244e1a3d3774b297aad/bcrypt-4.0.1.tar.gz"
    sha256 "27d375903ac8261cfe4047f6709d16f7d18d39b1ec92aaf72af989552a650ebd"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/ea/e9/a0419a48465ace125bf55473416ba465aa26fba58b05f14b1122ce98737d/boto3-1.28.10.tar.gz"
    sha256 "cb8af03f553f1c7db7137bc897785baeeaa97b8fde483eb1cdb1f1ef3cec9cb7"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/8f/6f/f0eb30793d6582d0ade2d98cc2de5cbf59eb9bc1c57e44d8a9741b3523e3/botocore-1.31.10.tar.gz"
    sha256 "736a9412f405d6985570c4a87b533c2396dd8d4042d8c7a0ca14e73d4f1bcf9d"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/9d/8b/8e2ebf5ee26c21504de5ea2fb29cc6ae612b35fd05f959cdb641feb94ec4/cachetools-5.3.1.tar.gz"
    sha256 "dce83f2d9b4e1f732a8cd44af8e8fab2dbe46201467fc98b3ef8f269092bf62b"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/2a/53/cf0a48de1bdcf6ff6e1c9a023f5f523dfe303e4024f216feac64b6eb7f67/charset-normalizer-3.2.0.tar.gz"
    sha256 "3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/72/bd/fedc277e7351917b6c4e0ac751853a97af261278a4c7808babafa8ef2120/click-8.1.6.tar.gz"
    sha256 "48ee849951919527a045bfe3bf7baa8a959c423134e1a5b98c05c20ba75a1cbd"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/93/b7/b6b3420a2f027c1067f712eb3aea8653f8ca7490f183f9917879c447139b/cryptography-41.0.2.tar.gz"
    sha256 "7d230bf856164de164ecb615ccc14c7fc6de6906ddd5b491f3af90d3514c925c"
  end

  resource "cursor" do
    url "https://files.pythonhosted.org/packages/59/1b/ae231e1f9a8e1f970453f92fcb20a3fce87fa38753915477c26bc1655d86/cursor-1.3.5.tar.gz"
    sha256 "6758cae6ac14765ec85d9ce3f14fcb98fff5045f06d8398f1e8da8ce3acd2f20"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/65/e0/f9d77b3a1569e2217abf260b0b1462401736973d1c5d3d335f6f2009daa2/fastapi-0.100.0.tar.gz"
    sha256 "acb5f941ea8215663283c10018323ba7ea737c571b67fc7e88e9469c7eb1d12e"
  end

  resource "file-read-backwards" do
    url "https://files.pythonhosted.org/packages/e2/0f/04d8a9877d80c26506cad53e3ff7024747e9429a5a06479c68f060948d1a/file_read_backwards-3.0.0.tar.gz"
    sha256 "512c3e534043527a8fae2a0b7151aa255f2da303e77fd40f7dcf42a1e091cc26"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/00/0b/c506e9e44e4c4b6c89fcecda23dc115bf8e7ff7eb127e0cb9c114cbc9a15/filelock-3.12.2.tar.gz"
    sha256 "002740518d8aa59a26b0c76e10fb8c6e15eae825d34b6fdf670333fd7b938d81"
  end

  resource "git-url-parse" do
    url "https://files.pythonhosted.org/packages/26/ea/c8c22b051026d9debe95c92df4fa0388f30fcde6f10fc0000058d13f6996/git-url-parse-1.2.2.tar.gz"
    sha256 "7b5f4e3aeb1d693afeee67a3bd4ac063f7206c2e8e46e559f0da0da98445f117"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/4b/47/dc98f3d5d48aa815770e31490893b92c5f1cd6c6cf28dd3a8ae0efffac14/gitdb-4.0.10.tar.gz"
    sha256 "6eb990b69df4e15bad899ea868dc46572c3f75339735663b81de79b06f17eb9a"
  end

  resource "gitpython" do
    url "https://files.pythonhosted.org/packages/87/56/6dcdfde2f3a747988d1693100224fb88fc1d3bbcb3f18377b2a3ef53a70a/GitPython-3.1.32.tar.gz"
    sha256 "8d9b8cb1e80b9735e8717c9362079d3ce4c6e5ddeebedd0361b228c3a67a62f6"
  end

  resource "google-api-core" do
    url "https://files.pythonhosted.org/packages/f3/b8/f727ada5b63aba53848e3791dd57be7481d5c9bf86978600ca9cca4ab03e/google-api-core-2.11.1.tar.gz"
    sha256 "25d29e05a0058ed5f19c61c0a78b1b53adea4d9364b464d014fbda941f6d1c9a"
  end

  resource "google-api-python-client" do
    url "https://files.pythonhosted.org/packages/a8/b4/c30aea47e146c7243bf72e4b9d93a677d8ca947697fd208d074829587f79/google-api-python-client-2.94.0.tar.gz"
    sha256 "4ff598b7b83d5c0c5582927e74947286070b5b21a13e1bb64409fd92e45bfb26"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/a4/3a/b6ab1073d2ac98c1b4f9036a4d37d5720f783bd4dc6e2c0ae516d3b13326/google-auth-2.22.0.tar.gz"
    sha256 "164cba9af4e6e4e40c3a4f90a1a6c12ee56f14c0b4868d1ca91b32826ab334ce"
  end

  resource "google-auth-httplib2" do
    url "https://files.pythonhosted.org/packages/c6/b5/a9e956fd904ecb34ec9d297616fe98fa4106fc12f3b0a914dec983c267b9/google-auth-httplib2-0.1.0.tar.gz"
    sha256 "a07c39fd632becacd3f07718dfd6021bf396978f03ad3ce4321d060015cc30ac"
  end

  resource "google-cloud-appengine-logging" do
    url "https://files.pythonhosted.org/packages/b8/e8/1132c9a96012b2959d8c645cd69843ff62a1b8eefda9830b6267ff9129d1/google-cloud-appengine-logging-1.3.1.tar.gz"
    sha256 "b3f5f797d6bacc60654de21901902f8a7878f7168d76be5d47c7775fe0c3e0a8"
  end

  resource "google-cloud-audit-log" do
    url "https://files.pythonhosted.org/packages/b1/3d/48e8b2c0cc7113d1674526b609944ef77d7182f233b23c50fec7106b2e2c/google-cloud-audit-log-0.2.5.tar.gz"
    sha256 "86e2faba3383adc8fd04a5bd7fd4f960b3e4aedaa7ed950f2f891ce16902eb6b"
  end

  resource "google-cloud-compute" do
    url "https://files.pythonhosted.org/packages/c4/53/d228bfaec639a1ecc805292b28656355c3915599fcfee8ccb2ea9f7eecd4/google-cloud-compute-1.13.0.tar.gz"
    sha256 "93b72129c6443c898da5a060d2021bc2d11c2a57ef2fbb9306afbb5126a376b9"
  end

  resource "google-cloud-core" do
    url "https://files.pythonhosted.org/packages/6b/60/dcc26e42d3754ac57c51a524f53c988f2aa755faec4cc00a232bb0077637/google-cloud-core-2.3.3.tar.gz"
    sha256 "37b80273c8d7eee1ae816b3a20ae43585ea50506cb0e60f3cf5be5f87f1373cb"
  end

  resource "google-cloud-logging" do
    url "https://files.pythonhosted.org/packages/01/c4/be34f3f4f14b0b885da7354193c7183d65af21f05a095c6340266061b7ac/google-cloud-logging-3.6.0.tar.gz"
    sha256 "42134223956850ddd64877c88042d31f78658e7b067a5a8e3dd28236b71f3c32"
  end

  resource "google-cloud-secret-manager" do
    url "https://files.pythonhosted.org/packages/25/13/7e481680b20cfc722da1c1d85a630cbb174642df2ec9be48cce336533e77/google-cloud-secret-manager-2.16.2.tar.gz"
    sha256 "596521091c39b94a260d814776421c8a009f6463b392880041efa80283b5fd29"
  end

  resource "google-cloud-storage" do
    url "https://files.pythonhosted.org/packages/6b/20/51e9676cc112ec7344c0a8690361175dc1f41ed6edf618eae8af87d92a49/google-cloud-storage-2.10.0.tar.gz"
    sha256 "934b31ead5f3994e5360f9ff5750982c5b6b11604dc072bc452c25965e076dc7"
  end

  resource "google-crc32c" do
    url "https://files.pythonhosted.org/packages/d3/a5/4bb58448fffd36ede39684044df93a396c13d1ea3516f585767f9f960352/google-crc32c-1.5.0.tar.gz"
    sha256 "89284716bc6a5a415d4eaa11b1726d2d60a0cd12aadf5439828353662ede9dd7"
  end

  resource "google-resumable-media" do
    url "https://files.pythonhosted.org/packages/c0/1b/173eacfeb03e6d026c932cb810ace18987dc9ca219154c89d7746b348b9c/google-resumable-media-2.5.0.tar.gz"
    sha256 "218931e8e2b2a73a58eb354a288e03a0fd5fb1c4583261ac6e4c078666468c93"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/28/9b/ea531afe585da044686ab13351c99dfbb2ca02b96c396874946d52d0e127/googleapis-common-protos-1.59.1.tar.gz"
    sha256 "b35d530fe825fb4227857bc47ad84c33c809ac96f312e13182bdeaa2abe1178a"
  end

  resource "grpc-google-iam-v1" do
    url "https://files.pythonhosted.org/packages/40/92/aee864f03f47c672a31d128e49981b01ca629d81541dcc9904c652dbab5b/grpc-google-iam-v1-0.12.6.tar.gz"
    sha256 "2bc4b8fdf22115a65d751c9317329322602c39b7c86a289c9b72d228d960ef5f"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/2f/7e/ddf5d42c77418ebf6d57f1503084e2955e8cf1d49671372fbdff7a82cbe5/grpcio-1.56.2.tar.gz"
    sha256 "0ff789ae7d8ddd76d2ac02e7d13bfef6fc4928ac01e1dcaa182be51b6bcc0aaa"
  end

  resource "grpcio-status" do
    url "https://files.pythonhosted.org/packages/fe/34/9f4b8ebf122bed3f12031ad25aeb057e58837120e5e0ca04ca05cc78e06f/grpcio-status-1.56.2.tar.gz"
    sha256 "a046b2c0118df4a5687f4585cca9d3c3bae5c498c4dff055dcb43fb06a1180c8"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "httplib2" do
    url "https://files.pythonhosted.org/packages/3d/ad/2371116b22d616c194aa25ec410c9c6c37f23599dcd590502b74db197584/httplib2-0.22.0.tar.gz"
    sha256 "d7a10bc5ef5ab08322488bde8c726eeee5c8618723fdb399597ec58f3d82df81"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/db/7a/c0a56c7d56c7fa723988f122fa1f1ccf8c5c4ccc48efad0d214b49e5b1af/isodate-0.6.1.tar.gz"
    sha256 "48c5881de7e8b0a0d648cb024c8062dc84e7b840ed81e864c7614fd3c127bde9"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/e5/a2/3e03efdd25f93e1296d0454a7680456fda2925f2ff624bf43855d785b3bd/jsonschema-4.18.4.tar.gz"
    sha256 "fb3642735399fa958c0d2aad7057901554596c63349f4f6b283c493cf692a25d"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/12/ce/eb5396b34c28cbac19a6a8632f0e03d309135d77285536258b82120198d8/jsonschema_specifications-2023.7.1.tar.gz"
    sha256 "c91a50404e88a1f6ba40636778e2ee08f6e24c5613fe4c53ac24578a5a7f72bb"
  end

  resource "mako" do
    url "https://files.pythonhosted.org/packages/05/5f/2ba6e026d33a0e6ddc1dddf9958677f76f5f80c236bd65309d280b166d3e/Mako-1.2.4.tar.gz"
    sha256 "d60a3903dc3bb01a18ad6a89cdbe2e4eadc69c0bc8ef1e3773ba53d44c3f7a34"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/6d/7c/59a3248f411813f8ccba92a55feaac4bf360d29e2ff05ee7d8e1ef2d7dbf/MarkupSafe-2.1.3.tar.gz"
    sha256 "af598ed32d6ae86f1b747b82783958b1a4ab8f617b06fe68795c7f026abbdcad"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "msal" do
    url "https://files.pythonhosted.org/packages/85/9b/cf94ca59e4d88afe1852962d2b7e0cd9cee752dddf7cd6e30382cdc3f7ed/msal-1.23.0.tar.gz"
    sha256 "25c9a33acf84301f93d1fdbe9f1a9c60cd38af0d5fffdbfa378138fc7bc1e86b"
  end

  resource "msal-extensions" do
    url "https://files.pythonhosted.org/packages/33/5e/2e23593c67df0b21ffb141c485ca0ae955569203d7ff5064040af968cb81/msal-extensions-1.0.0.tar.gz"
    sha256 "c676aba56b0cce3783de1b5c5ecfe828db998167875126ca4b47dc6436451354"
  end

  resource "msrest" do
    url "https://files.pythonhosted.org/packages/68/77/8397c8fb8fc257d8ea0fa66f8068e073278c65f05acb17dcb22a02bfdc42/msrest-0.7.1.zip"
    sha256 "6e7661f46f3afd88b75667b7187a92829924446c7ea1d169be8c4bb7eeb788b9"
  end

  resource "msrestazure" do
    url "https://files.pythonhosted.org/packages/48/fc/5c2940301a83f18884a8e3aead2b2ff177a1a373f75c7b17e2e404199b2a/msrestazure-0.6.4.tar.gz"
    sha256 "a06f0dabc9a6f5efe3b6add4bd8fb623aeadacf816b7a35b0f89107e0544d189"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz"
    sha256 "9859c40929662bec5d64f34d01c99e093149682a3f38915dc0655d5a633dd918"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b9/6c/7c6658d258d7971c5eb0d9b69fa9265879ec9a9158031206d47800ae2213/packaging-23.1.tar.gz"
    sha256 "a392980d2b6cffa644431898be54b0045151319d1e7ec34f0cfed48767dd334f"
  end

  resource "paramiko" do
    url "https://files.pythonhosted.org/packages/87/62/cee9551811c846e9735f749dbdf05d4f9f0dbcecd66eae35b5daacf9a117/paramiko-3.2.0.tar.gz"
    sha256 "93cdce625a8a1dc12204439d45033f3261bdb2c201648cfcdc06f9fd0f94ec29"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/02/d8/acee75603f31e27c51134a858e0dea28d321770c5eedb9d1d673eb7d3817/pbr-5.11.1.tar.gz"
    sha256 "aefc51675b0b533d56bb5fd1c8c6c0522fe31896679882e1c4c63d5e4a0fccb3"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/1f/f8/969e6f280201b40b31bcb62843c619f343dcc351dff83a5891530c9dd60e/portalocker-2.7.0.tar.gz"
    sha256 "032e81d534a88ec1736d03f780ba073f047a06c478b06e2937486f334e955c51"
  end

  resource "proto-plus" do
    url "https://files.pythonhosted.org/packages/41/bd/4022c9a6de35821f215fdefc8b4e68bf9a054d04f43246f0c89ba8a7538e/proto-plus-1.22.3.tar.gz"
    sha256 "fdcd09713cbd42480740d2fe29c990f7fbd885a67efc328aa8be6ee3e9f76a6b"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/d6/0f/96b7309212a926c1448366e9ce69b081ea79d63265bde33f11cc9cfc2c07/psutil-5.9.5.tar.gz"
    sha256 "5410638e4df39c54d957fc51ce03048acd8e6d60abc0f5107af51e5fb566eb3c"
  end

  resource "py-cpuinfo" do
    url "https://files.pythonhosted.org/packages/37/a8/d832f7293ebb21690860d2e01d8115e5ff6f2ae8bbdc953f0eb0fa4bd2c7/py-cpuinfo-9.0.0.tar.gz"
    sha256 "3cdbbf3fac90dc6f118bfd64384f309edeadd902d7c8fb17f02ffa1fc3f49690"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/61/ef/945a8bcda7895717c8ba4688c08a11ef6454f32b8e5cb6e352a9004ee89d/pyasn1-0.5.0.tar.gz"
    sha256 "97b7290ca68e62a832558ec3976f15cbf911bf5d7c7039d8b861c2a0ece69fde"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/3b/e4/7dec823b1b5603c5b3c51e942d5d9e65efd6ff946e713a325ed4146d070f/pyasn1_modules-0.3.0.tar.gz"
    sha256 "5bd01446b736eb9d31512a30d46c1ac3395d676c6f3cafa4c03eb54b9925631c"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/eb/84/9b0a0e2d931fc9bdb32e6905076714f9592f9b20de03c90fd0f65b3ab063/pydantic-1.10.10.tar.gz"
    sha256 "3b8d5bd97886f9eb59260594207c9f57dce14a6f869c6ceea90188715d29921a"
  end

  resource "pygtail" do
    url "https://files.pythonhosted.org/packages/b0/89/437120e303d5d2c81107ed3415d5f3c9975f7dfdeef9e4440cef364e3bf9/pygtail-0.14.0.tar.gz"
    sha256 "55616d31a081eaaeb069d0946f2bc7e530ebf505d4c3c050f8e941786a3449d3"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/30/72/8259b2bccfe4673330cea843ab23f86858a419d8f1493f66d413a76c7e3b/PyJWT-2.8.0.tar.gz"
    sha256 "57e28d156e3d5c10088e0c68abb90bfac3df82b40a71bd0daa20c65ccd5c23de"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
    sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/4f/13/28e88033cab976721512e7741000fb0635fa078045e530a91abb25aea0c0/pyparsing-3.1.0.tar.gz"
    sha256 "edb662d6fe322d6e990b1594b5feaeadf806803359e3d4d42f11e295e588f0ea"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/5e/32/12032aa8c673ee16707a9b6cdda2b09c0089131f35af55d443b6a9c69c1d/pytz-2023.3.tar.gz"
    sha256 "1d8ce29db189191fb55338ee6d0387d82ab59f3d00eac103412d64e0ebd0c588"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/ae/0e/5a4c22e046dc8c94fec2046255ddd7068b7aaff66b3d0d0dd2cfbf8a7b20/referencing-0.30.0.tar.gz"
    sha256 "47237742e990457f7512c7d27486394a9aadaf876cbfaa4be65b27b4f4d47c6b"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/95/52/531ef197b426646f26b53815a7d2a67cb7a331ef098bb276db26a68ac49f/requests-oauthlib-1.3.1.tar.gz"
    sha256 "75beac4a47881eeb94d5ea5d6ad31ef88856affe2332b9aafb52c6452ccf0d7a"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/e3/12/67d0098eb77005f5e068de639e6f4cfb8f24e6fcb0fd2037df0e1d538fee/rich-13.4.2.tar.gz"
    sha256 "d653d6bccede5844304c605d5aac802c7cf9621efd700b46c7ec2b51ea914898"
  end

  resource "rich-argparse" do
    url "https://files.pythonhosted.org/packages/91/ac/789c1a81ac85f70cf17711e0fda2e0d27674d30b8addbfb36e92188a4f41/rich_argparse-1.2.0.tar.gz"
    sha256 "bf17fe00603ad90dbb94cd3a6a27a3a0051df6b3363fb1b46300398bb83740ea"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/da/3c/fa2701bfc5d67f4a23f1f0f4347284c51801e9dbc24f916231c2446647df/rpds_py-0.9.2.tar.gz"
    sha256 "8d70e8f14900f2657c249ea4def963bed86a29b81f81f5b76b5a9215680de945"
  end

  resource "rsa" do
    url "https://files.pythonhosted.org/packages/aa/65/7d973b89c4d2351d7fb232c2e452547ddfa243e93131e7cfa766da627b52/rsa-4.9.tar.gz"
    sha256 "e38464a49c6c85d7f1351b0126661487a7e0a14a50f1675ec50eb34d4f20ef21"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/49/bd/def2ab4c04063a5e114963aae90bcd3e3aca821a595124358b3b00244407/s3transfer-0.6.1.tar.gz"
    sha256 "640bb492711f4c0c0905e1f62b6aaeb771881935ad27884852411f8e9cacbca9"
  end

  resource "simple-term-menu" do
    url "https://files.pythonhosted.org/packages/2d/69/31c7d6927338e1deac36e62be5a122e109a0a835a9bf2e30d422c0f3ccc3/simple-term-menu-1.6.1.tar.gz"
    sha256 "368b4158d1749b868552fb6c054b8301785086c71a7253dac8404cc3cb2d30e8"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/21/2d/39c6c57032f786f1965022563eec60623bb3e1409ade6ad834ff703724f3/smmap-5.0.0.tar.gz"
    sha256 "c840e62059cd3be204b0c9c9f74be2c09d5648eddd4580d9314c3ecde0b30936"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/cd/50/d49c388cae4ec10e8109b1b833fd265511840706808576df3ada99ecb0ac/sniffio-1.3.0.tar.gz"
    sha256 "e60305c5e5d314f5389259b7f22aaa33d8f7dee49763119234af3755c55b9101"
  end

  resource "sqlalchemy" do
    url "https://files.pythonhosted.org/packages/e5/07/a928d473438adb98ebd2264f584c4bd2dd711dfe6caf4b1906cba14dd375/SQLAlchemy-2.0.19.tar.gz"
    sha256 "77a14fa20264af73ddcdb1e2b9c5a829b8cc6b8304d0f093271980e36c200a3f"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/06/68/559bed5484e746f1ab2ebbe22312f2c25ec62e4b534916d41a8c21147bf8/starlette-0.27.0.tar.gz"
    sha256 "6a6b0d042acb8d469a01eba54e9cda6cbd24ac602c4cd016723117d6a7e73b75"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/3d/78/81191f56abb7d3d56963337dbdff6aa4f55805c8afd8bad64b0a34199e9b/tqdm-4.65.0.tar.gz"
    sha256 "1871fb68a86b8fb3b59ca4cdd3dcccbc7e6d613eeed31f4c332531977b89beb5"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/ee/f5/3e644f08771b242f7460438cdc0aaad4d1484c1f060f1e52f4738d342983/tzlocal-5.0.1.tar.gz"
    sha256 "46eb99ad4bdb71f3f72b7d24f4267753e240944ecfc16f25d2719ba89827a803"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/d2/5a/4742fdba39cd02a56226815abfa72fe0aa81c33bed16ed045647d6000eba/uritemplate-4.1.1.tar.gz"
    sha256 "4346edfc5c3b79f694bccd6d6099a322bbeb628dbf2cd86eea55a456ce5124f0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e2/7d/539e6f0cf9f0b95b71dd701a56dae89f768cd39fd8ce0096af3546aeb5a3/urllib3-1.26.16.tar.gz"
    sha256 "8f135f6502756bde6b2a9b28989df5fbe87c9970cecaa69041edcce7f0589b14"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/46/b7/b97c7ad40f2433a4986c8786cb188f0bc42f3d0e6d826940c1dc3bd6c4f5/uvicorn-0.23.1.tar.gz"
    sha256 "da9b0c8443b2d7ee9db00a345f1eee6db7317432c9d4400f5049cc8d358383be"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/b3/17/d9453f774dd079fbe7d51565d58006f5059fc17c2fbcf952ef176fbb8657/watchfiles-0.19.0.tar.gz"
    sha256 "d9b073073e048081e502b6c6b0b88714c026a1a4c890569238d04aca5f9ca74b"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/b1/34/3a5cae1e07d9566ad073fa6d169bf22c03a3ba7b31b3c3422ec88d039108/websocket-client-1.6.1.tar.gz"
    sha256 "c951af98631d24f8df89ab1019fc365f2227c0892f12fd150e935607c79dd0dd"
  end

  resource "workflows.json" do
    url "https://raw.githubusercontent.com/dstackai/dstack/e0014b9eea73014bff7f4d87688839bd8504adcc/cli/dstack/schemas/workflows.json"
    sha256 "38cf87e5b1cd73c7e6d5ff5e43a6e793a7fad90c904b628b75a1013de52d9ab0"
  end

  def install
    # Ensure that the `openssl` crate picks up the intended library.
    ENV["OPENSSL_DIR"] = Formula["openssl@3"].opt_prefix
    ENV["OPENSSL_NO_VENDOR"] = "1"

    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install resources.reject { |r| r.name == "workflows.json" }
    venv.pip_install_and_link buildpath

    site_packages = Language::Python.site_packages("python3.11")
    (libexec/site_packages/"dstack/schemas").install resource("workflows.json")
  end

  test do
    system "git", "init", "--initial-branch=main"

    expected = "No remote branch is configured"
    output = shell_output("#{bin}/dstack init 2>&1", 1).chomp
    assert_match expected, output

    expected = "No default project is configured"
    output = shell_output("#{bin}/dstack tags add -a #{testpath} 2>&1 brewtest", 1).chomp
    assert_match expected, output

    assert_match version.to_s, shell_output("#{bin}/dstack --version")
  end
end
