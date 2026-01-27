class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.1/wrkr-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "c77d82d8d49e59e9867b2bc97112716ca440a77f913d17bb7207a1481fe19dc3"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.1/wrkr-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "78110105cf588f45ecd3a1a0970391cd67b6b59b69c5012a6f81dac4cce0ac2b"
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
