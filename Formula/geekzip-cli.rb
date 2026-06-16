class GeekzipCli < Formula
  desc "Smart archive compression and extraction CLI"
  homepage "https://github.com/mcxen/GeekZip"
  url "https://github.com/mcxen/GeekZip/releases/download/v0.2.2/geekzip-cli-macos-arm64.tar.gz"
  sha256 "b1c8823c9cf79bdb035396c9abb6439b1c832afcc8b39d653564240ecd8d918e"
  version "0.2.2"

  depends_on arch: :arm64
  depends_on macos: :monterey

  def install
    bin.install "geekzip-cli" => "geekzip"
  end

  test do
    assert_match "GeekZip", shell_output("#{bin}/geekzip --help")
  end
end
