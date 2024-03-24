class ColorGreeting < Formula
    desc "Simple Ruby CLI tool"
    homepage "https://github.com/kyoto-kanko/color-greeting"
    url "https://github.com/kyoto-kanko/color-greeting/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "fed86958a043b9d2a3d2ac6e2bcef78ccaacf759ffddf6d59ede33464ec42b06"
    license "MIT"
  
    depends_on "ruby"
  
    def install
      system "gem", "install", "bundler"
      system "bundle", "install"
      bin.install "bin/hello"
    end
  end
  