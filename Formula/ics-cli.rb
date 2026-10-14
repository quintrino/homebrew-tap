class IcsCli < Formula
  desc "Open .ics calendar events in Google Calendar, Outlook, Microsoft 365 or Yahoo"
  homepage "https://github.com/quintrino/ics-cli"
  version "0.3.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/quintrino/ics-cli/releases/download/v0.3.0-build.1/ics-cli-v0.3.0-build.1-aarch64-apple-darwin.tar.gz"
      sha256 "17912f7914140db45e92602c89be43c1cabb89e67d738f56b5079299e9e0eff4"
    else
      url "https://github.com/quintrino/ics-cli/releases/download/v0.3.0-build.1/ics-cli-v0.3.0-build.1-x86_64-apple-darwin.tar.gz"
      sha256 "acbf64534a2b167e9088fae768ac78301d61fabfc30b1fb8993bbbc33396e26f"
    end
  end

  on_linux do
    url "https://github.com/quintrino/ics-cli/releases/download/v0.3.0-build.1/ics-cli-v0.3.0-build.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c36d87c996ae0c0d15f43d7b646ab1a89e5ac18984d9a7e5d5d1ee085803b628"
  end

  def install
    bin.install "ics-cli"
  end

  test do
    system "#{bin}/ics-cli", "--version"
  end
end
