# typed: true
# frozen_string_literal: true

# This file was automatically generated. DO NOT EDIT.
class PeriodicDockerPull < Formula
  desc "Automatically pull a list of Docker image/tags on a regular basis"
  homepage "https://github.com/cdzombak/periodic-docker-pull"
  url "https://github.com/cdzombak/periodic-docker-pull/releases/download/v1.0.0/periodic-docker-pull-1.0.0-all.tar.gz"
  sha256 "0324a04fc40fcccaf87495f3928ea27fc07e8ac4d802a193b0f9f229a7e8bfc6"
  license "LGPL-3.0"

  def install
    bin.install "_periodic_docker_pull"
  end

  test do
    assert_match("1.0.0", shell_output("#{bin}/_periodic_docker_pull -version"))
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
