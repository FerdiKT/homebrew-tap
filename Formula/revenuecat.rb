class Revenuecat < Formula
  desc "Agent-first CLI for RevenueCat"
  homepage "https://github.com/FerdiKT/revenuecat-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_arm64.tar.gz"
      sha256 "0858f9ee731b34945c4ba90eb3d5b7366f7c1cb304a4be0fca514a97d3ce2b24"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_amd64.tar.gz"
      sha256 "66034ef9a8e35f3b4360df3a927a8da2cec5cbf51c6f8b0cdf3173db468029de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_arm64.tar.gz"
      sha256 "95cb5406002aabac222dc0676b75624b95ff4d963a446c44b7db78fa3233f81e"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_amd64.tar.gz"
      sha256 "5f05123bd5224e52fd32ebf95ce58ae09e0d77422a119669a0c6b318fb3719cc"
    end
  end

  def install
    bin.install "revenuecat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenuecat version")
  end
end
