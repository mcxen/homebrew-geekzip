class GeekzipCli < Formula
  desc "Smart archive compression and extraction CLI"
  homepage "https://github.com/mcxen/GeekZip"
  url "https://github.com/mcxen/GeekZip/releases/download/v0.3.0/geekzip-cli-macos-arm64.tar.gz"
  sha256 "2b98439548b26601a2395903bfde756eaf61cc8eaca7a51bf9f922658808e4e9"
  version "0.3.0"
  depends_on arch: :arm64
  depends_on macos: :monterey
  def install
    bin.install "geekzip-cli" => "geekzip"
  end
  test do
    assert_match "GeekZip", shell_output("#{bin}/geekzip --help")
  end
end
