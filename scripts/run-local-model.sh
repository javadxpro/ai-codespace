#!/usr/bin/env bash
set -euo pipefail

if ! command -v ollama >/dev/null 2>&1; then
  echo "Ollama is not installed. Please install it first: https://ollama.com/download"
  exit 1
fi

ollama run qwen2.5-coder:7b
