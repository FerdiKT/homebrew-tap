class Youtube < Formula
  desc "Agent-first CLI for YouTube Data API v3"
  homepage "https://github.com/FerdiKT/youtube-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/youtube-cli/releases/download/v#{version}/youtube_#{version}_darwin_arm64.tar.gz"
      sha256 "55a5aa7b2282437c907c7722159c0dc82f82360a58b008de4134e12986341dbf"
    else
      url "https://github.com/FerdiKT/youtube-cli/releases/download/v#{version}/youtube_#{version}_darwin_amd64.tar.gz"
      sha256 "4a06da13f2ab0264c60936351b3441db1327a18728fccfd5fbc8056157260c2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/youtube-cli/releases/download/v#{version}/youtube_#{version}_linux_arm64.tar.gz"
      sha256 "a8e0b237058a16c80e3592f85307faea88c60e97743e5e927eec833ecf99db1c"
    else
      url "https://github.com/FerdiKT/youtube-cli/releases/download/v#{version}/youtube_#{version}_linux_amd64.tar.gz"
      sha256 "3fefc490fbb8cb41688fb5128538ea5acf213e91ed47f3dd29f4009fbb3d07c7"
    end
  end

  def install
    bin.install "youtube"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/youtube version")
  end
end
