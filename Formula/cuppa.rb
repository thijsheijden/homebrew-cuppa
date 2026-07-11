class Cuppa < Formula
  desc "Cuppa: Coffee Tracking TUI with Git Based Sync"
  homepage "https://github.com/thijsheijden/cuppa"
  url "https://github.com/thijsheijden/cuppa/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "d04d9985088978c7ea818efc38a16c0d9c366973f6780bc3aa46a1e0a6e04f1b"
  license "MIT"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Cuppa data is stored in:
        macOS: ~/Library/Application Support/com.cuppa.cuppa/
        Linux: ~/.local/share/cuppa/

      To remove all data after uninstalling:
        rm -rf ~/Library/Application\ Support/com.cuppa.cuppa
    EOS
  end

  test do
    system "#{bin}/cuppa", "--version"
  end
end
