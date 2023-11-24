#!/usr/bin/env bash
# exit on error
set -o errexit

export MIX_ENV=prod

mix deps.get --only prod
mix assets.setup
mix assets.deploy
mix compile

mix ecto.setup

# Build the release and overwrite the existing release directory
mix release --overwrite
