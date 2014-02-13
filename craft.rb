require "formula"

class Craft < Formula
  homepage "http://www.michaelfogleman.com/craft/"
  version "HEAD"
  url "https://github.com/fogleman/Craft/archive/master.tar.gz"
  sha1 "8adae726c21a827bb9a6f0a2dde1d0085617bcec"

  depends_on "cmake" => :build

  def install
    system "cmake", "."
    system "make"
    bin.install('craft')
  end
end
