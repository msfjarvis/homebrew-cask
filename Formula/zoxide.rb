class Zoxide < Formula
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  url "https://github.com/ajeetdsouza/zoxide/archive/v0.2.1.tar.gz"
  sha256 "0026622781ae04323512a70eb25939c3134f3e07a1f7a0a5d84d5cbb2d4e5136"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
