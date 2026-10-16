class GodspeedCli < Formula
  desc "Rust-based Godspeed CLI"
  homepage "https://github.com/quintrino/godspeed-cli"
  version "0.14.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/godspeed-cli/releases/download/v0.14.0-build.5/godspeed-cli-v0.14.0-build.5-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/quintrino/godspeed-cli/releases/download/v0.14.0-build.5/godspeed-cli-v0.14.0-build.5-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/godspeed-cli/releases/download/v0.14.0-build.5/godspeed-cli-v0.14.0-build.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 ""
  end

  def install
    bin.install "godspeed-cli"
  end

  test do
    system "#{bin}/godspeed-cli", "--version"
  end
end
