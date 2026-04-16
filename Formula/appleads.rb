class Appleads < Formula
  desc "Production-ready CLI for Apple Search Ads API"
  homepage "https://github.com/FerdiKT/appleads-cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v1.1.1/appleads_1.1.1_darwin_arm64.tar.gz"
      sha256 "58a80e30c70127883ef736d5878a70ccf2b30102deeca04b49dbfac4e476cf74"
    else
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v#{version}/appleads_#{version}_darwin_amd64.tar.gz"
      sha256 "d3f9b5063e8f1d7fd360182440a98b7a70ea6ca0d4d3b1f4316d3f1f358a1f8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v#{version}/appleads_#{version}_linux_arm64.tar.gz"
      sha256 "f48dfad79a28a8bd7cbaefa74891dabc003c78298fa2963a564989ab771e50dc"
    else
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v#{version}/appleads_#{version}_linux_amd64.tar.gz"
      sha256 "630dbf8dd224db2e3f229aaeaeb02484c72466ab0a594d16521903c377541039"
    end
  end

  def install
    bin.install "appleads"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appleads version")
  end
end
