# Contributing to KidsGames Template

Thank you for helping improve the KidsGames template! This guide explains how to make changes.

## What is This Project?

KidsGames is a template that sets up an AI agent system for helping kids (ages 4-7) create video games. The template lives in the `template/` folder and gets applied to individual game projects.

## How to Contribute

### Improving Agent Prompts

Agent prompts are the heart of the template. Each sub-agent has a detailed prompt in `template/agents/`.

**Before editing a prompt:**
1. Read `template/AGENTS.md` (the main system definition)
2. Read the specific agent prompt you want to change
3. Understand how it connects to other agents (handoff protocol)

**Guidelines for prompt changes:**
- Keep language clear and actionable
- Include concrete examples, not just principles
- Maintain consistency with other agent prompts
- Don't break the handoff protocol between agents
- Test your changes against a real game project

### Updating Document Templates

Document templates in `template/docs/` are fill-in-the-blank documents that agents complete during game creation.

**Guidelines:**
- Use clear placeholder text: `[Description of what goes here]`
- Keep kid-facing sections simple with emoji
- Keep agent-facing sections technically precise
- Don't assume a specific game engine

### Modifying Safety Rules

Safety rules in `template/AGENTS.md` protect kids. Changes to safety rules require extra care:

- **Never weaken** a safety rule without explicit discussion
- **Adding** safety rules is always welcome
- Test safety changes thoroughly
- Consider edge cases

## Testing Changes

### Manual Testing

1. Run the init script to create a test project:
   ```powershell
   .\scripts\init-game-project.ps1 -ProjectPath "path\to\test" -DesignerName "Test" -DesignerAge 5
   ```
2. Open the test project with an AI assistant
3. Simulate a game creation session
4. Verify your changes work correctly

### Test Project

Use `~/projects/GabrielsGame` as the standard test project for validating changes.

## File Reference

| Path | Description | Edit Carefully? |
|------|-------------|----------------|
| `template/AGENTS.md` | Core agent system | ⚠️ Yes — affects everything |
| `template/agents/*.md` | Sub-agent prompts | ⚠️ Yes — check handoffs |
| `template/docs/*.md` | Document templates | Moderate |
| `template/config/game-project.yaml` | Config template | Moderate |
| `scripts/init-game-project.ps1` | Init script | ⚠️ Yes — test thoroughly |
| `AGENTS.md` | Meta/maintenance | Low risk |
| `README.md` | User-facing docs | Low risk |

## Style Guide

- Use emoji headers in kid-facing content: 🎮 🌟 🎨 🎵 🛡️
- Use clear markdown structure with headers, tables, and code blocks
- Agent prompts should be in second person ("You are the...")
- Doc templates should have placeholder text in brackets: `[placeholder]`
- Keep kid-facing language at a kindergarten reading level
- Keep agent-facing language precise and technical
