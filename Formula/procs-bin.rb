class ProcsBin < Formula
  version "0.9.20"
  desc "A modern replacement for ps written in Rust"
  homepage "https://github.com/dalance/procs"
  url "https://github.com/dalance/procs/releases/download/v#{version}/procs-v#{version}-x86_64-lnx.zip"
  sha256 "40c992e70216440e4392cca7d9a9015d391fdfab567a31502fe976ca9288b582"

  conflicts_with "procs"

  def install
    bin.install "procs"
  end
end
