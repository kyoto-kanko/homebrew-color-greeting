class ColorGreeting < Formula
    desc "Simple Ruby CLI tool"
    homepage "https://github.com/kyoto-kanko/color-greeting"
    url "https://github.com/kyoto-kanko/color-greeting/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "b9732f18e232b77dfd6f72fc68505591df89f4d8fdbd399fe1c9f11489e0536b"
    license "MIT"
  
    depends_on "ruby"
  
    def install
      system "gem", "install", "bundler"
      system "bundle", "install"
      bin.install "bin/hello"
    end
  end
  