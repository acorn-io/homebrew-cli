# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acorn < Formula
  desc "Acorn CLI"
  homepage "https://acorn.io"
  version "0.8.0-rc2"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/acorn-io/runtime/releases/download/v0.8.0-rc2/acorn-v0.8.0-rc2-macOS-universal.tar.gz"
    sha256 "d2b86f5355d6311cf58f41fcbb534b9897196b344ed91865134b080543d083dc"

    def install
      bin.install "acorn"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acorn-io/runtime/releases/download/v0.8.0-rc2/acorn-v0.8.0-rc2-linux-arm64.tar.gz"
      sha256 "ee6e91eebb1a2d1b84386d9764d5ce490abcd510d553cfb77a3bb2e7f2349d9c"

      def install
        bin.install "acorn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acorn-io/runtime/releases/download/v0.8.0-rc2/acorn-v0.8.0-rc2-linux-amd64.tar.gz"
      sha256 "aab82f6042fa834e7b5eb09d945cdeba96ce29245c704d40584c71a506937372"

      def install
        bin.install "acorn"
      end
    end
  end
end
