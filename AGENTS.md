# 🛠️ KidsGames Template — Maintenance Agent Instructions

> **This AGENTS.md is for agents that maintain and improve the KidsGames template.**
> It is NOT the template itself — the template lives in `template/`.

---

## 📋 Project Overview

**KidsGames** is a template project that provides an AI agent system for helping kids (ages 4–7 by default) create video games. The template defines a multi-agent system where:

- A **Game Creator** (main orchestrator agent) works with a child Game Designer
- Specialized **sub-agents** handle game development, art, audio, design, and testing
- The system produces playable, age-appropriate games from a kid's imagination

### Repository Structure

```
KidsGames/
├── AGENTS.md              ← YOU ARE HERE (meta/maintenance instructions)
├── README.md              ← Project overview and usage guide
├── template/              ← THE TEMPLATE (applied to game projects)
│   ├── AGENTS.md          ← Main Game Creator agent system
│   ├── agents/            ← Sub-agent detailed prompts
│   ├── docs/              ← Document templates (GDD, art guide, sound guide)
│   └── config/            ← Configuration templates
├── scripts/               ← Utility scripts (init, validate, etc.)
└── docs/                  ← Contributor documentation
```

---

## 🤖 Your Role: Template Maintainer

When working in this repository (NOT inside `template/`), you are a **Template Maintainer**. Your job is to improve, update, test, and validate the KidsGames template system.

### Responsibilities

1. **Template Quality** — Ensure all agent prompts are clear, complete, and effective
2. **Consistency** — Agent prompts and doc templates should be internally consistent
3. **Testing** — Validate the template works when applied to a real game project
4. **Iteration** — Improve prompts based on real-world usage feedback
5. **Documentation** — Keep README, contributing guide, and this file up to date

### What NOT to Do

- Do NOT modify files in `template/` without understanding the full agent system
- Do NOT add dependencies or external services to the template
- Do NOT change safety rules without explicit approval
- Do NOT make the template engine-specific (it should remain engine-agnostic with recommendations)

---

## 🔧 Maintenance Tasks

### Updating Agent Prompts

When improving a sub-agent prompt (e.g., `template/agents/dream-weaver.md`):

1. Read the main `template/AGENTS.md` to understand the full system
2. Read the specific agent prompt you want to update
3. Make changes that are consistent with:
   - The agent hierarchy and handoff protocol
   - Safety rules defined in `template/AGENTS.md`
   - The kid-facing communication style
4. Update any related doc templates if affected
5. Test by applying the template to a test project (see Testing below)

### Adding New Sub-Agents

If a new specialized agent is needed:

1. Create the agent prompt in `template/agents/[agent-name].md`
2. Add the agent to the Agent Directory table in `template/AGENTS.md`
3. Define handoff protocols (what it receives, what it produces)
4. Update the workflow phases if the new agent changes the flow
5. Test the full system with the new agent

### Testing the Template

To test the template against a real project:

1. Run `scripts/init-game-project.ps1` to initialize a test project
2. Apply the template to a fresh game project directory
3. Verify all files are copied correctly
4. Simulate a game creation session:
   - Does the Game Creator prompt work well?
   - Can sub-agents be invoked with clear handoffs?
   - Do doc templates fill in correctly?
5. Document any issues and fix them

### Test Project

The designated test project lives at: `~/projects/GabrielsGame`

Use this project to validate template changes against a real game creation workflow.

---

## 📏 Quality Standards

### Agent Prompts Must:
- Be clear and actionable (an AI can follow them without ambiguity)
- Include concrete examples, not just abstract principles
- Define explicit input/output formats
- Reference the safety rules from the main AGENTS.md
- Use consistent terminology across all agents
- Be written in English (bilingual support is a runtime behavior, not prompt language)

### Doc Templates Must:
- Have clear placeholder text showing what to fill in
- Be usable for any game genre/style
- Include both kid-facing and agent-facing sections where appropriate
- Use emoji for kid-facing sections

---

## 🔗 Key Files Reference

| File | Purpose |
|------|---------|
| `template/AGENTS.md` | The core agent system definition |
| `template/agents/dream-weaver.md` | Game Design Lead prompt |
| `template/agents/code-wizard.md` | Development Lead prompt |
| `template/agents/art-spark.md` | Art & UI Director prompt |
| `template/agents/sound-maestro.md` | Audio Director prompt |
| `template/agents/fun-guardian.md` | QA & Testing Lead prompt |
| `template/config/game-project.yaml` | Project configuration template |
| `scripts/init-game-project.ps1` | New project initialization script |

---

## 💡 Improvement Ideas

When looking for ways to improve the template, consider:

- [ ] Are agent handoffs smooth? Can we reduce back-and-forth?
- [ ] Should we add more game genre guidance to doc templates?
- [ ] Do we need more engine-specific guidance?
- [ ] Can the age-adaptive communication be more nuanced?
- [ ] Should we add a "Game Portfolio" feature for kids who make multiple games?
- [ ] Can we add accessibility features to the template (colorblind, motor disabilities)?
- [ ] Should we add a parent dashboard/summary feature?

---

📦 **Repository:** [github.com/pedrofuentes/KidsGames](https://github.com/pedrofuentes/KidsGames)

*Last updated: 2026-04-20*
