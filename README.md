# Scrolly Teleprompter

A single-file, browser-based teleprompter designed for MacBook Pro. No install, no server — just open `teleprompter.html` in a browser.

## Features

- **Voice Sync** — scroll speed follows your voice automatically; speak and it moves, pause and it stops
- **Manual scroll** — fixed-speed scrolling when Voice Sync is off
- **Mirror mode** — flips text horizontally for use with a physical teleprompter mirror
- **Fullscreen prompter** — launches into fullscreen with a clean black background
- **Overlay controls** — speed slider, row position slider, pause/restart/edit buttons appear on mouse hover
- **Keyboard shortcuts** — full control without touching the mouse

## Usage

1. Open `teleprompter.html` in Chrome or Safari
2. Paste your script into the text area
3. Adjust speed, font size, text row position, and mic sensitivity as needed
4. Optionally enable **Voice Sync** and grant microphone access
5. Click **Start ▶**

Your script is auto-saved to `localStorage` between sessions.

## Controls

### Editor

| Control | Description |
|---|---|
| Reading Speed | Base scroll speed (px/s) |
| Font Size | Text size in the prompter |
| Text Row | Vertical position of the text line |
| Mic Sensitivity | How easily your voice triggers scrolling (Voice Sync only) |
| Mirror | Flips text horizontally |
| Voice Sync | Enables microphone-driven scrolling |

### Prompter (keyboard)

| Key | Action |
|---|---|
| `Space` | Pause / Resume |
| `↑` / `↓` | Increase / decrease speed |
| `←` / `→` | Scrub backward / forward |
| `ESC` | Exit prompter and return to editor |

### Prompter (overlay)

Move your mouse to reveal the overlay at the bottom of the screen.

| Control | Action |
|---|---|
| ⏸ Pause / ▶ Resume | Toggle playback |
| ↺ Restart | Jump back to the beginning |
| 🎤 Voice | Toggle Voice Sync mid-session |
| ✕ Edit | Exit to editor |
| Speed slider | Adjust scroll speed live |
| Row slider | Adjust text vertical position live |

## Voice Sync

When enabled, the teleprompter listens to speech frequencies (200–3000 Hz) via your microphone. It does not do word matching — scroll speed simply scales with how loudly you are speaking. A short decay means brief pauses don't stop the scroll immediately.

Microphone access is requested once and kept alive for the session to avoid repeated permission prompts.

## Browser Compatibility

Works best in **Chrome** or **Safari** on macOS. Requires microphone permission for Voice Sync.
