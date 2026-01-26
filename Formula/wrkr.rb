class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.8"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.8/wrkr-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "7e3b2d2c906755d5ccf290478bb95c9c434a9ec69531d3e13e1768dce5589646"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.8/wrkr-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "de24665f346bb6b6290e47726f99ab04f7d49096d045f4216edac25827ccca69"
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
