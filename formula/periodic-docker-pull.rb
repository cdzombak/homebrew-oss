# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class PeriodicDockerPull < Formula
  desc "Automatically pull a list of Docker image/tags on a regular basis."
  homepage "https://github.com/cdzombak/periodic-docker-pull"
  url "https://github.com/cdzombak/periodic-docker-pull/releases/download/v0.0.3/periodic-docker-pull-0.0.3-all.tar.gz"
  sha256 "407a64501ea9e3eaa8ed83e7da6c4eec2225817c6ae46c9aa92212717141da53  ./gh-release/periodic-docker-pull-0.0.3-all.tar.gz"
  license "LGPL-3.0"

  def install
    bin.install "_periodic-docker-pull"
  end

  test do
    assert_match("0.0.3", shell_output("#{bin}/_periodic-docker-pull -version"))
  end

  service do
    run opt_bin/"_periodic-docker-pull"
    run_type :interval
    interval 21600
    process_type :background
    log_path "/tmp/periodic-docker-pull.stdout.log"
    error_log_path "/tmp/periodic-docker-pull.stderr.log"
  end
end
