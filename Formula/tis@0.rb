# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+c6cb9fd)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696384681764" # v0.0.1-nightly+c6cb9fd

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "2abef55b9f74483739693594f95cfff17a0e057a39147f18a40d7cd53af6b1e0"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "b03144f7a153d974e13a483fd88d52a7b24196eb5b018163878ce270ef2858ed"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "05d1a86891db2641b14642877dadc1a19d699bd51b6c3d9b0e80e5eddf81a101"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "65fe6a67d65b731d3c7dc468489b708ee399671530609b242e3944aa39b71127"

      def install
        bin.install "tis"
      end
    end
  end
end
