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
      sha256 "a063401e3cc592c8148218457433f12465eb3e8781f1a539cef02db98a7bc20c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FerdiKT/appstore-cli/releases/download/v#{version}/appstore_#{version}_linux_arm64.tar.gz"
      sha256 "8a67eb9d4511715fff3db57f67d3b8b8deb913203fde0944e15a07f3fc7aae0a"
    else
      url "https://github.com/FerdiKT/appstore-cli/releases/download/v#{version}/appstore_#{version}_linux_amd64.tar.gz"
      sha256 "df4a673fd7ed1f6e389e4ca4ea1cbc4d5c9ae4405d69ae8e27f7dca757ccae9d"
    end
  end

  def install
    bin.install "appstore"
  end

  test do
    assert_match "Commands:", shell_output("#{bin}/appstore --help")
  end
end
