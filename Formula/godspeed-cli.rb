class GodspeedCli < Formula
  desc "Rust-based Godspeed CLI"
  homepage "https://github.com/quintrino/godspeed-cli"
  version "0.11.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/godspeed-cli/releases/download/v0.11.0-build.2/godspeed-cli-v0.11.0-build.2-aarch64-apple-darwin.tar.gz"
      sha256 "3333cefee563a49cb6e960f3cc984f15860f6788a85f5658542f38ef0ced3eaa"
    else
      url "https://github.com/quintrino/godspeed-cli/releases/download/v0.11.0-build.2/godspeed-cli-v0.11.0-build.2-x86_64-apple-darwin.tar.gz"
      sha256 "aba6b3573a8206cde579253675d6b9e5f2879e5fcbc19662b04529141b414c47"
    end
  end

  on_linux do
    depends_on "openssl@3"

    url "https://github.com/quintrino/godspeed-cli/releases/download/v0.11.0-build.2/godspeed-cli-v0.11.0-build.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "efbef2b5461bbf794650c4826db1153610a47a3788fb830bbb79d78f286d1473"
  end

  def install
    bin.install "godspeed-cli"
  end

  test do
    system "#{bin}/godspeed-cli", "--version"
  end
end
