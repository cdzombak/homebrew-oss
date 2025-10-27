# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Newt < Formula
  desc "Git worktree manager"
  homepage "https://github.com/cdzombak/newt"
  url "https://github.com/cdzombak/newt/releases/download/v0.0.3/newt-0.0.3-all.tar.gz"
  sha256 "8daf0f6492836ab4d47e4418d562148b00c6d0d1f250f934e11e00be0f222789"
  license "LGPL-3.0"

  def install
    bin.install "newt"
    bash_completion.install "completions/newt.bash" => "newt"
    zsh_completion.install "completions/_newt" => "_newt"
  end

  test do
    assert_match("0.0.3", shell_output("#{bin}/newt --version"))
  end
end
