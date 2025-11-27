class Bip39key < Formula
  desc "Generate an OpenPGP/OpenSSH key from a BIP39 mnemonic"
  homepage "https://github.com/jpdarago/bip39key"
  url "https://github.com/jpdarago/bip39key/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "7f3dab3b51f34d52c4c6b5423523b292f291c75937cf69aed495fc01d4c300a5"
  license "MIT"
  head "https://github.com/jpdarago/bip39key.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bip39key -V")
  end
end
