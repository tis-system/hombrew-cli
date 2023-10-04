# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API (v0.0.1-rc1)"
  homepage "https://tis.tetrate.io"
  version "v0.0.1-rc1" # v0.0.1-rc1

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/v0.0.1-rc1/cli_v0.0.1-rc1_darwin_amd64.tar.gz"
      sha256 "c140008900db9c9177ea77f4e53d54761340cc885759f780197f26eff1719403"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tis-system/artifacts/releases/download/v0.0.1-rc1/cli_v0.0.1-rc1_darwin_arm64.tar.gz"
      sha256 "d3f696af767fc68f72c582fae10a1e017dd0583f0731b2c07d2c652298eb360e"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tis-system/artifacts/releases/download/v0.0.1-rc1/cli_v0.0.1-rc1_linux_amd64.tar.gz"
      sha256 "0bc86fa27249f538473693390fb6b301671df13937ba0f0c448a7df2db60edc1"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tis-system/artifacts/releases/download/v0.0.1-rc1/cli_v0.0.1-rc1_linux_arm64.tar.gz"
      sha256 "158180714aa93e1f9b956f8c2dfc74a921f8165ec2b1c45bc54878060254375f"

      def install
        bin.install "tis"
      end
    end
  end
end
