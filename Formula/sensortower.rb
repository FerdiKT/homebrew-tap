class Sensortower < Formula
  desc "JSON-first CLI for Sensor Tower iOS market data"
  homepage "https://github.com/FerdiKT/sensortower-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_arm64.tar.gz"
      sha256 "53ecedfa7bebf81de6e14e62907f247da15663b88be79919f97950c8938b8a1a"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_amd64.tar.gz"
      sha256 "0d9e85e9da260a7ee92540b9a6c56795312e9ab9f09b79d60d79a3c8363b6cc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_arm64.tar.gz"
      sha256 "da4e1a31f383b59fa776d8c8f4c03141dd56f2d82e61059b79f06d3ffd0713c7"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_amd64.tar.gz"
      sha256 "aeae832d0125462286188ae1e5ebce2dde049930823646ab16aab02ba0fa9b6f"
    end
  end

  def install
    bin.install "sensortower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sensortower version")
  end
end
