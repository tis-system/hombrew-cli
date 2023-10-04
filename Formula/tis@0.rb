# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+a4382ea)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696380129309" # v0.0.1-nightly+a4382ea

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "a89ff81dbe4a61828f0087b3a3aaac3c878bbd06351c6a8757580b4d36f07f3d"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "28913b38716797002044705aa470288e07c4431b219a08777f44c76d54caeaac"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "d3f46fca1386c9a73a5d1527435ea40e691f2a38f1627e5b82ecb2f1a100729f"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "eed50e59d230c1a804e02d1b0bc8d0cbe8e89d1d32172b3b1dbc9b0c9f789fe4"

      def install
        bin.install "tis"
      end
    end
  end
end
