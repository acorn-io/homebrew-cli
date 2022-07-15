# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acorn < Formula
  desc "Acorn CLI"
  homepage "https://acorn.io"
  version "0.0.0-alpha029"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/acorn-io/acorn/releases/download/v0.0.0-alpha029/acorn-v0.0.0-alpha029-macOS-universal.tar.gz"
    sha256 "9c4a7a01445e46a7350fecff9c7e86965723dda907cb6869177f14ab04abf492"

    def install
      bin.install "acorn"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acorn-io/acorn/releases/download/v0.0.0-alpha029/acorn-v0.0.0-alpha029-linux-arm64.tar.gz"
      sha256 "b4419388c081b9f3c2d2edc6fc830e422ec64b6655010a0b9bb37a30403fd996"

      def install
        bin.install "acorn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acorn-io/acorn/releases/download/v0.0.0-alpha029/acorn-v0.0.0-alpha029-linux-amd64.tar.gz"
      sha256 "731b193685b5d4ceb9e6ce1dba5cdfeb6b44722a196f8e5811754b1bcce7f096"

      def install
        bin.install "acorn"
      end
    end
  end
end
