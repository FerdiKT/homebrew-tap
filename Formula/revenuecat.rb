class Revenuecat < Formula
  desc "Agent-first CLI for RevenueCat"
  homepage "https://github.com/FerdiKT/revenuecat-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_arm64.tar.gz"
      sha256 "40d5e455a41a52d0a713be2964e4db0419e004e0104fa20792c7cb81c0a8e375"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_amd64.tar.gz"
      sha256 "4d92c13ff82e4b63fbb5584b9e919eecc4e58ece1538b7cd26619e1b3451b1bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_arm64.tar.gz"
      sha256 "63440b1ef2d8de5fd851ae13377e93a89b05816b4bc5ba15d4ab48f58104a374"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_amd64.tar.gz"
      sha256 "9639ddc10413eedc1c631dcde05dd89270012a77d5351d4cec6e39f5ed50171b"
    end
  end

  def install
    bin.install "revenuecat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenuecat version")
  end
end
