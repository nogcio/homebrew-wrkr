class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.2/wrkr-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "3e122c65c9f0a7e61c76d433842eed7245d7b820202880917b8389ba9b643cbf"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.2/wrkr-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "58dc06c7e69f6c5523d47b9907c673475dcfc6abc1e05377756c3d9cd26b9f49"
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
