class Sensortower < Formula
  desc "JSON-first CLI for Sensor Tower iOS market data"
  homepage "https://github.com/FerdiKT/sensortower-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_arm64.tar.gz"
      sha256 "911f95547b69575bce56fac82fd0ddfab80dfa4536b49cad97d98484209a0266"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_amd64.tar.gz"
      sha256 "897f1b75acfb75a26cb67e6d01e791ec85178e72d5998626fd8286269c69ba97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_arm64.tar.gz"
      sha256 "2d5b6d80aabe8864d64d4a4d9b276ca685d10bb174017753fd48e86f3378593f"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_amd64.tar.gz"
      sha256 "6ff40b389a80623680fe96b1804ba1710fba3e01067b1b36eed5c676407f5e6e"
    end
  end

  def install
    bin.install "sensortower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sensortower version")
  end
end
