# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+977bfac)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696578553161" # v0.0.1-nightly+977bfac

  on_macos do
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "78f49d5d722cdba8b5929765d8d18d061c0e988ca295f6cd42f847ec3048f3e6"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "93fdc8e0b8e293886bc2febcafe521d2823569b81c9b8435efa18dde8e0e8c99"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "179d33fa53d5a33c099f7c0680ba99090b5c67ce2baa7aa4aaabd7c4c8e598ae"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "cb8c8de60bfe553d58ac196df519958efe9c0c53a3275639b3465a20254d6ae2"

      def install
        bin.install "tis"
      end
    end
  end
end
