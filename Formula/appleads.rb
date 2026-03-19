class Appleads < Formula
  desc "Production-ready CLI for Apple Search Ads API"
  homepage "https://github.com/FerdiKT/appleads-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v#{version}/appleads_#{version}_darwin_arm64.tar.gz"
      sha256 "3f2aca708aeb4e864a409664f916913306c18474db854f845036f6189521b4e3"
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
