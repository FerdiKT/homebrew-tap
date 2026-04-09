# typed: false
# frozen_string_literal: true

class Taskmd < Formula
  desc "Agent-friendly Markdown task tracking CLI for local projects"
  homepage "https://github.com/FerdiKT/taskmd-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/taskmd-cli/releases/download/v0.2.0/taskmd_0.2.0_darwin_arm64.tar.gz"
      sha256 "e30ed8ac0e3246b0ba092e0bca2983e7e07d09a17c57a98b5442ef3bb207aecc"
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
