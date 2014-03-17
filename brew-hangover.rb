require "formula"

class BrewHangover < Formula
  homepage "https://github.com/alebcay/hangover"
  head "https://github.com/alebcay/hangover.git"
  
  skip_clean 'bin'

  def install
    bin.install 'brew-hangover.rb'
    (bin+'brew-hangover.rb').chmod 0755
  end
end
