class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.0/wrkr-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "497fc33e5b82355bf3b80e0d078ca5e2070b6a999ce5adb36fd9bc0f24307640"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.0/wrkr-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d6374a181ef62b62b1c11ae67359795354bb29f8de8aa2f6ae40b48fe4d9e16e"
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
