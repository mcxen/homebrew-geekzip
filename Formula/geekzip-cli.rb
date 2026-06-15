class GeekzipCli < Formula
  desc "Smart archive compression and extraction CLI"
  homepage "https://github.com/mcxen/GeekZip"
  url "https://github.com/mcxen/GeekZip/releases/download/v0.2.1/geekzip-cli-macos-arm64.tar.gz"
  sha256 "376db78720983908779bf21899ee7913121611be8fa2b9d43ada766631b78ce5"
  version "0.2.1"

  depends_on arch: :arm64
  depends_on macos: :monterey

  def install
    bin.install "geekzip-cli" => "geekzip"
  end

  test do
    assert_match "GeekZip", shell_output("#{bin}/geekzip --help")
  end
end
