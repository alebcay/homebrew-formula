require "formula"

class BrewDetox < Formula
  homepage "https://github.com/alebcay/detox"
  head "https://github.com/alebcay/detox.git"

  skip_clean 'bin'

  def install
    bin.install 'brew-detox.rb'
    (bin+'brew-detox.rb').chmod 0755
  end
end
