# typed: false
# frozen_string_literal: true

class Taskmd < Formula
  desc "Agent-friendly Markdown task tracking CLI for local projects"
  homepage "https://github.com/FerdiKT/taskmd-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/taskmd-cli/releases/download/v#{version}/taskmd_#{version}_darwin_arm64.tar.gz"
      sha256 "296afdd000a4a2aaa8a33fbcae6a105d39d0ff94f79ab3fd6f505dbe22dfa446"
    else
      url "https://github.com/FerdiKT/taskmd-cli/releases/download/v#{version}/taskmd_#{version}_darwin_amd64.tar.gz"
      sha256 "3745129e098d3a5a6bf56cececf990370ebdca9140ed248152174a5db828e48e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/taskmd-cli/releases/download/v#{version}/taskmd_#{version}_linux_arm64.tar.gz"
      sha256 "d253639d49c211e005d7a45367ff67170a3a33969574705a23e0170e7b80f99c"
    else
      url "https://github.com/FerdiKT/taskmd-cli/releases/download/v#{version}/taskmd_#{version}_linux_amd64.tar.gz"
      sha256 "0b0b20e26ed8c90e6f4bca12fde40e58598626568864178b92da853bfc4f946d"
    end
  end

  def install
    bin.install "taskmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmd version")
  end
end
