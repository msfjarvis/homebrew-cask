class RipgrepSlim < Formula
  desc "Search tool like grep and The Silver Searcher. This is a simplified formula for personal use."
  homepage "https://github.com/BurntSushi/ripgrep"
  url "https://github.com/BurntSushi/ripgrep/archive/12.0.0.tar.gz"
  sha256 "3c84c3a4c80cee961a2b0d00a4e5d1bc9eb58ba587cf69c06d84aff72fedbeff"
  head "https://github.com/BurntSushi/ripgrep.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked",
                               "--root", prefix,
                               "--path", ".",
                               "--no-default-features"

    # Completion scripts and manpage are generated in the crate's build
    # directory, which includes a fingerprint hash. Try to locate it first
    out_dir = Dir["target/release/build/ripgrep-*/out"].first
    bash_completion.install "#{out_dir}/rg.bash"
  end

  test do
    (testpath/"Hello.txt").write("Hello World!")
    system "#{bin}/rg", "Hello World!", testpath
  end
end
