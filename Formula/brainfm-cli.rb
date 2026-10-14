class BrainfmCli < Formula
  desc "Unofficial Brain.fm CLI"
  homepage "https://github.com/quintrino/brainfm-cli"
  version "0.1.0.2"

  depends_on "mpv"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.2/brainfm-cli-v0.1.0-build.2-aarch64-apple-darwin.tar.gz"
      sha256 "31bf0145e6f35ce2eb14a6f6a3b859ae7d2defe3de472b68a5ac4d672277e5dc"
    else
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.2/brainfm-cli-v0.1.0-build.2-x86_64-apple-darwin.tar.gz"
      sha256 "267e43652211eb608cc5ef7b8486336cdc8ffdfb3564e96db138305be47f3a5b"
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.2/brainfm-cli-v0.1.0-build.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "293da6eda0e6896d50f5d583755b83f5e79c76be9153d6f88fb475e6eadd4c2a"
  end

  def install
    bin.install "brainfm"
  end

  test do
    assert_match "Unofficial Brain.fm CLI", shell_output("#{bin}/brainfm --help")
  end
end
