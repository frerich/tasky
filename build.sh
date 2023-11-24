#!/usr/bin/env bash
# exit on error
set -o errexit

export MIX_ENV=prod

mix ecto.setup
mix assets.setup
mix assets.deploy
mix deps.get --only prod
mix compile

# Build the release and overwrite the existing release directory
mix release --overwrite
