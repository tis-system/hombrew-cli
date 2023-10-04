# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API (v0.0.1-rc0)"
  homepage "https://tis.tetrate.io"
  version "v0.0.1-rc0" # v0.0.1-rc0

  on_macos do
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/v0.0.1-rc0/cli_v0.0.1-rc0_darwin_amd64.tar.gz"
      sha256 "9d55df76a8b6d8b39942ffb03fce55e1167cb1be22031ca48b97c098de071b4c"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://tis.tetrate.io/artifacts/v0.0.1-rc0/cli_v0.0.1-rc0_darwin_arm64.tar.gz"
      sha256 "10a271e39600e4bce6a7da9aa41e79d4284a0b91ce8150b399cf92b00bb57641"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tis.tetrate.io/artifacts/v0.0.1-rc0/cli_v0.0.1-rc0_linux_amd64.tar.gz"
      sha256 "6d8de80a38427311b6846f77c5d4cdb48fb6d240ac619a75b25a48bad9da5872"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/v0.0.1-rc0/cli_v0.0.1-rc0_linux_arm64.tar.gz"
      sha256 "91990a736555b5a49113d2833e2c23392dc9f6fbc3b6ef1c996fcc363b17ee4f"

      def install
        bin.install "tis"
      end
    end
  end
end
