class Appstore < Formula
  desc "CLI for direct App Store API search/hints/app-details"
  homepage "https://github.com/ferdikt/appstore-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ferdikt/appstore-cli/releases/download/v#{version}/appstore_#{version}_darwin_arm64.tar.gz"
      sha256 "a026348f9c5dd34da0a048e194553e1777b724478146234b5d383907eee412af"
    else
      url "https://github.com/ferdikt/appstore-cli/releases/download/v#{version}/appstore_#{version}_darwin_amd64.tar.gz"
      sha256 "5a7732f0fadfb38710f9a08581210ee908bbf041200cd9112303af17693e154c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ferdikt/appstore-cli/releases/download/v#{version}/appstore_#{version}_linux_arm64.tar.gz"
      sha256 "19b82e91f642be43725c7b05777e3e61b0d569cce06e2fe656c3fb8fbeca5008"
    else
      url "https://github.com/ferdikt/appstore-cli/releases/download/v#{version}/appstore_#{version}_linux_amd64.tar.gz"
      sha256 "5c540156c83c69d237927a56457bbb49dbc10c10ce9ca7b5881c889df24228f2"
    end
  end

  def install
    bin.install "appstore"
  end

  test do
    assert_match "Commands:", shell_output("#{bin}/appstore --help")
  end
end
