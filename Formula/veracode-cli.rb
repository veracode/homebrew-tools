class VeracodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.14.0"  
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.14.0_macosx_arm64.tar.gz"
      sha256 "a875aa42e4478ae645bdc0001bf0f4a1f9af064b8887d4649c759fdc40b03c70"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.14.0_macosx_x86.tar.gz"
      sha256 "3872e68575206ffea68bc4a276211af07085657739499ca278fd90ac1d60d5e8"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.14.0_linux_x86.tar.gz"
      sha256 "9db91ea4fdfa4ae3ff4f39d6e417af14ec7b96485354b20f335122142eeb8e0c"

      def install
        bin.install "veracode"
      end
    end
    if Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.14.0_linux_x86.tar.gz"
      sha256 "9db91ea4fdfa4ae3ff4f39d6e417af14ec7b96485354b20f335122142eeb8e0c"

      def install
        bin.install "veracode"
      end
    end
  end

  test do
    system "#{bin}/veracode --version"
  end
end
