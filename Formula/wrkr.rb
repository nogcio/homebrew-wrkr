class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.5"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.5/wrkr-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "7f3eed232784810cfadbec896ff6d71958072901dfe8821c77d3d35efa1e3c2b"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.5/wrkr-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "89028b2bc99e5ed2c08012be5257b980c3539ef659de679c5bdf8fb39c4104d5"
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
