class ShellcheckBin < Formula
  version "0.7.0"
  desc "ShellCheck, a static analysis tool for shell scripts"
  homepage "https://shellcheck.net"
  url "https://github.com/koalaman/shellcheck/releases/download/v#{version}/shellcheck-v#{version}.linux.x86_64.tar.xz"
  sha256 "39c501aaca6aae3f3c7fc125b3c3af779ddbe4e67e4ebdc44c2ae5cba76c847f"

  conflicts_with "shellcheck"

  def install
    bin.install "shellcheck"
  end
end
