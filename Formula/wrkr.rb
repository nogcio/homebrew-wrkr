class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.6"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.6/wrkr-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "b10839e75b97581dd018f5bd0d5acb26ef6d195834999943198edfa23a06fd8d"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.6/wrkr-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "e2a7b598b60e37f1b6fa18a2afa992c3fced592d2ddc5d4067e4b40bae7694f2"
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
