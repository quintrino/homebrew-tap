class BrainfmCli < Formula
  desc "Unofficial Brain.fm CLI"
  homepage "https://github.com/quintrino/brainfm-cli"
  version "0.1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.3/brainfm-cli-v0.1.0-build.3-aarch64-apple-darwin.tar.gz"
      sha256 "c4e2c57302be1dc56cca39410bee5cfc6ef299cc0a1cb9c6462708b2ebbd5e9d"
    else
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.3/brainfm-cli-v0.1.0-build.3-x86_64-apple-darwin.tar.gz"
      sha256 "6b3f7d17e89253075365fc4b1e55a36f0b819c42d582d7f41f7a1bfb85eaf7fc"
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.3/brainfm-cli-v0.1.0-build.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "34396a2c97a74c2faa411fff75e06584357cf334b5ece203da218a67ec94edfa"
  end

  def install
    bin.install "brainfm"
  end

  def caveats
    <<~EOS
      brainfm needs an audio player on your PATH: mpv, vlc, ffplay, or mplayer.
      Install one if you don't have one, e.g. brew install mpv
    EOS
  end

  test do
    assert_match "Unofficial Brain.fm CLI", shell_output("#{bin}/brainfm --help")
  end
end
