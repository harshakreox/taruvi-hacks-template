#!/usr/bin/env bash
set -euo pipefail

URL="https://${CODESPACE_NAME}-5173.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"

echo ""
echo "  🌐  ${URL}"
echo ""
echo "  ↑ Click the URL above to open the app in a new browser tab."
echo "  Log in there first, then come back — the Simple Browser in VS Code"
echo "  will reflect your session after a refresh."
echo ""

# Try to open the Simple Browser inside VS Code
code --command simpleBrowser.show "$URL" >/dev/null 2>&1 || true
