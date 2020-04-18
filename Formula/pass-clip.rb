class PassClip < Formula
  desc "A pass extension that lets you quickly copy to clipboard passwords using fzf or rofi"
  version "0.2"
  homepage "https://github.com/msfjarvis/pass-clip"
  url "https://github.com/msfjarvis/pass-clip/archive/v#{version}.tar.gz"
  sha256 "d1f611e61c1f8ae55bd14f8f6054d06fcb9a2d973095367c1626842db66b3182"
  head "https://github.com/msfjarvis/pass-clip.git"

  bottle :unneeded

  depends_on "pass-slim"

  def install
    system "make", "LIBDIR=#{HOMEBREW_PREFIX}/lib", "install"
  end
end
