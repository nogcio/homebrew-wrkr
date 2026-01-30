class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.2/wrkr-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "bf2ae5fed3e3fc20119ad3c14cfe45635958727788f526dae11c5f0eb3b875fe"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.2/wrkr-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "e81ebe91f33602da2b0c44e5b5a17649455eca30043aae1ce91aaa1f5ecdb256"
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
