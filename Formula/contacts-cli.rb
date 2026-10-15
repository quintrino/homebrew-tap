class ContactsCli < Formula
  desc "A fast terminal contact manager with Google Contacts import"
  homepage "https://github.com/quintrino/contacts-cli"
  version "0.1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.5/contacts-cli-v0.1.0-build.5-aarch64-apple-darwin.tar.gz"
      sha256 "2446222085662b4fd04127f7d9401eae1fff58d81d537e66d4de094bda79317b"
    else
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.5/contacts-cli-v0.1.0-build.5-x86_64-apple-darwin.tar.gz"
      sha256 "d508fda2d25aa2c32147d1b4e9dd229a005045ba00dfe4a3ae486d572c8b5fd7"
    end
  end

  on_linux do
    url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.5/contacts-cli-v0.1.0-build.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b24a94e92d0236c1df700afa0df59bf9623df7c5a844d5549697aff896d0445d"
  end

  def install
    bin.install "contacts-cli"
  end

  test do
    system "#{bin}/contacts-cli", "--version"
  end
end
