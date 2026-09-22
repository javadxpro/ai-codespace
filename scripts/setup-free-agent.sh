#!/usr/bin/env bash
set -euo pipefail

MODEL="${OLLAMA_MODEL:-qwen2.5-coder:7b}"

if ! command -v ollama >/dev/null 2>&1; then
  echo "Ollama is required. Install it from https://ollama.com/download" >&2
  exit 1
fi

ollama pull "$MODEL"
echo "Free local agent is ready: $MODEL"
echo "Start Ollama with: ollama serve"
echo "Then run OpenCode from this directory: opencode"
