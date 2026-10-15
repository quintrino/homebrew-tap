class BrainfmCli < Formula
  desc "Unofficial Brain.fm CLI"
  homepage "https://github.com/quintrino/brainfm-cli"
  version "0.1.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.6/brainfm-cli-v0.1.0-build.6-aarch64-apple-darwin.tar.gz"
      sha256 "de93efbab3b1b0faa29e6633f84080273d238750c16bc00c8ba2ab796e2ee578"
    else
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.6/brainfm-cli-v0.1.0-build.6-x86_64-apple-darwin.tar.gz"
      sha256 "672c0e3e55a7a807b3a6ed30f622c2b4b82190a94d9c0957c936588f3303a810"
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.6/brainfm-cli-v0.1.0-build.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d62d4106422a2a769208da5874a5b63ed6ab51f7b77814ef1c210645b5aa24bd"
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
