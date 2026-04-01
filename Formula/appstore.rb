class Appstore < Formula
  desc "CLI for direct App Store API search/hints/app-details"
  homepage "https://github.com/FerdiKT/appstore-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/appstore-cli/releases/download/v0.1.2/appstore_0.1.2_darwin_arm64.tar.gz"
      sha256 "ddb17b7339be18f352a081190f2059e5b98e7164396232bc8f5142bc38e93e31"
    else
      url "https://github.com/FerdiKT/appstore-cli/releases/download/v#{version}/appstore_#{version}_darwin_amd64.tar.gz"
      sha256 "a63d94236608e3be50a2d84df980e82e9230f08afbf4e9cbcbe56f50c589dd68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/appstore-cli/releases/download/v#{version}/appstore_#{version}_linux_arm64.tar.gz"
      sha256 "4af108e8d26f7d15377cc4f7e70a3717a25a3f5511ec6e799505e786f73a45cc"
    else
      url "https://github.com/FerdiKT/appstore-cli/releases/download/v#{version}/appstore_#{version}_linux_amd64.tar.gz"
      sha256 "6057f312be9429d8e3e5fec57755ae513311f6d7ce71e832949e8af4cf81a0cc"
    end
  end

  def install
    bin.install "appstore"
  end

  test do
    assert_match "Commands:", shell_output("#{bin}/appstore --help")
  end
end
