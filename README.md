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

## Getting Started

There are three ways to use this template depending on your situation. Copy the appropriate prompt into your AI coding assistant (GitHub Copilot, Cursor, etc.).

---

### 🆕 Prompt 1: New Game Project (Start from Scratch)

Use this when you're starting a brand new game with a kid.

```
I want to create a new kids' game project using the KidsGames template.

1. Clone the template from https://github.com/pedrofuentes/KidsGames
2. Copy all files from the template/ folder into my game project at [TARGET_PATH]
3. Create the game project directories: game/assets/art, game/assets/audio,
   game/assets/fonts, game/scenes, game/scripts, game/ui, art-prompts, playtests
4. Update config/game-project.yaml with:
   - Designer name: [KID_NAME]
   - Designer age: [KID_AGE]
   - Language: [en/es/both]
   - Interaction mode: [kid/parent/hybrid]
5. Create an initial Game Card in docs/game-card.md with the kid's name
6. Initialize a git repository
7. Read the AGENTS.md and begin the Imagine phase with the Game Designer
```

Or use the init script directly:

```powershell
.\scripts\init-game-project.ps1 -ProjectPath "[TARGET_PATH]" -DesignerName "[KID_NAME]" -DesignerAge [KID_AGE]
```

---

### 📂 Prompt 2: Existing Game Project (Add Template to Existing Game)

Use this when you already have a game project with code, assets, or docs and want to adopt the KidsGames agent system.

```
I want to add the KidsGames agent template to my existing game project at [PROJECT_PATH].

1. Clone the template from https://github.com/pedrofuentes/KidsGames
2. Before copying any template files, back up any existing files that would be
   overwritten. For each file that exists in both the template and my project:
   - Create a backup at [FILENAME].backup
   - After copying the template file, merge the original content into the
     template version (e.g., if I have an existing AGENTS.md, incorporate its
     instructions into the template AGENTS.md; if I have existing docs, merge
     them into the template doc structure)
3. Copy all files from the template/ folder into my project
4. Create any missing directories: game/assets/art, game/assets/audio,
   game/assets/fonts, game/scenes, game/scripts, game/ui, art-prompts, playtests
5. Update config/game-project.yaml with my project details:
   - Designer name: [KID_NAME]
   - Designer age: [KID_AGE]
   - Language: [en/es/both]
   - Interaction mode: [kid/parent/hybrid]
6. If I already have game code, analyze it and pre-fill:
   - The Game Card (docs/game-card.md) with the current game's concept
   - The Implementation Spec based on existing code and mechanics
   - The Art Style Guide if visual assets already exist
7. Delete the .backup files once the merge is confirmed correct
8. Read the AGENTS.md and ask me where we left off
```

---

### ⬆️ Prompt 3: Upgrade Template (Update to New Version)

Use this when a new version of the KidsGames template is released and you want to upgrade your existing game project.

```
I want to upgrade the KidsGames agent template in my project at [PROJECT_PATH]
from version [CURRENT_VERSION] to the latest version.

1. Check the current template version in my config/game-project.yaml
   (under advanced.template_version)
2. Clone or pull the latest template from https://github.com/pedrofuentes/KidsGames
3. Check the new version in the template's config/game-project.yaml
4. Review the CHANGELOG.md in the template repo for breaking changes between
   my version and the new version
5. For each template file that would be updated:
   - Back up my current version as [FILENAME].pre-upgrade
   - If the file contains project-specific content I've customized
     (AGENTS.md customizations, filled-in docs, config values), merge my
     customizations into the new template version
   - If the file is a pure template file I haven't modified (sub-agent prompts,
     doc templates), replace it directly
6. Preserve ALL of these untouched:
   - config/game-project.yaml designer settings
   - docs/game-card.md (my game's design)
   - docs/implementation-spec.md (if exists)
   - game/ folder (all game code and assets)
   - art-prompts/ (all generated prompts and logs)
   - playtests/ (all playtest records)
7. Update advanced.template_version in config/game-project.yaml to the new version
8. Delete .pre-upgrade backup files once merge is confirmed correct
9. Summarize what changed between versions and any action items
```

---

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
