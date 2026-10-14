class BrainfmCli < Formula
  desc "Unofficial Brain.fm CLI"
  homepage "https://github.com/quintrino/brainfm-cli"
  version "0.1.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.5/brainfm-cli-v0.1.0-build.5-aarch64-apple-darwin.tar.gz"
      sha256 "b251a59ff1ed88abc9ec6f4bcffd4ee8b0e5d5c44098b11f6365dae61c11e204"
    else
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.5/brainfm-cli-v0.1.0-build.5-x86_64-apple-darwin.tar.gz"
      sha256 "979cb83fe941f2a4496985bb0928cabbe31de7cbf36ca898174bdf3e25db69d5"
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.5/brainfm-cli-v0.1.0-build.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "04997a09d6cb85f777d33cc528ae81c6cbfe28e57fd91fe3b6390c3e7222a211"
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
