class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.7"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.7/wrkr-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "ac5e039094825e509f032ad7d5afca12671b8b6506a077b2d101743ed0a87608"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.7/wrkr-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "d8a33c31b8def0b6fc29fcc13bb20b755896312f5b27ab35988c12cfe1a6e3fb"
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
