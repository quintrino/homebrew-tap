class DiscordSearchCli < Formula
  desc "Search cached Discord channels and DMs"
  homepage "https://github.com/quintrino/discord-search-cli"
  version "0.1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/discord-search-cli/releases/download/v0.1.0-build.2/discord-search-cli-v0.1.0-build.2-aarch64-apple-darwin.tar.gz"
      sha256 "a3d5e3162cdbce0887ef3ca81eb4e182391c3bd32b9a116cbc7165c0ae201f9e"
    else
      url "https://github.com/quintrino/discord-search-cli/releases/download/v0.1.0-build.2/discord-search-cli-v0.1.0-build.2-x86_64-apple-darwin.tar.gz"
      sha256 "82b26bf026bb2cf0c158dc4fbf7b528143ff48197e460493e2488bfea77dcefd"
    end
  end

  on_linux do
    url "https://github.com/quintrino/discord-search-cli/releases/download/v0.1.0-build.2/discord-search-cli-v0.1.0-build.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9c1db8de4a552fdfa121596a51c7dee641538a3f9bbf2635a502502e5ba64a79"
  end

  def install
    bin.install "discord-search-cli"
  end

  test do
    system "#{bin}/discord-search-cli", "--version"
  end
end
