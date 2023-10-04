# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+c120061)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696382995419" # v0.0.1-nightly+c120061

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "cf8cece76c40441a69791bfe9e2f19980e7c0c8688135fb00ac6e287d7ee4856"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "225e1cbab1bbbfd38bdb675fac5621c4b8e63f2054f684eaa778275639a10318"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "f07154b201eb632caddf49590adb7b19f8e061b0531bc0e809118c621f1fbcae"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "31b20e36dcee2ea6ccf0f0c6faf6026994e17ae3585bb297781e9098fcd07222"

      def install
        bin.install "tis"
      end
    end
  end
end
