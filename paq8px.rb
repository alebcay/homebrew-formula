require "formula"

class Paq8px < Formula
  homepage "http://dhost.info/paq8/"
  url "http://dhost.info/paq8/paq8px_v69.zip"
  sha1 "77667a3c61b858d71897f47fc4c4d8eabf3d715c"

  def install
    system "#{ENV.cxx} paq8px_v69.cpp -DUNIX -DNOASM -O2 -Os -fomit-frame-pointer -o paq8px"
    bin.install 'paq8px'
  end
end
