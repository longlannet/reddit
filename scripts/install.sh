#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
VENV_DIR="$BASE_DIR/.venv"
BIN_DIR="$VENV_DIR/bin"
RDT_BIN="$BIN_DIR/rdt"

log() { printf '[reddit] %s\n' "$*"; }
fail() { printf '[reddit] ERROR: %s\n' "$*" >&2; exit 1; }

command -v python3 >/dev/null 2>&1 || fail "python3 not found"

if [ ! -d "$VENV_DIR" ]; then
  log "creating local venv: $VENV_DIR"
  python3 -m venv "$VENV_DIR"
else
  log "local venv already exists: $VENV_DIR"
fi

log "upgrading pip"
"$BIN_DIR/pip" install --upgrade pip >/dev/null

log "installing rdt-cli"
"$BIN_DIR/pip" install --upgrade rdt-cli >/dev/null

[ -x "$RDT_BIN" ] || fail "rdt not found after install: $RDT_BIN"

log "verifying rdt"
"$RDT_BIN" --help >/dev/null

log "install complete"
