# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+d66b36b)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696379081351" # v0.0.1-nightly+d66b36b

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "4afb7f8136b121f6e114b93b9d45c13d6a7627e86d8bd4d55eab64ec9bd2e476"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "8bb7b1193f6baa9829e58cbd57e4add34caab9f4262bb91a71830849924d900a"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "766059b407f32e3370f077951460a12bbc23ef6db8405391c1656e7e8c77f759"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "42c65f2000932b6e2f355405d332ee49bdfbdaf04a8bb72ae99ba0b8864d570f"

      def install
        bin.install "tis"
      end
    end
  end
end
