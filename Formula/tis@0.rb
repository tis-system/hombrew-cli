# typed: false
# frozen_string_literal: true

class TisAT0 < Formula
  desc "A CLI for TIS API (v0.0.1-nightly+d5c061b)"
  homepage "https://tis.tetrate.io"
  version "0.0.1-n1696384875835" # v0.0.1-nightly+d5c061b

  on_macos do
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "5f4f3d1618bfacfec334a7806f72fce76180c89e5d7bdbf9de628579cd738c9d"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "8af354dcd7ec8810d43f5438dc20640d8083b860b7baaababaf2557af542e910"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "28cdbf922833edd96970351df11649b65c228e4ab97b068086ebcc3b93ff47d6"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://tis.tetrate.io/artifacts/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "762aa412d6da440721e7fafeb15627c3deb1f41b1534f78e9ce48474034a0cdd"

      def install
        bin.install "tis"
      end
    end
  end
end
