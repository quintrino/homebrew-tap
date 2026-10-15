class BrainfmCli < Formula
  desc "Unofficial Brain.fm CLI"
  homepage "https://github.com/quintrino/brainfm-cli"
  version "0.1.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.7/brainfm-cli-v0.1.0-build.7-aarch64-apple-darwin.tar.gz"
      sha256 "4045d2c6fede4e0dbc5c237051ab7875632a6f2405a1399dcaf76243b56e8e84"
    else
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.7/brainfm-cli-v0.1.0-build.7-x86_64-apple-darwin.tar.gz"
      sha256 "8a1c2690912b22ea29fcd57056a292f199a469ddece6b15677f3a72b9f7c81cc"
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.7/brainfm-cli-v0.1.0-build.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ed03d179ff64fa65b92538847ebf2efe336b1c5dfe1693f57870e3c42fefe94f"
  end

  def install
    bin.install "brainfm-cli"
  end

  def caveats
    <<~EOS
      brainfm-cli needs an audio player on your PATH: mpv, vlc, ffplay, or mplayer.
      Install one if you don't have one, e.g. brew install mpv
    EOS
  end

  test do
    assert_match "Unofficial Brain.fm CLI", shell_output("#{bin}/brainfm-cli --help")
  end
end
