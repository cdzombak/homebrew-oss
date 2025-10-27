# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Newt < Formula
  desc "Git worktree manager"
  homepage "https://github.com/cdzombak/newt"
  url "https://github.com/cdzombak/newt/releases/download/v0.0.2/newt-0.0.2-all.tar.gz"
  sha256 "82526dbbb50ce3ea483f9f261cc6ceffd9204e481c1bb7d7e46ef8c712f80457"
  license "LGPL-3.0"

  def install
    bin.install "newt"
    bash_completion.install "completions/newt.bash" => "newt"
    zsh_completion.install "completions/_newt" => "_newt"
  end

  test do
    assert_match("0.0.2", shell_output("#{bin}/newt --version"))
  end
end
