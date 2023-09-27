# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class PeriodicDockerPull < Formula
  desc "Automatically pull a list of Docker image/tags on a regular basis"
  homepage "https://github.com/cdzombak/periodic-docker-pull"
  url "https://github.com/cdzombak/periodic-docker-pull/releases/download/v0.0.5/periodic-docker-pull-0.0.5-all.tar.gz"
  sha256 "3f911fde770b483a0fa7afcf177ac95da1f62f03fa1cc9585750e66bb968caba"
  license "LGPL-3.0"

  def install
    bin.install "_periodic_docker_pull"
  end

  test do
    assert_match("0.0.5", shell_output("#{bin}/_periodic_docker_pull -version"))
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
