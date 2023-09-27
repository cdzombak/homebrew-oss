# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class PeriodicDockerPull < Formula
  desc "Automatically pull a list of Docker image/tags on a regular basis"
  homepage "https://github.com/cdzombak/periodic-docker-pull"
  url "https://github.com/cdzombak/periodic-docker-pull/releases/download/v0.0.6/periodic-docker-pull-0.0.6-all.tar.gz"
  sha256 "afeaa623f7216ee826e4d4855c0fef9e1e3e84c72c6b7cd415ddba6ee89d610b"
  license "LGPL-3.0"

  def install
    bin.install "_periodic_docker_pull"
  end

  test do
    assert_match("0.0.6", shell_output("#{bin}/_periodic_docker_pull -version"))
  end

  service do
    run bin/"_periodic_docker_pull"
    run_type :interval
    interval 21600
    process_type :background
    log_path "/tmp/periodic-docker-pull.stdout.log"
    error_log_path "/tmp/periodic-docker-pull.stderr.log"
  end
end
