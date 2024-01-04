# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acorn < Formula
  desc "Acorn CLI"
  homepage "https://acorn.io"
  version "0.10.0-rc2"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/acorn-io/runtime/releases/download/v0.10.0-rc2/acorn-v0.10.0-rc2-macOS-universal.tar.gz"
    sha256 "962e7a2d968986c6ddc7b01cf404636d7b63030dec02cf282a46df67980fced7"

    def install
      bin.install "acorn"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acorn-io/runtime/releases/download/v0.10.0-rc2/acorn-v0.10.0-rc2-linux-arm64.tar.gz"
      sha256 "77aabbf8a7cc6685a252847ccf1627d1e688f430ef748100cd31952e0375a1a4"

      def install
        bin.install "acorn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acorn-io/runtime/releases/download/v0.10.0-rc2/acorn-v0.10.0-rc2-linux-amd64.tar.gz"
      sha256 "010c9e1b5245a0addc9c66ffc18996b65dd4796d886ae63478226f8da437a2c3"

      def install
        bin.install "acorn"
      end
    end
  end
end
