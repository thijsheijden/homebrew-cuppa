class Cuppa < Formula
  desc "Cuppa: Coffee Tracking TUI with Git Based Sync"
  homepage "https://github.com/thijsheijden/cuppa"
  url "https://github.com/thijsheijden/cuppa/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2d8fd43f768157517835dc4f004bb25022b74b7c56dc4a363b529fe522b8336f"
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
