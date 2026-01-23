class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.3/wrkr-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "bdb29a49708755b58b357f20058781f1aa263c74c70e1705b1067c773c38d146"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.3/wrkr-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "9aadc450f39dc3c5cc981589d7e371c69e2e1f247cb7e38dbff01087aa84bee4"
    end
  end

  depends_on "luajit"
  depends_on "protobuf"

  def install
    bin.install "wrkr"
  end

  test do
    system "#{bin}/wrkr", "--help"
  end
end
