class Wrkr < Formula
  desc "Fast, scriptable load testing tool"
  homepage "https://github.com/nogcio/wrkr"
  version "v0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.2/wrkr-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "c7b6b3cfd293c25b0799c6f982c7066a33733e71267d89e8d62513070dddc022"
    end

    on_intel do
      url "https://github.com/nogcio/wrkr/releases/download/v0.1.2/wrkr-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "12d8cdd6a20a29932efa460f38d0b3cecb66a470146fde2642cf4ca28b39ea08"
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
