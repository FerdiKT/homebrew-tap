class Revenuecat < Formula
  desc "Agent-first CLI for RevenueCat"
  homepage "https://github.com/FerdiKT/revenuecat-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_arm64.tar.gz"
      sha256 "3080c84504b1932917468fe20b7b253e9f13f20d9aa01b41f97f1534899177fb"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_darwin_amd64.tar.gz"
      sha256 "8b4541aa32ee114c16d1672fef67d57255c25f9e214e671e64689be4201acc4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_arm64.tar.gz"
      sha256 "3c6c1f567ba35e6909f3ff0dc5ec928b9a179317c5d506c539ff604e4901f65e"
    else
      url "https://github.com/FerdiKT/revenuecat-cli/releases/download/v#{version}/revenuecat_#{version}_linux_amd64.tar.gz"
      sha256 "c55175972ecdccedf92545c6c1b0a451c7ae77b48bbab52f6cc0d6d6721714d9"
    end
  end

  def install
    bin.install "revenuecat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revenuecat version")
  end
end
