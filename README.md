# 🎮 KidsGames — AI Agent Template for Kids' Game Creation

> **Help kids bring their dream games to life with AI agents.**

## What is This?

KidsGames is a **template** that sets up an AI agent system for creating video games with kids. A child acts as the **Game Designer** (the creative visionary), while AI agents form the **Game Creator** team that makes the game real.

The template provides:
- 🤖 A complete multi-agent system with specialized roles
- 📋 Document templates for game design, art, and audio
- ⚙️ Configurable settings (age, language, engine, safety)
- 🛡️ Built-in safety rules for kid-appropriate content

## Who is This For?

- **Parents** who want to help their kids create games with AI assistance
- **Educators** teaching game design and creative thinking
- **Developers** building AI-powered creative tools for children

## Quick Start

### 1. Initialize a New Game Project

```powershell
# From the KidsGames directory
.\scripts\init-game-project.ps1 -ProjectPath "C:\Users\YourName\projects\MyKidsGame" -DesignerName "Alex" -DesignerAge 6
```

### 2. Or Copy Manually

Copy the entire `template/` folder contents into your game project directory.

### 3. Configure

Edit `config/game-project.yaml` in your game project:

```yaml
designer:
  name: "Alex"
  age: 6
  language: "en"        # "en", "es", or "both"
  interaction_mode: "hybrid"  # "kid", "parent", or "hybrid"
```

### 4. Start Creating!

Open your game project with an AI coding assistant (GitHub Copilot, etc.) and the `AGENTS.md` will guide the agent to become the Game Creator.

## The Agent Team

| Agent | Role | What They Do |
|-------|------|--------------|
| 🌟 **Game Creator** | Main Orchestrator | Talks to the kid, coordinates everything, ensures quality |
| 🌈 **Dream Weaver** | Game Design Lead | Turns kid's ideas into game designs |
| 🧙 **Code Wizard** | Development Lead | Writes the game code, picks the engine |
| 🎨 **Art Spark** | Art & UI Director | Creates visual style, art prompts, UI design |
| 🎵 **Sound Maestro** | Audio Director | Designs sound effects, music, audio |
| 🛡️ **Fun Guardian** | QA & Testing | Tests fun, playability, safety |

## The Kid's Experience

The kid sees three simple phases:

1. **💭 Imagine** — "Tell me about your dream game!"
2. **🔨 Make** — "Let's build it! Pick your favorites!"
3. **🎮 Play** — "Your game is ready! Let's play!"

Behind the scenes, the agents handle all the complexity.

## Template Structure

```
template/
├── AGENTS.md              # Main agent system definition
├── agents/                # Sub-agent prompts
│   ├── dream-weaver.md    # Game Design Lead
│   ├── code-wizard.md     # Development Lead
│   ├── art-spark.md       # Art & UI Director
│   ├── sound-maestro.md   # Audio Director
│   └── fun-guardian.md    # QA & Testing Lead
├── docs/                  # Document templates
│   ├── game-design-document.md
│   ├── art-style-guide.md
│   └── sound-design-guide.md
└── config/
    └── game-project.yaml  # Project configuration
```

## Supported Engines

The template is engine-agnostic — the Code Wizard selects the best engine for each game:

| Engine | Best For | Language |
|--------|----------|----------|
| **Phaser** | Simple 2D, web games | JavaScript |
| **Godot** | Rich 2D/3D games | GDScript |
| **Scratch** | Very young kids | Block-based |
| **LÖVE** | Pixel art, retro | Lua |

## Safety

All games created with this template follow strict safety rules:
- ✅ No violence beyond cartoon slapstick
- ✅ No scary or inappropriate content
- ✅ No manipulative game mechanics
- ✅ No data collection from players
- ✅ Fully playable offline
- ✅ The kid always has creative control

## Language Support

- 🇬🇧 English
- 🇪🇸 Spanish / Español
- 🌍 Bilingual mode (follows the kid's lead)

## Testing

The template is tested against the project at `~/projects/GabrielsGame`.

## Contributing

See [docs/contributing.md](docs/contributing.md) for how to improve the template.

## License

This project is licensed under the [MIT License](LICENSE).

---

*Built with ❤️ for kids who dream of making games.*

📦 **Repository:** [github.com/pedrofuentes/KidsGames](https://github.com/pedrofuentes/KidsGames)
