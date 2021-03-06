# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acorn < Formula
  desc "Acorn CLI"
  homepage "https://acorn.io"
  version "0.0.0-alpha34"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/acorn-io/acorn/releases/download/v0.0.0-alpha34/acorn-v0.0.0-alpha34-macOS-universal.tar.gz"
    sha256 "2f07d43236a022305735b69809d318368fbb55306382c3f58692beb1a846f0b4"

    def install
      bin.install "acorn"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acorn-io/acorn/releases/download/v0.0.0-alpha34/acorn-v0.0.0-alpha34-linux-arm64.tar.gz"
      sha256 "2a49da0d25569c7a44a24e1a1d76dd6fd10c96b101cf95023cc7d422591b9668"

      def install
        bin.install "acorn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acorn-io/acorn/releases/download/v0.0.0-alpha34/acorn-v0.0.0-alpha34-linux-amd64.tar.gz"
      sha256 "06689824514c75e7bb16ae3f0eccd9d0bec389d7263a1e356ff46b98a4a1346b"

      def install
        bin.install "acorn"
      end
    end
  end
end
