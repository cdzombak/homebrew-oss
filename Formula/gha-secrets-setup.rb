# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class GhaSecretsSetup < Formula
  desc "GitHub Actions secrets setup tool"
  homepage "https://github.com/cdzombak/gha-secrets-setup"
  url "https://github.com/cdzombak/gha-secrets-setup/releases/download/v0.0.1/gha-secrets-setup-0.0.1-all.tar.gz"
  sha256 "96d17e330e42c3050375c219357fc8bcb53be199dc9448c4f5495ef951c98912"
  license "MIT"

  depends_on "gh"
  depends_on "git"

  def install
    bin.install "gha-secrets-setup"
  end

  test do
    assert_match("0.0.1", shell_output("#{bin}/gha-secrets-setup --version 2>&1", 1))
  end
end
