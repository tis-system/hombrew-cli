# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+696a22f)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696391885006" # v0.0.1-nightly+696a22f

  on_macos do
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "01d94e807ee9f76be5acaedd79682a333055e3ac8b4a224c765f371f8279effa"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "8d7f027b0c3fde98696206a1e4f6bd90c13f2f026105b740566702926b8a536b"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "0144bdae1aa586d2b73171d6bca3b04fb87ef4d388c3e47f777a516eac104a82"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "2879783b043e8d27e7f77b124a8558a7cc5142ea6ebcd083025c8c6506a9ce22"

      def install
        bin.install "tis"
      end
    end
  end
end
