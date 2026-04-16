class Revenuecat < Formula
  desc "Agent-first CLI for RevenueCat"
  homepage "https://github.com/FerdiKT/revenuecat-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_arm64.tar.gz"
      sha256 "25bb8de8c643e221b290a0e4a987dbb84723581ebbd4a942ab237cf465f6123c"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_amd64.tar.gz"
      sha256 "c1a184b47d91e35e84896b37ace0dbc149dcf365674e22783a8377e32f7cbdc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_arm64.tar.gz"
      sha256 "f8e982a01dc84cc5c096461ecfa47e64b7035aabe976c30b85b8693538e86352"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_amd64.tar.gz"
      sha256 "b9bdea4ebba446b2b05f68de819b0c1ce5e8ae81a01b49b520b311521ce80f0a"
    end
  end

  def install
    bin.install "revenuecat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenuecat version")
  end
end
