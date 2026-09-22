#!/usr/bin/env bash
set -euo pipefail

# Install OpenCode in the Codespace if it is not already available.
if ! command -v opencode >/dev/null 2>&1; then
  curl -fsSL https://opencode.ai/install | bash
fi

# Install Ollama for the free local provider.
if ! command -v ollama >/dev/null 2>&1; then
  curl -fsSL https://ollama.com/install.sh | sh
fi

# Keep the model download explicit so Codespace creation does not unexpectedly
# consume bandwidth. Run scripts/start-agent.sh when you are ready.
echo "Workspace ready. Run: ./scripts/start-agent.sh"
