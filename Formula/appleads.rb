class Appleads < Formula
  desc "Production-ready CLI for Apple Search Ads API"
  homepage "https://github.com/FerdiKT/appleads-cli"
  license "MIT"

  # This formula will be auto-updated by the release workflow.
  # Placeholder version — will be replaced on first `v*` tag release.
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v1.0.0/appleads_1.0.0_darwin_arm64.tar.gz"
      sha256 "3f2aca708aeb4e864a409664f916913306c18474db854f845036f6189521b4e3"
    else
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v#{version}/appleads_#{version}_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v#{version}/appleads_#{version}_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/FerdiKT/appleads-cli/releases/download/v#{version}/appleads_#{version}_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "appleads"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/appleads version")
  end
end
