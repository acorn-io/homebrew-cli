# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acorn < Formula
  desc "Acorn CLI"
  homepage "https://acorn.io"
  version "0.8.0-rc4"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/acorn-io/runtime/releases/download/v0.8.0-rc4/acorn-v0.8.0-rc4-macOS-universal.tar.gz"
    sha256 "75e043c5c20f3bf85d14c9ab733433d945def9167ebef2f2652940106408e38d"

    def install
      bin.install "acorn"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acorn-io/runtime/releases/download/v0.8.0-rc4/acorn-v0.8.0-rc4-linux-arm64.tar.gz"
      sha256 "80ae0c0131d89ca970087e7ee0d2e6508f42b2a8dcea392ce3c80134c59940d4"

      def install
        bin.install "acorn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acorn-io/runtime/releases/download/v0.8.0-rc4/acorn-v0.8.0-rc4-linux-amd64.tar.gz"
      sha256 "8532da9a0e214f2aa8e15662e449e7b28375b03d4ff1b3acaace6779f7552c29"

      def install
        bin.install "acorn"
      end
    end
  end
end
