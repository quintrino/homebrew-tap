class Brainfm < Formula
  desc "Unofficial Brain.fm CLI"
  homepage "https://github.com/quintrino/brainfm-cli"
  version "0.1.0.1"

  depends_on "mpv"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.1/brainfm-v0.1.0-build.1-aarch64-apple-darwin.tar.gz"
      sha256 "f27be572e10ecbd1b246426639e7ed86c184e0239fca2dd99ab50daedc63e9b5"
    else
      url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.1/brainfm-v0.1.0-build.1-x86_64-apple-darwin.tar.gz"
      sha256 "1fac20591c183260508551e2283c897a32ebea5091697d760f844d063297a317"
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/brainfm-cli/releases/download/v0.1.0-build.1/brainfm-v0.1.0-build.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "437462f0ee2ac19fe0bffe17aa73a26b5a4b641ce8c308ba686c5d444c95bb04"
  end

  def install
    bin.install "brainfm"
  end

  test do
    assert_match "Unofficial Brain.fm CLI", shell_output("#{bin}/brainfm --help")
  end
end
