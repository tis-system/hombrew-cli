# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+e6160be)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696384026152" # v0.0.1-nightly+e6160be

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "e4b001b6c932938919cab1d4dc2e661614b228010b347d5bb61d98994d4ba2f2"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "f4dd8905d34ef2dd88460ec770db50e7f52dd9c0da93a3f24f185f352ee2037c"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "06f6903e9e367f2634bb805e3332341f9b240840e2ef5678b183c14a4cb989ad"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "1f02d9329bb67eb1a7b717976d3ff1ad9031b24be6c3ef49b49ca4d12a22b0e3"

      def install
        bin.install "tis"
      end
    end
  end
end
