class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.4"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.4/wrkr-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "e0d5859fc0f9182b8f83b2b6af54ebcd42f80cc6a50fc30452580a8d6789a904"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.4/wrkr-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "d5481e47c59e5251dffab54f93e2a4225e97768db94e04c1a8c62a77ef2b3da2"
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
