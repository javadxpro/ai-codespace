#!/usr/bin/env bash
set -euo pipefail

MODEL="${OLLAMA_MODEL:-qwen2.5-coder:7b}"

if ! command -v ollama >/dev/null 2>&1; then
  echo "Ollama is not installed. Rebuild the Codespace container first." >&2
  exit 1
fi

if ! command -v opencode >/dev/null 2>&1; then
  echo "OpenCode is not installed. Rebuild the Codespace container first." >&2
  exit 1
fi

# Start Ollama in the background when it is not already running.
if ! curl -fsS http://127.0.0.1:11434/api/tags >/dev/null 2>&1; then
  nohup ollama serve >"${HOME}/ollama.log" 2>&1 &
  for _ in {1..30}; do
    curl -fsS http://127.0.0.1:11434/api/tags >/dev/null 2>&1 && break
    sleep 1
  done
fi

ollama pull "$MODEL"
echo "Starting OpenCode with the free local agent..."
exec opencode
