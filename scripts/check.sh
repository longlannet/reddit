#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
VENV_DIR="$BASE_DIR/.venv"
BIN_DIR="$VENV_DIR/bin"
RDT_BIN="$BIN_DIR/rdt"

log() { printf '[reddit] %s\n' "$*"; }
fail() { printf '[reddit] ERROR: %s\n' "$*" >&2; exit 1; }

[ -x "$RDT_BIN" ] || fail "rdt not found: $RDT_BIN"
[ -f "$BASE_DIR/SKILL.md" ] || fail "missing SKILL.md"
[ -f "$BASE_DIR/README.md" ] || fail "missing README.md"
[ -f "$BASE_DIR/scripts/install.sh" ] || fail "missing scripts/install.sh"
[ -f "$BASE_DIR/scripts/check.sh" ] || fail "missing scripts/check.sh"

log "checking rdt"
"$RDT_BIN" --help >/dev/null

log "check complete"
