# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acorn < Formula
  desc "Acorn CLI"
  homepage "https://acorn.io"
  version "0.10.1"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/acorn-io/runtime/releases/download/v0.10.1/acorn-v0.10.1-macOS-universal.tar.gz"
    sha256 "fb75bdd633633ac75dc570ccb60eb68880d0ca52ac8d63f91eb9699cfe877f86"

    def install
      bin.install "acorn"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acorn-io/runtime/releases/download/v0.10.1/acorn-v0.10.1-linux-arm64.tar.gz"
      sha256 "5d5e41f8b823724aa731b9884434dc24bb2d1131ec58f2d43a2f36e380a0d21e"

      def install
        bin.install "acorn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acorn-io/runtime/releases/download/v0.10.1/acorn-v0.10.1-linux-amd64.tar.gz"
      sha256 "1d2ce9859b8050649176e83e49e1ff9860d6e72d521736aec7aba373789c3657"

      def install
        bin.install "acorn"
      end
    end
  end
end
