class DiscordSearchCli < Formula
  desc "Search cached Discord channels and DMs"
  homepage "https://github.com/quintrino/discord-search-cli"
  version "0.1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/discord-search-cli/releases/download/v0.1.0-build.1/discord-search-cli-v0.1.0-build.1-aarch64-apple-darwin.tar.gz"
      sha256 "98c69d87859d52d55aa5596c99001badb74d4763082bb3515d51ccedccd8f64d"
    else
      url "https://github.com/quintrino/discord-search-cli/releases/download/v0.1.0-build.1/discord-search-cli-v0.1.0-build.1-x86_64-apple-darwin.tar.gz"
      sha256 "2e8896e9c3bd8cda9033451be18431eb61856700e55fe92695e7fd3599b9dfb8"
    end
  end

  on_linux do
    url "https://github.com/quintrino/discord-search-cli/releases/download/v0.1.0-build.1/discord-search-cli-v0.1.0-build.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f78c3ccbb50ff0cb0541c33660b4fabd2f6f2c02f31056ee3fa9af019ebc75f"
  end

  def install
    bin.install "discord-search-cli"
  end

  test do
    system "#{bin}/discord-search-cli", "--version"
  end
end
