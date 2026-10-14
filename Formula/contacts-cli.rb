class ContactsCli < Formula
  desc "A fast terminal contact manager with Google Contacts import"
  homepage "https://github.com/quintrino/contacts-cli"
  version "0.1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.2/contacts-cli-v0.1.0-build.2-aarch64-apple-darwin.tar.gz"
      sha256 "c80f33c9707199ab6bdbae3de1c7a16ee518236cf4127e9f4b77f718cb5dc3ba"
    else
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.2/contacts-cli-v0.1.0-build.2-x86_64-apple-darwin.tar.gz"
      sha256 "0ee3ce80713e67752f021e19be2e4cf966a0d439ec835a64db33ada209407d3f"
    end
  end

  on_linux do
    url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.2/contacts-cli-v0.1.0-build.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4093b4ca834e41eef61232c1471718ae0775ab5bd4ddc3152aa8c0bfa0bc3ca"
  end

  def install
    bin.install "contacts-cli"
  end

  test do
    system "#{bin}/contacts-cli", "--version"
  end
end
