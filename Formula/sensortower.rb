class Sensortower < Formula
  desc "JSON-first CLI for Sensor Tower iOS market data"
  homepage "https://github.com/FerdiKT/sensortower-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_arm64.tar.gz"
      sha256 "ed5f08e323903784017020accabf4322d1f0abe78ee3a94564a5a42438eff850"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_amd64.tar.gz"
      sha256 "97bf9c70c0b5792c941434414495db58abea16ad85ec22adc9f1c226fb6a18f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_arm64.tar.gz"
      sha256 "d3bfa13b6a9d709055d2b48264bad2dfbd5b11c6f48a29ebebf105debba33daa"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_amd64.tar.gz"
      sha256 "da4bc32cd5588a0b98788afd4a25800466a09896edec6a5a1f894e544e05dd9b"
    end
  end

  def install
    bin.install "sensortower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sensortower version")
  end
end
