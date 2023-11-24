#!/usr/bin/env bash
# exit on error
set -o errexit

export MIX_ENV=prod

# Initial setup
mix deps.get --only prod
mix ecto.setup
mix compile

# Compile assets
mix assets.setup
mix assets.deploy

# Build the release and overwrite the existing release directory
MIX_ENV=prod mix release --overwrite

