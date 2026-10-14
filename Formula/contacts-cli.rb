class ContactsCli < Formula
  desc "A fast terminal contact manager with Google Contacts import"
  homepage "https://github.com/quintrino/contacts-cli"
  version "0.1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.3/contacts-cli-v0.1.0-build.3-aarch64-apple-darwin.tar.gz"
      sha256 "b7fdca1486bc77c02110ea57a27806c39f555280e8c5bd651bda0503be369ea9"
    else
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.3/contacts-cli-v0.1.0-build.3-x86_64-apple-darwin.tar.gz"
      sha256 "63c4e4e897576e43083b2ec0862024cc55d0d7d68295c1eff586d39b7b35fee9"
    end
  end

  on_linux do
    url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.3/contacts-cli-v0.1.0-build.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a23cc92ca16d476656b13b88ebf31f27c88f66d0b6c6f6d96fd39addf55c79a6"
  end

  def install
    bin.install "contacts-cli"
  end

  test do
    system "#{bin}/contacts-cli", "--version"
  end
end
