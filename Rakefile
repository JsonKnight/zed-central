# frozen_string_literal: true

# Rakefile

PROJ_NAME = 'zed-central'

BIN_NAME = 'zed-central'
OUT_BIN = "~/.bin/xtools/#{BIN_NAME}"

namespace 'xrake' do
  desc 'prod -+ Move zed-central to bin folder'
  task production_deploy: 'cargo:clean_build' do
    source = File.join(PROJECT_ROOT, "target/release/#{BIN_NAME}")
    target = File.expand_path(OUT_BIN)
    mv(source, target)
  end
end

task prod: 'xrake:production_deploy'
