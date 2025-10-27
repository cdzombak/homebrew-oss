# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class Newt < Formula
  desc "Git worktree manager"
  homepage "https://github.com/cdzombak/newt"
  url "https://github.com/cdzombak/newt/releases/download/v0.0.1/newt-0.0.1-all.tar.gz"
  sha256 "1fb3d662828954050faab9cdcd523233783f170f3cdde6da2874cc318059cd18"
  license "LGPL-3.0"

  def install
    bin.install "newt"
  end

  test do
    assert_match("0.0.1", shell_output("#{bin}/newt --version"))
  end
end
