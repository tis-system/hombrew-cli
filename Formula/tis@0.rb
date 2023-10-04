# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+58bebd2)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696378583174" # v0.0.1-nightly+58bebd2

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_0.0.1-n1696378583174_darwin_amd64.tar.gz"
      sha256 "1e3d9a05e3e2367e0cfd2e225bc47b600e7cb82b9476862e03cf1e78c6bda743"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_0.0.1-n1696378583174_darwin_arm64.tar.gz"
      sha256 "95147b523112a85bbce7992b8f51feec97ba4916e62e91b5574970f86e2b8e69"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_0.0.1-n1696378583174_linux_amd64.tar.gz"
      sha256 "0f10cf3e7e940a085e0bc294848aaaea71fc6f6bda28a69b3554d9638d437ac4"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_0.0.1-n1696378583174_linux_arm64.tar.gz"
      sha256 "a005171f0cc6d97b3e03959a2200bdfe4dd9ce899af4a6ed7480ae78746808f8"

      def install
        bin.install "tis"
      end
    end
  end
end
