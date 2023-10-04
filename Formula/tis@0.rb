# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+3a64cfe)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696390437652" # v0.0.1-nightly+3a64cfe

  on_macos do
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "d001597b3c56197dc4a4a1bdc47f3dd57d4eb02a18c2e67b98083f662a7cfffb"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "63229528e65c1d9aa5b50a56d77f8cf1257d5e89b86cf23298d7e92ecd1ec2f6"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "1dfe6d68068c8c7e79898a3d0e7f21302b484389f82eaf4a3ad724d1b03cb9ba"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "40d5862dd71b27155b45deb28fde36f469e20ca9c602f49f67bbd3bc9b1e065f"

      def install
        bin.install "tis"
      end
    end
  end
end
