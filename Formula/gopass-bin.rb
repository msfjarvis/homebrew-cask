class GopassBin < Formula
  version "1.8.6"
  desc "The slightly more awesome standard unix password manager for teams"
  homepage "https://github.com/gopasspw/gopass"
  url "https://github.com/gopasspw/gopass/releases/download/v#{version}/gopass-#{version}-linux-amd64.tar.gz"
  sha256 "c3f8eb2943d46c13c1c5818395b76ecbe71252fc53e0634d30e8038732baf33c"

  conflicts_with "gopass"

  def install
    bin.install "gopass"
    bash_completion.install "bash.completion"
    zsh_completion.install "zsh.completion"
    fish_completion.install "fish.completion"
  end
end
