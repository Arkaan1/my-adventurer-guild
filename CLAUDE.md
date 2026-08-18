# CLAUDE.md — Project Context

## Project Overview

Dark fantasy roguelike dungeon crawler inspired by Darkest Dungeon. Desktop game built with **Godot 4** and **GDScript**. Solo developer, no prior game dev experience. All assets are free/placeholder.

## Game Summary

- Side-scrolling turn-based dungeon crawler with guild management meta-layer.
- Party of 4 adventurers, positions 1-4 (front to back). Enemies also positions 1-4.
- Permadeath. Campaign resets on full wipe.
- 4 elemental dungeons (Ice, Wind, Lightning, Fire) + 1 final dungeon (raw magic).
- 11 classes, 7 abilities each (equip 4 per mission).
- Mission-based progression with progression points (PP) per dungeon.
- Arcane Swelling replaces Darkest Dungeon's light/torch mechanic.
- Difficulty modes: Easy/Normal (no fail state), Hard (Arcane Corruption escalation).

## Documentation

All game design documents are in `/docs/`. **Always read the relevant doc before implementing a feature.**

| File | Content |
|------|---------|
| `game_plan_v2.md` | Master game design document — architecture, systems, campaign structure |
| `class-design.md` | 11 classes: stats, passives, 7 abilities each, synergies |
| `elemental-interactions.md` | Element pair interaction table (minor/major/negative) |
| `positive_quirks_system.md` | ~40-50 positive quirks |
| `negative_quirks_system.md` | ~40-50 negative quirks |
| `afflictions_and_virtues.md` | 12 afflictions (6 mundane, 6 arcane) + 5 virtues |
| `equipment_system.md` | Weapons (6 tiers × 11 classes), armor (6 tiers × 11 classes), 50-60 trinkets |
| `supply-system.md` | 14-18 supply items including 4 elemental consumables |
| `curio-system.md` | Generic + per-dungeon curios (standard, swelling-gated, secret boss) |
| `event_encounters.md` | Narrative encounters (generic + dungeon-specific) |
| `enemiy_roaster.md` | 10-12 enemies per dungeon + compositions |
| `frozen_depths_boss_encounters.md` | 3 semi-bosses, 3 tier bosses, 1 final boss |
| `howling_spire_bosses.md` | 3 semi-bosses, 3 tier bosses, 1 final boss |
| `shattered_conduit_bosses.md` | 3 semi-bosses, 3 tier bosses, 1 final boss |
| `ember_sanctum_boss_encounters.md` | 3 semi-bosses, 3 tier bosses, 1 final boss |
| `arcane_maw_bosses.md` | 3 floor bosses (final dungeon) |

## Architecture Principles

### Data-Driven Design
All game content is defined in data files (JSON or Godot Resource), NOT hardcoded.
- Adding a new class = adding a data file, not writing new code.
- Adding a new enemy = adding a data file.
- Adding a new ability, quirk, trinket, curio, event = data file.
- Tuning numbers (room counts, swelling rates, PP thresholds) = editing `config.json`.

### Event Bus Pattern
Systems communicate via signals through `event_bus.gd` autoload. No direct coupling between systems.
- Combat doesn't know about UI. UI listens to combat events.
- Dungeon doesn't know about guild. Campaign manager bridges them.

### State Machines
Combat flow, dungeon exploration, and guild navigation each use state machines.

### Modular Buildings
Each guild building is a self-contained scene + script. Adding a building = adding a scene + registering it.

### Modular Tier Mechanics
Each dungeon tier hazard is a pluggable script implementing a base interface.

## Project Structure

```
res://
├── scenes/
│   ├── main_menu/
│   ├── guild/                    # Hub + one scene per building
│   ├── dungeon/
│   │   ├── dungeon_map.tscn
│   │   ├── corridor.tscn
│   │   ├── room.tscn
│   │   └── combat/
│   │       ├── combat_scene.tscn
│   │       ├── combat_ui.tscn
│   │       └── combat_log.tscn
│   └── shared/                   # Reusable UI components
├── scripts/
│   ├── autoload/                 # Singletons (game_manager, event_bus, data_manager)
│   ├── combat/                   # combat_manager, ability_executor, element_system, status_effect, swelling_tracker
│   ├── dungeon/                  # dungeon_generator, corridor_manager, encounter_roller, swelling_manager, tier_mechanic
│   ├── guild/                    # guild_manager, roster_manager, mission_board, stress_activity
│   ├── campaign/                 # campaign_manager, difficulty, corruption_clock
│   └── entities/                 # hero, enemy, ability
├── data/                         # JSON/Resource data files
│   ├── classes/
│   ├── enemies/
│   ├── dungeons/
│   ├── abilities/
│   ├── quirks/
│   ├── curios/
│   ├── items/
│   ├── elements/
│   ├── missions/
│   └── config.json
└── assets/
    ├── sprites/
    ├── ui/
    ├── audio/
    └── fonts/
```

## Key Game Systems

### Combat
- Turn-based, speed-based initiative queue (heroes + enemies mixed).
- Abilities are position-gated (usable positions) and target-gated (targetable positions).
- Damage types: Slash, Blunt, Pierce, Fire, Ice, Lightning, Wind, Bleed (DoT), Poison (DoT), Magic.
- Elemental interactions between all element pairs (see `elemental_interactions.md`).
- Death's Door at 0 HP — further damage has kill chance.
- Corpses occupy positions after death.

### Arcane Swelling
- 0-100 gauge replacing Darkest Dungeon's torch/light system.
- Rises per new room explored, per revisited room (less), per combat turn.
- Stages: Calm (0-25), Stirring (26-50), Raging (51-75), Overwhelming (76-100).
- Higher = harder enemies, better loot, special events.
- Reduced by Warding Stones (supply item).
- Resets between dives.

### Stress
- 0-200 per hero.
- At 100: resolve check → 75% affliction / 25% virtue.
- At 200: heart attack (Death's Door or instant death).
- Afflictions: 6 mundane + 6 arcane. Arcane weighted higher at high swelling.
- Virtues: 5 types, temporary buffs.

### Progression
- Per-dungeon progression points (PP). Short mission = 1 PP, Normal = 2 PP, Long = 3 PP.
- PP thresholds unlock semi-bosses (half cap) then tier bosses (full cap).
- 3 tiers per dungeon, each with escalating mechanics.
- Overall PP across all dungeons weights mission pool — high total PP = fewer low-tier missions.

### Dungeons
- 4 elemental + 1 final (Arcane Maw, 3-floor gauntlet requiring 3 separate teams of 4).
- Each elemental dungeon has layered tier mechanics (T1 base, T2 adds mechanic, T3 adds another).
- Dungeon layout: graph of rooms + corridors, primarily branching with occasional loops.

### Guild
- 9 buildings, each modular and upgradeable.
- 2 stress relief buildings (Gilded Den, Enchanted Springs) with 3 activities each.
- Economy is tight — never enough gold.
- Time measured in weeks. Each mission = 1 week.

## Coding Conventions

- **Language:** GDScript only (no C#, no GDExtension).
- **Style:** follow official GDScript style guide (snake_case for variables/functions, PascalCase for classes/nodes).
- **Signals:** prefer signals over direct method calls between systems.
- **Data loading:** JSON files loaded via `data_manager.gd` autoload at startup.
- **No premature optimization.** Get it working, then optimize if needed.
- **Comments:** minimal, explain WHY not WHAT. Code should be self-documenting.
- **Scene structure:** one root node per scene, descriptive node names.

## Config & Tuning

All tunable values go in `data/config.json`, not hardcoded:
- Room counts per mission length (short/normal/long)
- Swelling rates (per room, per revisit, per combat turn)
- PP thresholds per tier
- Mission pool weights based on overall PP
- Stress thresholds
- Death's Door kill chance
- Gold costs for upgrades, supplies, recruitment
- Arcane Corruption escalation rate (hard mode)

## Common Pitfalls

- **Don't hardcode content.** If it's a class, enemy, ability, quirk, item, curio, or event — it goes in data files.
- **Don't couple systems.** Use the event bus. Combat shouldn't import guild scripts.
- **Don't skip Death's Door.** Heroes at 0 HP don't die immediately — they enter Death's Door state.
- **Positions matter.** Every ability has `usable_from_positions` and `target_positions`. Never ignore these.
- **Arcane Swelling is NOT light.** It goes UP (bad), not down. Items REDUCE it, not increase it.
- **Elemental interactions have 3 outcomes** (minor boost, major boost, negative). Always check the interaction table.
- **Corpses occupy positions.** Dead enemies don't just disappear — they block targeting.
