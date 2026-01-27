class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.9"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.9/wrkr-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "73ff079c7659deb9ea82a021918bfffb8e8f0aa9eff35d304b69f515f6420103"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.9/wrkr-v0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "e9dc45ab8142cd9210b3edd2b624c75b357ccf15a34aa2ed136ec4160df2beed"
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
