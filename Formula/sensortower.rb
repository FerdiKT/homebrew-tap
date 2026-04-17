class Sensortower < Formula
  desc "JSON-first CLI for Sensor Tower iOS market data"
  homepage "https://github.com/FerdiKT/sensortower-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_arm64.tar.gz"
      sha256 "eacbb7b73acdf178bd57cb2768904c16b6602cc6aa989e561211853d233de50b"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_darwin_amd64.tar.gz"
      sha256 "db9cc2a13ebd96db70fbff019ea099c4e9313a7a9699e37c8a8ecd35eeb1e0ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_arm64.tar.gz"
      sha256 "aa327eadfd4f2317886e0a4bc0add24f1d97ff15490e3357cf9989f35809bbfc"
    else
      url "https://github.com/FerdiKT/sensortower-cli/releases/download/v#{version}/sensortower_#{version}_linux_amd64.tar.gz"
      sha256 "aacb8c4002021779153f6c95d0dc213fefc89bb469c0c6fdce8fa49ad98691a3"
    end
  end

  def install
    bin.install "sensortower"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sensortower version")
  end
end
