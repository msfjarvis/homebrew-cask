class Zoxide < Formula
  version "0.3.0"
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-unknown-linux-gnu"
  sha256 "890d472758ccd86818441a1bf960cd465d7b85771a6e9fb4811a96ab0a39ba29"

  def install
    bin.install "zoxide-x86_64-unknown-linux-gnu" => "zoxide"
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
