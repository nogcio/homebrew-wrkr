class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.2/wrkr-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "c0d207ff4322c2772924976c2c9636fc82faab4a2076d72156d441cd4994c5ae"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.2/wrkr-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "e7fd20d76f2238347b3d289e3d918d4e882116be48ebeb3ac594fddf23b44e38"
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
