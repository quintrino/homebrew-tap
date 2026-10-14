class BrainfmCli < Formula
  desc "Unofficial Brain.fm CLI"
  homepage "https://github.com/quintrino/brainfm-cli"
  version "0.1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.4/brainfm-cli-v0.1.0-build.4-aarch64-apple-darwin.tar.gz"
      sha256 "fae9a26794ca57392c2515b8d764bce6b83a958c9b74e5d7ebe768acc73a03c2"
    else
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.4/brainfm-cli-v0.1.0-build.4-x86_64-apple-darwin.tar.gz"
      sha256 "78af302b2316ad5179c463cc2f0c78c9a39a9b3f0f1c55d51dee78468bc318db"
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.4/brainfm-cli-v0.1.0-build.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f338e54d4a0c1a5466638e82e1f6b1236ef3499f7c24652b96adb18620fbe9b1"
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
