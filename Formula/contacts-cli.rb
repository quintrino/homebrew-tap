class ContactsCli < Formula
  desc "A fast terminal contact manager with Google Contacts import"
  homepage "https://github.com/quintrino/contacts-cli"
  version "0.1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.4/contacts-cli-v0.1.0-build.4-aarch64-apple-darwin.tar.gz"
      sha256 "16e2380bdccb7633bcd270aed8e17ae633b4fedfc4e8e5475ed6bb93c9d50293"
    else
      url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.4/contacts-cli-v0.1.0-build.4-x86_64-apple-darwin.tar.gz"
      sha256 "3e3b3b9fb32a6b462d83209f6276573efbf2314ef0d9a09c6d123ee7a124a6c0"
    end
  end

  on_linux do
    url "https://github.com/quintrino/contacts-cli/releases/download/v0.1.0-build.4/contacts-cli-v0.1.0-build.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "137555ba43aa2b5b5771d1c75dd62560d239f6c36dd53a8fa29a4782d4323ae0"
  end

  def install
    bin.install "contacts-cli"
  end

  test do
    system "#{bin}/contacts-cli", "--version"
  end
end
