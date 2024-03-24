class ColorGreeting < Formula
  desc "Simple Ruby CLI tool that greets you"
  homepage "https://github.com/kyoto-kanko/color-greeting"
  url "https://github.com/kyoto-kanko/color-greeting/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fed86958a043b9d2a3d2ac6e2bcef78ccaacf759ffddf6d59ede33464ec42b06"
  license "MIT"

  depends_on "ruby"

  resource "colorize" do
    url "https://rubygems.org/downloads/colorize-1.1.0.gem"
    sha256 "30b5237f0603f6662ab8d1fc2bd4a96142b806c6415d79e45ef5fdc6a0cfc837"
  end

  def install
    ENV["GEM_HOME"] = libexec

    resources.each do |r|
      r.fetch
      system "gem", "install", r.cached_download, "--ignore-dependencies",
             "--no-document", "--install-dir", libexec
    end

    bin.install libexec/"bin/hello"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
