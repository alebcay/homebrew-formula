class Adbfs < Formula
  desc "Mount Android filesystem via adb"
  homepage "https://github.com/isieo/adbfs"
  head "https://github.com/isieo/adbfs.git"

  depends_on "pkg-config" => :build

  env :std

  def install
    ENV.O3
    system "make"
    bin.install "adbfs"
  end
end
