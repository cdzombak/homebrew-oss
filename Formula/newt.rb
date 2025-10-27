# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Newt < Formula
  desc "Git worktree manager"
  homepage "https://github.com/cdzombak/newt"
  url "https://github.com/cdzombak/newt/releases/download/v0.0.4/newt-0.0.4-all.tar.gz"
  sha256 "963465431f8021a2023eaaefd2aeb7cda763cc03d133b62d436f23547c240135"
  license "LGPL-3.0"

  def install
    bin.install "newt"
    bash_completion.install "completions/newt.bash" => "newt"
    zsh_completion.install "completions/_newt" => "_newt"
  end

  test do
    assert_match("0.0.4", shell_output("#{bin}/newt --version"))
  end
end
