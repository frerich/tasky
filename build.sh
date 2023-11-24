#!/usr/bin/env bash
# exit on error
set -o errexit

export MIX_ENV=prod

mix assets.setup
mix deps.get --only prod
mix ecto.setup
mix compile
mix assets.deploy

# Build the release and overwrite the existing release directory
mix release --overwrite

