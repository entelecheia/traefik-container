#!/bin/bash

WORKSPACE_DIR=./workspace

# Prepare Traefik 2 Folders and Files
mkdir -p "$WORKSPACE_DIR/appdata/traefik2/acme"
mkdir -p "$WORKSPACE_DIR/appdata/traefik2/rules/cloudserver"

ACME_FILE="$WORKSPACE_DIR/appdata/traefik2/acme/acme.json"
touch "$ACME_FILE"
chmod 600 "$ACME_FILE"

mkdir -p "$WORKSPACE_DIR/logs/cloudserver/traefik"

ACCESS_LOG="$WORKSPACE_DIR/logs/cloudserver/traefik/access.log"
TRAEFIK_LOG="$WORKSPACE_DIR/logs/cloudserver/traefik/traefik.log"
touch "$ACCESS_LOG"
touch "$TRAEFIK_LOG"

mkdir -p "$WORKSPACE_DIR/secrets"
mkdir -p "$WORKSPACE_DIR/shared"
