class MacUtils < Formula
  desc "Small utilities for macOS"
  homepage "https://github.com/alin23/mac-utils"
  license "MIT"
  head "https://github.com/alin23/mac-utils.git", branch: "main"

  depends_on :macos
  uses_from_macos "swift"

  def install
    excluded = %w[SetNativeBrightness]

    rm_rf (buildpath/"bin").children
    rm excluded.map { |item| "#{item}.swift" }
    system "make", "all"
    rm Dir.glob("bin/*-{arm64,x86}")
    bin.install (buildpath/"bin").children
  end

  test do
    assert_equal testpath.to_s, shell_output("#{bin/"runfg"} /bin/pwd").chomp
  end
end
