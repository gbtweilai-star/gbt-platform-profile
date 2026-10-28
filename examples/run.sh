#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_platform_profile info
PYTHONPATH=src python -m gbt_platform_profile check --payload '{}'
PYTHONPATH=src python -m gbt_platform_profile run   --payload '{}'
