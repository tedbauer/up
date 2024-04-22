class Up < Formula
    desc "Jump up multiple directories"
    homepage "https://github.com/tedbauer/up" 
    url "https://github.com/tedbauer/up/" # Replace with release tag URL
  
    def install
      cd "up-path-gen" do
        system "cargo", "build", "--release"
        lib.install "target/release/up-path-gen"
      end
  
      lib.install "up.sh"
    end
    def caveats; <<~EOS
    To use the 'up' command, add the following alias to your shell configuration:
      alias up='. /usr/local/lib/up.sh'
    EOS
    end
  end