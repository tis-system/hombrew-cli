# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+3dcb8c6)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696391178790" # v0.0.1-nightly+3dcb8c6

  on_macos do
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "51f66e4c6c1ab558947cd96ba22364bd06659d457b0916fd09128a70cd70be99"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "18d3db54d7b1cea14fb30a2ccff17bc85322331ec666adaef9d71a09708d1e74"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "7f7c73c0e122c50958c36137c6138cd08cfafbcb3b6db7b5f51b10c1770d1dd2"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "5b8710581c409492193471f0bbac80822046b3f2304d79e3308d38a255bea5ef"

      def install
        bin.install "tis"
      end
    end
  end
end
