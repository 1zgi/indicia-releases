# Indicia

A minimal, floating desktop app (macOS, Linux, Windows) that improves your AI prompts and scores your English writing using IELTS criteria. Runs fully offline with a local Ollama LLM.

## Features

- **Prompt analysis** — refined text, IELTS band score, vocabulary upgrades, and prompt rating
- **Image analysis** — paste an image with a text description to generate professional AI prompts using a vision model
- **Real-time spellcheck** — underlines mistakes as you type, click for correction suggestions
- **Translation** — translate prompts from any language to English using Helsinki-NLP OPUS-MT models
- **Theming** — light/dark mode with 6 accent color palettes
- **Global hotkey** — Cmd+Shift+P (macOS) or Ctrl+Shift+P (Linux/Windows)
- **Native build** — compiled to native binary with Nuitka (no Python runtime needed)

## Requirements

- macOS (Apple Silicon), Linux (x86_64), or Windows (x86_64)

Ollama and the required AI models are installed automatically on first launch.

## Install

### macOS (Homebrew)

```bash
brew tap 1zgi/indicia https://github.com/1zgi/indicia-releases
brew install --cask indicia
```

To update: `brew upgrade --cask indicia`

### Windows (Scoop)

```powershell
scoop bucket add indicia https://github.com/1zgi/indicia-releases
scoop install indicia
```

To update: `scoop update indicia`

### Linux / Ubuntu (.deb)

Download `indicia_X.Y.Z_amd64.deb` from [Releases](https://github.com/1zgi/indicia-releases/releases), then:

```bash
sudo dpkg -i indicia_*.deb
```

To update: download the new `.deb` and run `dpkg -i` again.

### Manual download (all platforms)

Pre-built binaries for macOS, Linux, and Windows are available on the [Releases](https://github.com/1zgi/indicia-releases/releases) page.

## Windows — SmartScreen warning

The Windows build is **not code-signed**, so SmartScreen will show a **"Windows protected your PC"** warning on first launch.

To proceed:
1. Click **"More info"**
2. Click **"Run anyway"**

## macOS — permissions setup

Indicia needs Accessibility and Input Monitoring permissions for the global hotkey (Cmd+Shift+P). On first launch, macOS will prompt you to grant access in **System Settings > Privacy & Security**.

## Auto-start at login

**macOS:**
```bash
# Indicia includes a LaunchAgent plist — copy it:
cp /Applications/Indicia.app/Contents/Resources/com.ctrlrings.indicia.plist ~/Library/LaunchAgents/
```

**Linux:**
```bash
cp /usr/share/applications/indicia.desktop ~/.config/autostart/
```

**Windows:** Add a shortcut to `main.exe` in `shell:startup` (press `Win+R`, type `shell:startup`).

## Keyboard shortcuts

| Shortcut | Action |
|----------|--------|
| `Cmd+Shift+P` / `Ctrl+Shift+P` | Toggle window visibility |
| `Cmd+V` / `Ctrl+V` | Paste image (auto-switches to image mode) |
| `Enter` | Send prompt for analysis |
| `Shift+Enter` | New line |
| `Escape` | Hide window |
| `Cmd+Q` / `Ctrl+Q` | Quit |

## License

Free to use.
