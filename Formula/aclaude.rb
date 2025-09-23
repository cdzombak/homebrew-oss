# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Aclaude < Formula
  desc "Claude Code launcher for alternate models"
  homepage "https://github.com/cdzombak/aclaude"
  url "https://github.com/cdzombak/aclaude/releases/download/v1.0.2/aclaude-1.0.2-all.tar.gz"
  sha256 "3c445aa61a7b29d784055f317d271323e7be14a0133c596ebd2f39d8515c47c6"
  license "GPL-3.0"

  depends_on "bash"
  depends_on "curl"
  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "aclaude"
  end

  test do
    assert_match("1.0.2", shell_output("#{bin}/aclaude --version"))
  end
end
