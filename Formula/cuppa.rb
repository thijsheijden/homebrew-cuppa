class Cuppa < Formula
  desc "Cuppa: Coffee Tracking TUI with Git Based Sync"
  homepage "https://github.com/thijsheijden/cuppa"
  url "https://github.com/thijsheijden/cuppa/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "651776a629eefa0bd084857772bb0cb8869d099fd749b00e57dd47a8510cbcd6"
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
