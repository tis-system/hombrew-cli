# typed: false
# frozen_string_literal: true

class TisAT00 < Formula
  desc "A CLI for TIS API (v0.0.1-rc2)"
  homepage "https://tis.tetrate.io"
  version "v0.0.1-rc2" # v0.0.1-rc2

  on_macos do
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/v0.0.1-rc2/cli_v0.0.1-rc2_darwin_amd64.tar.gz"
      sha256 "82cf0d28ee17bc9497bdf1ed9024db234dc881f934c5e2b63c5a72c44c8f4fda"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://tis.tetrate.io/artifacts/v0.0.1-rc2/cli_v0.0.1-rc2_darwin_arm64.tar.gz"
      sha256 "b07b87a2174f4fa9dce6b72c55948e7311235f06fac03577c8037399f78cb631"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tis.tetrate.io/artifacts/v0.0.1-rc2/cli_v0.0.1-rc2_linux_amd64.tar.gz"
      sha256 "ff475020a0e3b910083d55de7f4fd3337e9cc3a69bf7fac0d8a8c841772e0a01"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/v0.0.1-rc2/cli_v0.0.1-rc2_linux_arm64.tar.gz"
      sha256 "a1c8dc6c3ab51bd04ee5c06dc5fe472b8c886c885c659333e6b0cee95d280d8a"

      def install
        bin.install "tis"
      end
    end
  end
end
