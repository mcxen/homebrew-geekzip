class GeekzipCli < Formula
  desc "Smart archive compression and extraction CLI"
  homepage "https://github.com/mcxen/GeekZip"
  url "https://github.com/mcxen/GeekZip/releases/download/v0.2.3/geekzip-cli-macos-arm64.tar.gz"
  sha256 "9def6ca7e3a618bfe145b5fd31fa45e22dca7f6cdba9a0c655b81aa56ba5496c"
  version "0.2.3"

  depends_on arch: :arm64
  depends_on macos: :monterey

  def install
    bin.install "geekzip-cli" => "geekzip"
  end

  test do
    assert_match "GeekZip", shell_output("#{bin}/geekzip --help")
  end
end
