#!/usr/bin/env bash

set -euo pipefail

SCRIPT_NAME="$(basename "$0")"
REPO_ROOT="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
SRC_DIR="${REPO_ROOT}/dn"
DN_PROJ_NAME="Spectre.Console.Swift"

log() {
    local msg="$1"

    echo "[${SCRIPT_NAME}] ${msg}"
}

log "repo root: ${REPO_ROOT}"
log "src dir: ${SRC_DIR}"

log "switching to src dir"
cd "${SRC_DIR}"

log "building .net project ${DN_PROJ_NAME} for release"
dotnet publish \
    "${DN_PROJ_NAME}/${DN_PROJ_NAME}.csproj" \
    -c "Release"

CONFIG_FILE="beyondnet-config.json"

log "running beyond.net with config file ${CONFIG_FILE}"
beyondnetgen "${CONFIG_FILE}"
