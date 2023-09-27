# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class PeriodicDockerPull < Formula
  desc "Automatically pull a list of Docker image/tags on a regular basis"
  homepage "https://github.com/cdzombak/periodic-docker-pull"
  url "https://github.com/cdzombak/periodic-docker-pull/releases/download/v0.0.7/periodic-docker-pull-0.0.7-all.tar.gz"
  sha256 "d990d023b91a7bea4a9e6e85e8af480be163ff5cb3c471448ccb0502364beefe"
  license "LGPL-3.0"

  def install
    bin.install "_periodic_docker_pull"
  end

  test do
    assert_match("0.0.7", shell_output("#{bin}/_periodic_docker_pull -version"))
  end

  service do
    run opt_bin/"_periodic_docker_pull"
    run_type :interval
    interval 21600
    process_type :background
    log_path "/tmp/periodic-docker-pull.stdout.log"
    error_log_path "/tmp/periodic-docker-pull.stderr.log"
  end
end
