class Adbfs < Formula
  desc "Mount Android filesystem via adb"
  homepage "https://github.com/isieo/adbfs"
  head "https://github.com/isieo/adbfs.git"

  depends_on "pkg-config" => :build
  depends_on "libfuse"
  depends_on :linux # on macOS, requires closed-source macFUSE

  def install
    system "make"
    bin.install "adbfs"
  end
end
