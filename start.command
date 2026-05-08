#!/bin/bash
# Double-click this file to launch the teleprompter in Chrome over localhost.
# Chrome remembers mic permission for localhost — no repeated prompts.

cd "$(dirname "$0")"

# Pick an available port
PORT=8765

# Check if already running on that port
if lsof -i :$PORT -sTCP:LISTEN -t &>/dev/null; then
    echo "Server already running on port $PORT"
else
    echo "Starting server on http://localhost:$PORT"
    python3 -m http.server $PORT &>/dev/null &
    sleep 0.6
fi

open -a "Google Chrome" "http://localhost:$PORT/teleprompter.html"
