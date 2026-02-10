class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.2.0/wrkr-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7a6dec78294a2d48548b7128feeed8bf795849548ed7243584c0d266598d0e16"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.2.0/wrkr-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "008fc17872d4e66d8292565a1ee77dbd8d23e9a138d3b4f7ca0413ac92c8ceb2"
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
