# Changelog

All notable changes to the KidsGames template will be documented in this file.

This project follows [Semantic Versioning](https://semver.org/):
- **MAJOR** (X.0.0) — Breaking changes to agent behavior, file structure, or config format
- **MINOR** (0.X.0) — New features, agents, or doc templates (backward compatible)
- **PATCH** (0.0.X) — Bug fixes, prompt improvements, typo fixes

---

## [1.1.0] — 2026-04-20

### Added
- 🧙 **Code Wizard:** Vanilla HTML5 Canvas as a first-class engine option (single-file, zero dependencies)
- 🧙 **Code Wizard:** Deployment & sharing section with GitHub Pages workflow
- 🎵 **Sound Maestro:** Procedural audio with Web Audio API oscillators (zero-file SFX)
- 🎨 **Art Spark:** Code-drawn art section (Canvas 2D drawing as alternative to external assets)
- 📝 **Game Creator:** "Capture the Kid's Original Vision" — record kid's exact words verbatim
- 📖 **Game Creator:** Development History tracking pattern for game evolution
- 🎨 **Config:** Added "canvas" as art generation tool option
- 🛡️ **Safety:** Nuanced content tone — "spooky-cute is OK, scary-scary is NOT"

### Changed
- 🧙 **Code Wizard:** Engine selection decision tree now considers single-file Canvas for simple web games
- 🛡️ **Safety:** Scary content rule updated from binary to nuanced guidance

### Learned From
- Real-world kids' game project: Petra (age 6) designed "Witches & Princesses"
  - Single HTML5 Canvas file with procedural audio and code-drawn art worked perfectly
  - Kid's verbatim vision statements guided every design decision
  - Development history showed iterative kid feedback loop in action

---

## [1.0.0] — 2026-04-20

### Added
- 🌟 Game Creator orchestrator agent with kid-facing communication
- 🌈 Dream Weaver sub-agent (Game Design Lead)
- 🧙 Code Wizard sub-agent (Development Lead)
- 🎨 Art Spark sub-agent (Art & UI Director)
- 🎵 Sound Maestro sub-agent (Audio Director)
- 🛡️ Fun Guardian sub-agent (QA & Testing Lead)
- 📋 Game Design Document template (Game Card + Implementation Spec)
- 🎨 Art Style Guide template
- 🎵 Sound Design Guide template
- ⚙️ Project configuration (game-project.yaml)
- 🔧 Init script for new game projects (PowerShell)
- 🛡️ Cross-cutting safety rules for kid-appropriate content
- 🌍 Bilingual support (English + Spanish)
- 👶 Age-adaptive communication (4-5 young mode, 6-7 explorer mode)
- 🧠 Idea Compressor for scope management
- 📖 README with 3 usage prompts (new, existing, upgrade)
- 📄 MIT License
