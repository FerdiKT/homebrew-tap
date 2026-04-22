class Revenuecat < Formula
  desc "Agent-first CLI for RevenueCat"
  homepage "https://github.com/FerdiKT/revenuecat-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_arm64.tar.gz"
      sha256 "bf2708ad8df16785b6010d56235822c024117b2811f220f3d4960d4796ae6243"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_amd64.tar.gz"
      sha256 "8c84d4ff576e2df9d5fb0e4efdedf81838977a01238b9f80937b8300893ccc0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_arm64.tar.gz"
      sha256 "90fe1e6506c6874a0ee1495897ba866b289f819a9347e4b129cf8f141bf48ea8"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_amd64.tar.gz"
      sha256 "1a6f7b0aecc8ddde5d468296083efbc831cfe4acd6876f54540e585d0d537f90"
    end
  end

  def install
    bin.install "revenuecat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenuecat version")
  end
end
