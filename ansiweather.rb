require "formula"

class Ansiweather < Formula
  homepage "https://github.com/fcambus/ansiweather"
  head "https://github.com/fcambus/ansiweather.git"
  
  depends_on "jq"

  def install
    bin.install 'ansiweather'
  end
end
