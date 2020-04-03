class Zoxide < Formula
  version "0.3.1"
  desc "A cd command that learns your habits"
  homepage "https://github.com/ajeetdsouza/zoxide"
  url "https://github.com/ajeetdsouza/zoxide/releases/download/v#{version}/zoxide-x86_64-unknown-linux-gnu"
  sha256 "2e5fca4c457ce7eb97b8fe74850aff08518774ad48596c9ac7fa9525b5429a6c"

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
