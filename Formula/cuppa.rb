class Cuppa < Formula
  desc "Caffeine tracking TUI app with sync"
  homepage "https://github.com/thijsheijden/cuppa"
  url "https://github.com/thijsheijden/cuppa/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "aab1700d1e1cebc7ba11343059f12769d997efa76bb2cd00be1c9d43e3b5dad7"
  license "MIT"

  depends_on "rust" => :build
  depends_on "duckdb"
  depends_on "git"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cuppa", "--version"
  end
end
