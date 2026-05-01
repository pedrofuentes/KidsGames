# Changelog

All notable changes to the KidsGames template will be documented in this file.

This project follows [Semantic Versioning](https://semver.org/):
- **MAJOR** (X.0.0) — Breaking changes to agent behavior, file structure, or config format
- **MINOR** (0.X.0) — New features, agents, or doc templates (backward compatible)
- **PATCH** (0.0.X) — Bug fixes, prompt improvements, typo fixes

---

## [1.3.2] — 2026-05-01

### Added
- 📋 **Parent Summary template** (`docs/parent-summary.md`) — non-technical session recap for parents
- 🛡️ **Fun Guardian:** Accessibility Baseline checklist (one-hand play, no color-only signals, pause-any-time, no flashing >3Hz)
- 🧙 **Code Wizard:** Bilingual string externalization pattern (`strings.json` for `language: "both"`)
- 🎨 **Art Spark:** Reduced Motion Mode — alternative animations for `prefers-reduced-motion`
- 🧙 **Code Wizard:** `prefers-reduced-motion` media query support
- 🎮 **Game Creator:** Parent Recap added as session-close deliverable and Phase Exit Criteria

### Motivation
- 3-model gap analysis panel (Opus 4.7, Opus 4.6, Sonnet 4.6) unanimously found no 6th agent needed
- These enhancements close the remaining thin gaps in parent communication, accessibility, and localization

---

## [1.3.1] — 2026-05-01

### Fixed
- 🧙 **Code Wizard:** `display.resolution` config key → `art.resolution` (matched actual YAML)
- 🧙 **Code Wizard:** `loadAssetSafe` try/catch replaced with correct Phaser `loaderror` event pattern

### Added
- 🎮 **Game Creator:** Spanish translations for all 7 tricky-moment scripts
- 🎮 **Game Creator:** First-greeting language rule for `language: "both"` mode
- 🎮 **Game Creator:** Bilingual Game Card field labels (Hero/Héroe, World/Mundo, etc.)
- 🎮 **Game Creator:** 4th Idea Compressor example — "Vibe Kid" (sensory/magical archetype)
- 🎮 **Game Creator:** Session-close script with save-state guidance
- 🎮 **Game Creator:** Turn budget for Dream Capture (≤5 questions)
- 🎮 **Game Creator:** Shared game-event naming convention table (canonical IDs across agents)
- 🧙 **Code Wizard:** Level-progression pattern (level arrays + transitions)
- 🧙 **Code Wizard:** Companion/follower entity pattern (lerp-based)
- 🧙 **Code Wizard:** Visual timer bar implementation snippet
- 🧙 **Code Wizard:** `config.js` structure definition
- 🧙 **Code Wizard:** Gamepad pause mapping (Start button)
- 🌈 **Dream Weaver:** Complexity budget clarification (what counts toward 10 points)
- 🌈 **Dream Weaver:** Scope Notes template (markdown format)
- 🌈 **Dream Weaver:** Challenge-proposal guidance ("if kid didn't specify, propose 3 silly options")
- 🌈 **Dream Weaver:** Default canvas resolution per engine table
- 🎨 **Art Spark:** "Dreamy/Whimsical" mood row in Mood→Visual Mechanics table
- 🎨 **Art Spark:** Hero+companion proportion guidance (relative sizing rules)
- 🎨 **Art Spark:** Multi-character art prompt example (hero + sidekick)
- 🎵 **Sound Maestro:** "Fantasy/Magic/Sky" mood row in Sound Mood Mapping
- 🎵 **Sound Maestro:** Audio DNA String concept (like Style DNA for sound)
- 🎵 **Sound Maestro:** Companion-character audio patterns (meow, bark, chirp, beep)
- 🎵 **Sound Maestro:** "Sky/Clouds" ambient entry
- 🛡️ **Fun Guardian:** Gentle Failure Compliance audit checklist (consolidated)
- 🛡️ **Fun Guardian:** Minimum font/element size rules (hard px values)
- 🛡️ **Fun Guardian:** Regression verification protocol
- 🛡️ **Fun Guardian:** "Multiplayer equity" Fun Checklist item (#11)
- 🛡️ **Fun Guardian:** Language consistency audit item

### Validated By
- 15-agent multi-model review panel (5 areas × 3 models: Opus 4.7, Opus 4.6, Sonnet 4.6)
- All 15 reviews returned 🟢 verdicts (avg score: Opus 4.7 = 9.32, Opus 4.6 = 9.24, Sonnet 4.6 = 8.76)

---

## [1.3.0] — 2026-04-30

### Changed
- 🎮 **Game Creator (`template/AGENTS.md`) — Opus 4.7 compatibility** — added explicit examples, decision frameworks, and concrete guidance throughout:
  - **Safety section overhaul** — preemptive AI-model note authorizing spooky-cute content; Cartoon Slapstick Catalog (✅/⚠️/❌); Spooky-Cute Test (4 criteria) with 10-row examples table; Three Hard Nos (jumpscares, sustained darkness, no-escape pursuit); Picture Book Test replaces "giggle or cry"
  - **Diversity rule rewrite** — vary appearances when multiple humanoid characters exist; never override kid's creative choices
  - **Copyright rule rewrite** — genres/mechanics not copyrightable; reframe IP requests as "YOUR OWN" version
  - **Age-adaptive examples** — 10+ Young Mode example phrases by moment; 6+ Explorer Mode examples; explicit Mode Selection Rules table; message format rules (≤3 sentences, ≤10 words, no Markdown, exactly 3 choices)
  - **Idea Compressor worked examples** — Kitchen Sink Kid, Story Kid, Action Kid; Compression Test prompt
  - **Handoff Protocol enhancement** — structured Context sub-fields; Validation Procedure table; Phase Exit Criteria table; Feedback Dispatch Rules; Handling Sub-Agent Questions for the Kid
  - **Delegation triggers** — Agent Directory now lists explicit trigger predicates and ordering constraints
  - **Handling Tricky Moments** — new section with scripts for "I don't know", frustration, dislike, mind change, lost interest, sibling interruption, conflicting ideas
  - **Safe-Redirect Scripts** — table of kid requests → safe redirects (guns→zapping, blood→confetti, IP→YOUR own); "kid never hears no" rule
  - **Bilingual Support concrete rules** — sentence-level mirror, first-word rule for mixed sentences, silent switching; 4 Spanish Young Mode and 4 Spanish Explorer Mode examples
  - **Celebration Patterns** — 8 rotating styles with no-repeat rule
  - **"Keep the Magic Alive" Techniques** — 7 concrete in-character techniques
  - **Gentle Failure Standard** — no Game Over, 2s respawn, major-key fail music, auto-help after 3 fails, visual not audible timer
  - **Environmental Hazard Reskinning Guide** — table mapping adult hazards to kid-safe equivalents
- 🎨 **Art Spark — Opus 4.7 compatibility** — replaced vague creative guidance with concrete, measurable visual specifications:
  - Three fully-worked **Style Guide Examples** (Forest/storybook, Space/neon, Watercolor/pastel) with every field filled in — hex palettes, proportions, easing, outlines
  - **Tool-specific AI prompt templates** for Midjourney v6, DALL-E 3, and SDXL — with bad vs good examples and one fully-worked prompt per asset type (hero, enemy, collectible, background, UI button)
  - **Concrete Color Palette Rules** — HSL saturation/lightness ranges, hue spacing, 60/30/10 usage ratio, forbidden combos (pure black/white, red+green only), WCAG 4.5:1 contrast mandatory
  - **Character Proportion Cheat Sheet** with exact ratios for humanoid chibi, animal hero, robot, fantasy creature
  - **Reference Frame & Units** section — 1920×1080 reference resolution, mobile scaling formula, touch-target minimums by age, standard component and sprite sizes
  - **Mood → Visual Mechanics** mapping table (saturation, line weight, easing, particle density, idle animation per mood)
  - **Style DNA String** — mandatory verbatim line included in every prompt, with worked examples
  - **Code-Drawn Art Recipes** — copy-paste Canvas 2D snippets for `drawChibiHero()`, `spawnSparkle()`, `drawButton()`, `drawParallaxBg()`
- 🎵 **Sound Maestro — Opus 4.7 compatibility** — replaced mood words with concrete musical/audio specifications throughout the prompt:
  - Audio Style Profile expanded with key, mode, time signature, tempo ranges, instrumentation cap, melody range, intervals to avoid, cadence rule, and 2 worked examples
  - New **Technical SFX Recipe Table** with waveform, frequency sweep, ADSR envelope, volume, and per-trigger variant for every core SFX
  - **Standard Music Structure** spec (intro / loop body / outro tail, loop point on cadence beat 1, shared BPM per scene, stems, same-key crossfade rule)
  - Procedural audio library extended to cover ALL SFX categories (land, attack, powerUp, doorOpen, splash, bouncePad, breakable, btnClick, menuTick, confirm, cancel, error, levelComplete, achievement, gameOver, highScore, checkpoint)
  - **Tool-specific music prompt templates** — bad vs good examples for Suno (bracketed) and MusicGen (natural language), plus one full prompt per music role (gameplay / calm / boss / victory)
  - **Standard Audio Contract for Code Wizard** — file layout, AudioManager API signatures (`playSfx`, `playMusic`, `crossfadeMusic`, `setMasterVolume`, `mute`), 50 ms throttle rule, ±10% pitch variance, 8-voice round-robin pool
  - Volume Principles converted to exact gain values (master=0.7, music=0.3, ambient=0.15, sfx=0.5; oscillator cap 0.15) with `M` key + UI mute binding
  - Sound Mood Mapping table extended with Key, BPM, Scale/Mode, and a one-line sample AI prompt per row
- 🧙 **Code Wizard — Opus 4.7 compatibility** — replaced vague technical guidance with deterministic specs:
  - Deterministic engine selection tree with explicit "entity type" definition and single-file Canvas threshold
  - Per-engine scaffold layout table with exact filenames and naming conventions
  - Scratch rewritten as specification-only target (blueprint.md + Vanilla Canvas fallback)
  - State machine reference implementations (Phaser/Vanilla JS + Godot)
  - Asset filename contract and per-engine load patterns
  - Delta-time guidance with per-engine snippets
  - GitHub Pages deployment fix (`path: 'game'`)
  - Engine version pinning (Phaser 3.80.1, Godot 4.3, LÖVE 11.5)
  - Pause button spec (64×64 visible, keyboard + gamepad + touch)
  - Mobile-ready HTML boilerplate (viewport, touch-action, safe-area, rotate overlay)
  - Resolution-from-config table, sound integration contract, error overlay spec
  - Fallback engine criteria, spec gap handling, comment density rules
- 🌈 **Dream Weaver — Opus 4.7 compatibility** — added concrete design examples and tools:
  - Scope compression examples by genre (racing, puzzle, building, story/adventure)
  - "Special" field guidance with good/bad examples
  - Three completed Game Card appendix examples (platformer, puzzle, creative)
  - Specificity Ladder for vague kids (5-rung question flow + anti-pattern)
  - Complexity budget worked example with cut-priority list
  - Three-option generation rule (differ on hero/world/mechanic, never just color)
  - Original vision capture examples (short-answer, rambling, parent-mediated)
- 🛡️ **Fun Guardian — Opus 4.7 compatibility** — replaced subjective assessments with measurable rubrics:
  - Fun Score additive rubric (10 concrete criteria, one point each)
  - Tri-state safety audit (✅ Pass / ⚠️ Needs Parent Review / ❌ Fail)
  - Safety Severity Scale (Hard Violation / Likely / Borderline / Style Note)
  - 10 explicit edge-case tests replacing vague "try to break it"
  - "No Reading Required" operational definition with allowed/fails lists
  - Age-specific vocabulary rules (Dolch word lists, sentence length limits)
  - Machine-readable YAML action item format
- ⚙️ **Config (`game-project.yaml`) — breaking config changes:**
  - `scary_content: false` → `spooky_level: "spooky_cute"` (boolean → enum)
  - `max_violence: "none"` → `max_violence: "cartoon"` (new default)
  - `multiplayer` → `online_multiplayer` (local couch multiplayer now allowed by default)

### Motivation
- Claude Opus 4.7 is more literal and less creative at gap-filling than 4.6
- Reports indicated agents didn't fill gaps, weren't as creative, and required more explicit prompting
- Every vague instruction replaced with examples, decision trees, or numeric thresholds

---

## [1.2.0] — 2026-04-21

### Added
- 🔄 **Iteration loop is now a core concept** — the 3 kid-facing phases (Imagine → Make → Play) are explicitly a cycle, not linear
- 🔄 **Feedback Loop section** — detailed guidance on handling returning sessions where the kid played and has changes
- 📖 **Game version tracking** — pattern for tracking v1 → v2 → v3 as the game evolves through kid feedback
- 🚀 **Four entry points** — Getting Started now routes to: new project, mid-build continue, feedback session, or new ideas session
- 📝 **Real-world iteration example** — Petra's v1→v3.5 journey documented as a reference

### Changed
- 🏗️ **Project Phases** — rewritten from linear "three phases" to cyclical "creation cycle" with visual diagram
- 🚀 **Getting Started** — expanded from 2 paths to 4 explicit entry points with example greetings
- 🔧 **Internal workflow** — all 7 internal phases now note "(or modifies existing)" for iteration awareness

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
