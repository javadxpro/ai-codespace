#!/usr/bin/env bash
set -euo pipefail

if ! command -v opencode >/dev/null 2>&1; then
  echo "Installing OpenCode..."
  curl -fsSL https://opencode.ai/install | bash
fi

if ! command -v ollama >/dev/null 2>&1; then
  echo "Ollama is not installed. Please install it first: https://ollama.com/download"
  exit 1
fi

echo "Downloading a free local coding model..."
ollama pull qwen2.5-coder:7b

echo "Setup complete."
echo "Run:"
echo "  ollama serve"
echo "  opencode"
