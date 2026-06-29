#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${HOME}/.agents/skills/research"

mkdir -p "${TARGET_DIR}"
cp -R "${ROOT_DIR}/skills/website-audit" "${TARGET_DIR}/"
cp -R "${ROOT_DIR}/skills/conversion-engine" "${TARGET_DIR}/"
cp -R "${ROOT_DIR}/skills/visibility-audit" "${TARGET_DIR}/"

echo "Installed to ${TARGET_DIR}"
echo "Available skills:"
echo "- website-audit"
echo "- conversion-engine"
echo "- visibility-audit"
