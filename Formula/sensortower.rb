class Sensortower < Formula
  desc "JSON-first CLI for Sensor Tower iOS market data"
  homepage "https://github.com/FerdiKT/sensortower-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_arm64.tar.gz"
      sha256 "fa85adea9e0b0e8750008a60e0d2735932b42f907f852d2a0d4205a008553dde"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_amd64.tar.gz"
      sha256 "fe6d2c2b9b6eac4a3796c212c0f0b859ed8d6fc4758fc329fb91f604a3563331"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_arm64.tar.gz"
      sha256 "811eba54d0c71de201b1a6e4ef3dc9fc6edb46655aa2109509e886c8fb6b1853"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_amd64.tar.gz"
      sha256 "6cbca2b3cde05ed48b8186c00bed863bc2122e3410a4b4e1633ac13bd43d86d9"
    end
  end

  def install
    bin.install "sensortower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sensortower version")
  end
end
