# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acorn < Formula
  desc "Acorn CLI"
  homepage "https://acorn.io"
  version "0.2.0-rc1"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/acorn-io/acorn/releases/download/v0.2.0-rc1/acorn-v0.2.0-rc1-macOS-universal.tar.gz"
    sha256 "e5026bc61a6872414e523a6110360cb3493c0e9397136366393cfc3510d9bf52"

    def install
      bin.install "acorn"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acorn-io/acorn/releases/download/v0.2.0-rc1/acorn-v0.2.0-rc1-linux-arm64.tar.gz"
      sha256 "1f2b15be652a244a7caad45993484dfaa1fd419211c70be8727beddb985f16d5"

      def install
        bin.install "acorn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acorn-io/acorn/releases/download/v0.2.0-rc1/acorn-v0.2.0-rc1-linux-amd64.tar.gz"
      sha256 "ca105be1d978e47755ba7c510cf754d65fe9de399c965366bf253398c8cebe2d"

      def install
        bin.install "acorn"
      end
    end
  end
end
