class Histo < Formula
  homepage "https://github.com/visionmedia/histo"
  url "https://github.com/visionmedia/histo/archive/0.0.2.tar.gz"
  sha256 "0794ecc9ed1c9baf1462078d3410162b35d0a0f12858ba32dde69fa3f8a7ce4e"
  head "https://github.com/visionmedia/histo.git"

  def install
    system "make"
    bin.install "histo"
  end

  test do
    system "histo", "--version"
  end
end
