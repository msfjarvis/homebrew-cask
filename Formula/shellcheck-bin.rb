class ShellcheckBin < Formula
  version "0.7.1"
  desc "ShellCheck, a static analysis tool for shell scripts"
  homepage "https://shellcheck.net"
  url "https://github.com/koalaman/shellcheck/releases/download/v#{version}/shellcheck-v#{version}.linux.x86_64.tar.xz"
  sha256 "64f17152d96d7ec261ad3086ed42d18232fcb65148b44571b564d688269d36c8"

  conflicts_with "shellcheck"

  def install
    bin.install "shellcheck"
  end
end
