#!/usr/bin/env bash
# exit on error
set -o errexit

# Initial setup
mix deps.get --only prod
mix ecto.setup
mix assets.setup
MIX_ENV=prod mix compile

# Compile assets
mix assets.deploy

# Build the release and overwrite the existing release directory
MIX_ENV=prod mix release --overwrite

