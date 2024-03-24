class ColorGreeting < Formula
  desc "Simple Ruby CLI tool that greets you"
  homepage "https://github.com/kyoto-kanko/color-greeting"
  url "https://github.com/kyoto-kanko/color-greeting/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fed86958a043b9d2a3d2ac6e2bcef78ccaacf759ffddf6d59ede33464ec42b06"
  license "MIT"

  depends_on "ruby"

  resource "colorize" do
    url "https://rubygems.org/downloads/colorize-1.1.0.gem"
    sha256 "7b51171d0c3b6bd7e8a84f75ad7b0a520bc3f5e4d1fe6e8d5efadc6e58202a30"
  end

  def install
    ENV["GEM_HOME"] = libexec

    resources.each do |r|
      r.fetch
      system "gem", "install", r.cached_download, "--ignore-dependencies",
             "--no-document", "--install-dir", libexec
    end

    bin.install libexec/"bin/color_greeting"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
