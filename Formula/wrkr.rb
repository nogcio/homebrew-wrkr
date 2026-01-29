class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.2/wrkr-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "566e70aa61b2a54dd549d49ce8190f6fbc80cf08f716cf4273138a313226f116"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.2/wrkr-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "ca49a962424a8b1c9640e329ba61d5562b41f56ccb540822db76775d8a6b02cd"
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
