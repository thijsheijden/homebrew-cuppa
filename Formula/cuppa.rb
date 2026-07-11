class Cuppa < Formula
  desc "Cuppa: Coffee Tracking TUI with Git Based Sync"
  homepage "https://github.com/thijsheijden/cuppa"
  url "https://github.com/thijsheijden/cuppa/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "ad9057bdaec90386915f9425173ec30a74d0ff802497560ee8f78be16baa771f"
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
