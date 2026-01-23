class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.3/wrkr-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "954075193621b37145a4c42d50eb97887fecaa1b1606683d93e3e411b6b7be4d"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.3/wrkr-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "d7aafff8ed4272a42de398d53d08051de381abdba1da688d471100bdcbd9bc2e"
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
