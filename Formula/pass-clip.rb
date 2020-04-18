class PassClip < Formula
  desc "A pass extension that lets you quickly copy to clipboard passwords using fzf or rofi"
  version "0.2"
  homepage "https://github.com/msfjarvis/pass-clip"
  url "https://github.com/msfjarvis/pass-clip/archive/v#{version}.tar.gz"
  sha256 "f3646954057dfe7fefd998eb95e3d9d2f56119bcd366f8ecb768c0ff76b264d6"
  head "https://github.com/msfjarvis/pass-clip.git"

  bottle :unneeded

  depends_on "pass-slim"

  def install
    system "make", "LIBDIR=#{HOMEBREW_PREFIX}/lib", "install"
  end
end
