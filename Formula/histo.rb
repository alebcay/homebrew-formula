class Histo < Formula
  desc "Beautiful charts in the terminal for static or streaming data"
  homepage "https://github.com/visionmedia/histo"
  url "https://github.com/tj/histo/archive/refs/tags/0.0.2.tar.gz"
  sha256 "0794ecc9ed1c9baf1462078d3410162b35d0a0f12858ba32dde69fa3f8a7ce4e"
  license "MIT"
  head "https://github.com/visionmedia/histo.git"

  bottle do
    root_url "https://ghcr.io/v2/alebcay/formula"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e4d7b71c98cea113c701fdb2e37947797d168ba2e98bb7466c7ec96fed648ce0"
    sha256 cellar: :any_skip_relocation, sequoia:       "021d02cba1582504d68288c15031a5437384d68e38c5efda4103e8ba2909cc52"
    sha256 cellar: :any,                 x86_64_linux:  "b63f66dd3f7b7b13ba6e9ebf22694ec8d964087bab009a46aaf8f3cf0698153e"
  end

  def install
    system "make"
    bin.install "histo"
  end

  test do
    system bin/"histo", "--version"
  end
end
