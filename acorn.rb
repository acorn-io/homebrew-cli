# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acorn < Formula
  desc "Acorn CLI"
  homepage "https://acorn.io"
  version "0.3.0-rc2"
  license "Apache 2.0"

  on_macos do
    url "https://github.com/acorn-io/acorn/releases/download/v0.3.0-rc2/acorn-v0.3.0-rc2-macOS-universal.tar.gz"
    sha256 "e482afe1f9c7c853e2ce7f3d050321b53cae28771fb9b2f216adb24888027789"

    def install
      bin.install "acorn"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/acorn-io/acorn/releases/download/v0.3.0-rc2/acorn-v0.3.0-rc2-linux-arm64.tar.gz"
      sha256 "62cc8e042f22caa3b1013a45edad1ff80893085ebb4dccf974cf57b5cc8ca399"

      def install
        bin.install "acorn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/acorn-io/acorn/releases/download/v0.3.0-rc2/acorn-v0.3.0-rc2-linux-amd64.tar.gz"
      sha256 "4698d9dc677fe8c40a74b7f1199cb72bc51e7cbdc3f5b29b7339d953ffd44bb6"

      def install
        bin.install "acorn"
      end
    end
  end
end
