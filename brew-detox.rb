require "formula"

class BrewDetox < Formula
  homepage "https://github.com/alebcay/detox"
  url "https://github.com/alebcay/homebrew-brewtap/archive/master.zip"

  skip_clean 'bin'

  def install
    bin.install 'brew-detox.rb'
    (bin+'brew-detox.rb').chmod 0755
  end
end
