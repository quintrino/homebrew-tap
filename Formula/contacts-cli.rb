class ContactsCli < Formula
  desc "A fast terminal contact manager with Google Contacts import"
  homepage "https://github.com/quintrino/contacts-cli"
  version "0.1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.1/contacts-cli-v0.1.0-build.1-aarch64-apple-darwin.tar.gz"
      sha256 "5c44ef643a8ff464776dc368a97c43989f608980c21c88880776c7e6f4dc21ad"
    else
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.1/contacts-cli-v0.1.0-build.1-x86_64-apple-darwin.tar.gz"
      sha256 "a765198213c1754bd4a53445104cbe0b6f5e0f30bd742eae9d891d9a78ac57c1"
    end
  end

  on_linux do
    url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.1/contacts-cli-v0.1.0-build.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "423f8aff518cc691eecc1e1fe983bccd8d0aa73c227ef34105686bd541427b20"
  end

  def install
    bin.install "contacts-cli"
  end

  test do
    system "#{bin}/contacts-cli", "--version"
  end
end
