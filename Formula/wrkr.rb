class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.0.5"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.5/wrkr-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "f8cf4298f9f3cc2f421b8e1d81208cacecb769139a2865554aa12f8d5c12b66e"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.0.5/wrkr-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "7161a8f7a77b48faaa2b217359261d98f52ac84f5d6cf09f0277cf813f824ce2"
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
