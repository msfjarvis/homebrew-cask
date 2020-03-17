class Zoxide < Formula
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  url "https://github.com/ajeetdsouza/zoxide/archive/v0.2.1.tar.gz"
  sha256 "0026622781ae04323512a70eb25939c3134f3e07a1f7a0a5d84d5cbb2d4e5136"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  def caveats
    <<~EOS
    Adding zoxide to your shell

    If you currently use z, z.lua, or zsh-z, you may want to first migrate your existing database to zoxide:

    zoxide migrate /path/to/db

    ## zsh

    Add the following line to your ~/.zshrc:

    eval "$(zoxide init zsh)"

    ## bash

    Add the following line to your ~/.bashrc:

    eval "$(zoxide init bash)"

    ## fish

    Add the following line to your ~/.config/fish/config.fish:

    zoxide init fish | source

    EOS
  end
end
