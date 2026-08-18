#!/usr/bin/env bash
set -euo pipefail

# =============================================================================
# DARKHOLD — GitHub Project Setup
# Creates all labels, milestones, and issues for the game project.
# 
# Prerequisites:
#   - gh CLI installed and authenticated (gh auth login)
#   - Run from the repo root
#
# Usage:
#   chmod +x setup_github.sh
#   ./setup_github.sh
# =============================================================================

REPO=$(gh repo view --json nameWithOwner -q '.nameWithOwner')
echo "Setting up project: $REPO"

# =============================================================================
# LABELS
# =============================================================================
echo ""
echo "=== Creating Labels ==="

create_label() {
  local name="$1" color="$2" desc="$3"
  gh label create "$name" --color "$color" --description "$desc" --force 2>/dev/null || true
  echo "  ✓ $name"
}

create_label "core-system"    "1d76db" "Core game systems and architecture"
create_label "combat"         "d93f0b" "Combat system"
create_label "dungeon"        "0e8a16" "Dungeon exploration and generation"
create_label "guild"          "5319e7" "Guild management and buildings"
create_label "content"        "f9d0c4" "Game content (enemies, bosses, classes, items)"
create_label "ui"             "c2e0c6" "User interface"
create_label "data"           "bfdadc" "Data files and configuration"
create_label "audio"          "d4c5f9" "Audio and music"
create_label "polish"         "fef2c0" "Polish, QoL, and visual improvements"
create_label "infrastructure" "c5def5" "Project setup, CI, tools"
create_label "learning"       "e4e669" "Learning and tutorials"
create_label "balance"        "fbca04" "Balance tuning and playtesting"
create_label "stress-system"  "b60205" "Stress, afflictions, and virtues"
create_label "progression"    "006b75" "Campaign progression, PP, tier unlocks"
create_label "save-load"      "0075ca" "Save and load system"

# =============================================================================
# MILESTONES
# =============================================================================
echo ""
echo "=== Creating Milestones ==="

create_milestone() {
  local title="$1" desc="$2"
  gh api repos/{owner}/{repo}/milestones \
    --method POST \
    -f title="$title" \
    -f description="$desc" \
    -f state="open" \
    2>/dev/null || true
  echo "  ✓ $title"
}

create_milestone "Phase 0 — Learn Godot" \
  "Get comfortable with Godot 4 before writing game code. Complete tutorials, build a throwaway prototype."

create_milestone "Phase 1 — Combat Prototype" \
  "Playable turn-based combat with placeholder art. Position system, damage types, abilities, Death's Door, status effects."

create_milestone "Phase 2 — Dungeon Exploration" \
  "Procedurally generated dungeon navigation. Corridors, rooms, encounters, Arcane Swelling, supplies, retreat."

create_milestone "Phase 3 — Guild Hub" \
  "Between-mission management loop. All buildings, mission board, roster, economy, save/load. Full gameplay loop connected."

create_milestone "Phase 4 — Stress & Afflictions" \
  "Stress system, resolve checks, 12 afflictions (6 mundane, 6 arcane), 5 virtues, quirk system, heart attacks."

create_milestone "Phase 5 — Content: Frozen Depths" \
  "First complete dungeon. All 11 classes finalized, Frozen Depths enemies, tier mechanics, bosses, curios, events."

create_milestone "Phase 6a — Content: Ember Sanctum" \
  "Second dungeon. Heat Gauge, Ember Marks, Molten Core. Enemies, bosses, curios, events."

create_milestone "Phase 6b — Content: Howling Spire" \
  "Third dungeon. Gale, Wind Walls, Tempest Rage. Enemies, bosses, curios, events."

create_milestone "Phase 6c — Content: Shattered Conduit" \
  "Fourth dungeon. Surge Rounds, Overload, Conductive Chains. Enemies, bosses, curios, events."

create_milestone "Phase 6d — Content: Arcane Maw" \
  "Final dungeon. 3-floor gauntlet. Spell Warp, Mana Bleed, Echoes. 3 floor bosses. Campaign victory state."

create_milestone "Phase 7 — Hard Mode & Polish" \
  "Arcane Corruption (hard mode), tutorial, balance, UI polish, audio, settings, Steam build."

# =============================================================================
# HELPER: Create issue
# =============================================================================

create_issue() {
  local title="$1" body="$2" labels="$3" milestone="$4"
  gh issue create \
    --title "$title" \
    --body "$body" \
    --label "$labels" \
    --milestone "$milestone" \
    2>/dev/null
  echo "  ✓ $title"
}

# =============================================================================
# PHASE 0 — Learn Godot
# =============================================================================
echo ""
echo "=== Phase 0 — Learn Godot ==="

create_issue \
  "Complete Godot 'Your First 2D Game' tutorial" \
  "Follow the official Godot tutorial: https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html

Goals:
- Understand scenes, nodes, and the scene tree
- Learn GDScript basics
- Understand signals
- Learn input handling
- Build and run a simple game" \
  "learning" \
  "Phase 0 — Learn Godot"

create_issue \
  "Build a throwaway prototype: scene switching, buttons, sprites" \
  "Create a small prototype (NOT the game) to practice:
- Create multiple scenes
- Switch between scenes via buttons
- Move a sprite with input
- Display and update UI text (labels, counters)
- Use signals between nodes

This is disposable — just for learning." \
  "learning" \
  "Phase 0 — Learn Godot"

create_issue \
  "Learn Resource files and JSON data loading in Godot 4" \
  "The game is data-driven. Learn how to:
- Create and load JSON files in GDScript
- Create custom Resource types
- Load resources at runtime via \`load()\` and \`preload()\`
- Parse JSON with \`JSON.parse_string()\`
- Structure data files for game content

Build a small test: load a JSON file with character stats and display them in a Label." \
  "learning" \
  "Phase 0 — Learn Godot"

create_issue \
  "Set up project structure and autoloads" \
  "Create the Godot 4 project with the full directory structure defined in CLAUDE.md.

Create empty autoload scripts:
- \`scripts/autoload/game_manager.gd\` — campaign state, save/load
- \`scripts/autoload/event_bus.gd\` — global signals
- \`scripts/autoload/data_manager.gd\` — load data resources

Register them in Project Settings > Autoload.

Create placeholder directories:
- \`scenes/\`, \`scripts/\`, \`data/\`, \`assets/\` and all subdirectories as per CLAUDE.md.

See: \`docs/game_plan_v2.md\` section 8 for full structure." \
  "infrastructure" \
  "Phase 0 — Learn Godot"

# =============================================================================
# PHASE 1 — Combat Prototype
# =============================================================================
echo ""
echo "=== Phase 1 — Combat Prototype ==="

create_issue \
  "Create combat scene with position display (4 hero slots + 4 enemy slots)" \
  "Create \`scenes/dungeon/combat/combat_scene.tscn\`.

Visual layout:
- Left side: 4 hero slots (positions 1-4, front to back)
- Right side: 4 enemy slots (positions 1-4, front to back)
- Use placeholder colored rectangles for now

Each slot should:
- Display a sprite/placeholder
- Show position number
- Be a node that can hold a Hero or Enemy entity

See: \`docs/game_plan_v2.md\` section 3.4 for combat layout." \
  "combat,ui" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement event_bus.gd with combat signals" \
  "Define all combat-related signals in the event bus autoload:

Signals needed:
- \`combat_started\`
- \`turn_started(entity)\`
- \`turn_ended(entity)\`
- \`ability_used(source, target, ability)\`
- \`damage_dealt(source, target, amount, type)\`
- \`healing_done(source, target, amount)\`
- \`entity_died(entity)\`
- \`combat_ended(result)\` # result: victory/defeat/retreat
- \`status_effect_applied(target, effect)\`
- \`status_effect_removed(target, effect)\`
- \`position_changed(entity, old_pos, new_pos)\`
- \`deaths_door_entered(entity)\`
- \`deaths_door_blown(entity)\`

More signals will be added in later phases. Keep the file extensible." \
  "core-system,combat" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement data_manager.gd — load JSON data files" \
  "Implement the data manager autoload that loads all JSON data at startup.

Requirements:
- Load all JSON files from \`data/\` subdirectories
- Provide getter functions: \`get_class_data(class_id)\`, \`get_enemy_data(enemy_id)\`, \`get_ability_data(ability_id)\`, etc.
- Handle missing files gracefully (warning, not crash)
- Support hot-reloading in debug mode (for balance tuning)

Start with loaders for:
- \`data/classes/\` — class definitions
- \`data/enemies/\` — enemy stat blocks
- \`data/abilities/\` — ability definitions
- \`data/config.json\` — tuning values

See: \`CLAUDE.md\` architecture section for data-driven design principles." \
  "core-system,data" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Create base Hero and Enemy entity scripts" \
  "Create \`scripts/entities/hero.gd\` and \`scripts/entities/enemy.gd\`.

Both should extend a shared base (or use composition):

Shared properties:
- \`entity_name: String\`
- \`current_hp: int\`, \`max_hp: int\`
- \`stress: int\` (0-200, hero only for now)
- \`dodge: int\`, \`speed: int\`, \`accuracy: int\`, \`crit: float\`
- \`damage_min: int\`, \`damage_max: int\`
- \`position: int\` (1-4)
- \`resistances: Dictionary\` (per damage type)
- \`status_effects: Array\`
- \`is_alive: bool\`, \`is_on_deaths_door: bool\`
- \`is_corpse: bool\`

Hero-specific:
- \`class_id: String\`
- \`level: int\` (1-6)
- \`equipped_abilities: Array\` (4 max)
- \`quirks_positive: Array\`, \`quirks_negative: Array\`
- \`equipment: Dictionary\` (weapon, armor, trinket1, trinket2)

Enemy-specific:
- \`enemy_id: String\`
- \`ai_type: String\`

Initialize from data files via \`data_manager\`.

See: \`docs/game_plan_v2.md\` section 5 for hero stats, \`docs/classes.md\` for class data." \
  "core-system,combat" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement turn order / initiative system" \
  "Create \`scripts/combat/combat_manager.gd\`.

Turn order logic:
1. At combat start, collect all heroes + enemies
2. Sort by Speed stat (highest first). Ties broken randomly.
3. Process turns one by one: emit \`turn_started\`, wait for action, emit \`turn_ended\`
4. When all entities have acted, start a new round (re-sort speeds for buff/debuff changes)
5. Skip dead entities and stunned entities (clear stun after skip)
6. Check combat end conditions after each action:
   - All enemies dead (excluding corpses) → victory
   - All heroes dead → defeat

The combat manager drives the combat loop but does NOT handle UI or input — those listen via event bus.

See: \`docs/game_plan_v2.md\` section 3.4." \
  "combat,core-system" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement ability system: selection, targeting, and resolution" \
  "Create \`scripts/combat/ability_executor.gd\`.

Ability flow:
1. On a hero's turn, present their 4 equipped abilities
2. Player selects an ability
3. Validate: is hero in a valid \`usable_from_positions\`?
4. Show valid targets based on ability's \`target_positions\` and \`target_type\` (single enemy, single ally, self, all enemies, all allies, AoE positions)
5. Player selects target(s)
6. Resolve ability:
   - Roll accuracy vs target dodge
   - Calculate damage (base damage ± range, apply damage type modifiers)
   - Roll crit chance
   - Apply special effects (status effects, forced movement, healing)
   - Emit signals for each result

Ability data structure (from JSON):
\`\`\`json
{
  \"id\": \"knight_shield_bash\",
  \"name\": \"Shield Bash\",
  \"usable_from\": [1, 2],
  \"target_type\": \"single_enemy\",
  \"target_positions\": [1, 2],
  \"damage_type\": \"blunt\",
  \"damage_min\": 5,
  \"damage_max\": 8,
  \"accuracy_mod\": 0,
  \"crit_mod\": 0,
  \"effects\": [{\"type\": \"stun\", \"chance\": 0.4}],
  \"cooldown\": 0,
  \"self_effects\": []
}
\`\`\`

See: \`docs/classes.md\` for all ability definitions." \
  "combat,core-system" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement damage calculation system" \
  "In \`ability_executor.gd\` or a new \`scripts/combat/damage_calculator.gd\`:

Damage formula:
1. Roll base damage: \`rand_range(damage_min, damage_max)\`
2. Apply weapon bonus
3. Apply damage buffs/debuffs on source
4. Check hit: \`source.accuracy + ability.accuracy_mod\` vs \`target.dodge\` → miss if roll fails
5. Apply target's resistance for the damage type
6. Check crit: \`source.crit + ability.crit_mod\` → if crit, multiply damage by 1.5x
7. Apply damage buffs/debuffs on target (e.g., Mark = +25% damage taken)
8. Final damage applied to target HP

Death's Door logic:
- If target HP drops to 0 or below, set HP to 0 and enter Death's Door state
- If already on Death's Door, roll death blow: base 33% chance, increases with each subsequent hit
- If death blow succeeds: entity dies, becomes corpse

See: \`docs/game_plan_v2.md\` section 3.4." \
  "combat" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement damage type system" \
  "Ensure all damage types are properly defined and resistances work.

Damage types enum:
- Physical: SLASH, BLUNT, PIERCE
- Elemental: FIRE, ICE, LIGHTNING, WIND
- Other: BLEED, POISON, MAGIC

Each entity has a \`resistances\` dictionary:
\`\`\`
{\"slash\": 0, \"blunt\": 0, \"pierce\": 0, \"fire\": 0, \"ice\": 0, \"lightning\": 0, \"wind\": 0, \"bleed\": 0.3, \"poison\": 0.2, \"magic\": 0}
\`\`\`

Resistance = % damage reduction (0.3 = 30% less damage taken from that type).
Negative resistance = vulnerability.

Apply resistance during damage calculation step.

See: \`docs/game_plan_v2.md\` section 3.4 and \`docs/elemental_interactions.md\`." \
  "combat,core-system" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement elemental interaction system" \
  "Create \`scripts/combat/element_system.gd\`.

When elemental damage is applied to a target that already has an elemental status (burning, frozen, shocked, windswept), check the interaction table.

Logic:
1. Track active elemental statuses on each entity
2. When new elemental damage is applied, check if target has a different element active
3. Look up the pair in the interaction table (\`data/elements/interactions.json\`)
4. Determine which interaction triggers (minor, major, or negative) based on conditions defined in the table
5. Apply the interaction effect
6. Emit signal for UI feedback

Interaction table structure:
\`\`\`json
{
  \"fire_ice\": {
    \"minor\": {\"trigger\": \"...\", \"effect\": \"...\"},
    \"major\": {\"trigger\": \"...\", \"effect\": \"...\"},
    \"negative\": {\"trigger\": \"...\", \"effect\": \"...\"}
  }
}
\`\`\`

Supply-triggered interactions use a 0.5 effectiveness multiplier.

See: \`docs/elemental_interactions.md\` for the full interaction table." \
  "combat,core-system" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement position system and forced movement" \
  "Position logic in combat:

Rules:
- Heroes occupy positions 1-4 (1 = front, 4 = back). Enemies same.
- Each position holds at most 1 living entity (corpses also occupy).
- Abilities have \`usable_from\`: array of positions where the hero must stand to use it.
- Abilities have \`target_positions\`: array of enemy positions this ability can hit.

Forced movement:
- Push: move target toward back (+1 position). If position occupied, swap.
- Pull: move target toward front (-1 position). If position occupied, swap.
- Some abilities push/pull by 2 positions.
- Cannot push past position 4 or pull past position 1.
- When an entity moves, their available abilities change (position-gated).

When an entity dies and becomes a corpse:
- Corpse stays in its position
- Other entities cannot move through corpses normally
- Corpses can be cleared by certain abilities or after a few turns

Emit \`position_changed\` signal on every movement." \
  "combat,core-system" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement HP system: damage, healing, and Death's Door" \
  "HP management:

- \`current_hp\` clamped between 0 and \`max_hp\`
- When \`current_hp\` reaches 0:
  - First time: enter Death's Door. Set \`is_on_deaths_door = true\`. Emit signal.
  - Subsequent damage while on Death's Door: roll death blow check
  - Death blow base chance: 33%. Increases by +16.5% per additional hit on Death's Door.
  - If death blow succeeds: entity dies. \`is_alive = false\`, \`is_corpse = true\`.
- Healing while on Death's Door: restore HP, exit Death's Door state
- Healing cannot exceed max_hp

Visual feedback needed (handled by UI layer):
- Death's Door should have a clear visual indicator
- HP bar behavior at 0

See: \`docs/game_plan_v2.md\` section 3.4." \
  "combat" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Create test data files: 2 classes (Knight + Pyromancer) with 4 abilities each" \
  "Create JSON data files for initial testing:

\`data/classes/knight.json\`:
- Stats from \`docs/classes.md\`
- Select 4 of the 7 abilities as starting equipped set
- Full ability definitions in \`data/abilities/knight_*.json\`

\`data/classes/pyromancer.json\`:
- Stats from \`docs/classes.md\`
- Select 4 abilities
- Full ability definitions in \`data/abilities/pyromancer_*.json\`

These are the two test classes for Phase 1. They cover melee frontline + ranged magic backline, which tests positioning well.

See: \`docs/classes.md\` for complete class specs." \
  "data,content" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Create test data files: 3 test enemies with basic stats" \
  "Create 3 test enemy JSON files for Phase 1 combat testing:

1. A frontline melee enemy (position 1-2, physical attacks)
2. A backline ranged enemy (position 3-4, ranged/magic attacks)
3. A support/healer enemy (position 3-4, can heal allies)

Each needs:
- Base stats (HP, speed, dodge, accuracy, damage)
- 2-3 abilities with position/targeting rules
- Resistances
- AI behavior hints (target priority, ability usage rules)

Keep them simple — just enough to test combat mechanics. Real enemies come in Phase 5.

See: \`docs/enemies.md\` for enemy design reference (use simplified versions for testing)." \
  "data,content" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement basic enemy AI" \
  "Create \`scripts/combat/enemy_ai.gd\`.

Basic AI decision tree for enemy turns:
1. Check available abilities (position-gated, cooldowns)
2. For each valid ability, score potential targets:
   - Prefer low-HP heroes (finish kills)
   - Prefer heroes on Death's Door
   - Healers prioritize healing damaged allies
   - Support enemies prioritize buffing
3. Select highest-scored ability + target pair
4. Execute via ability_executor

AI types (data-driven, defined per enemy):
- \`aggressive\`: always picks highest damage option
- \`support\`: prioritizes heals and buffs, only attacks if no allies need help
- \`focus_weak\`: always targets lowest HP hero
- \`random\`: random valid ability and target (for unpredictable enemies)

Keep it simple for Phase 1. More sophisticated AI comes with dungeon content." \
  "combat,core-system" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement combat UI: HP bars, turn order, ability buttons" \
  "Create \`scenes/dungeon/combat/combat_ui.tscn\`.

UI elements:
- **Hero panels** (bottom): for each hero show name, HP bar, stress bar placeholder, status icons
- **Enemy panels** (top): for each enemy show name, HP bar, status icons
- **Turn order bar**: horizontal display showing upcoming turn order (portraits/icons)
- **Ability bar** (bottom center): 4 ability buttons shown on hero's turn, disabled when not that hero's turn
- **Target selection**: highlight valid targets when an ability is selected
- **Damage numbers**: floating numbers on hit/heal (damage in red, heal in green, miss in gray)
- **Death's Door indicator**: skull icon or red border on heroes at 0 HP

Connect everything via event bus signals — UI listens, never calls combat directly.

Use placeholder art (colored shapes, basic fonts)." \
  "ui,combat" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement combat end detection and results" \
  "In \`combat_manager.gd\`:

Victory conditions:
- All enemies dead (corpses don't count as alive) → emit \`combat_ended('victory')\`
- Show loot results (placeholder: random gold amount)

Defeat conditions:
- All heroes dead → emit \`combat_ended('defeat')\`
- Show defeat screen

Retreat:
- Add retreat button to combat UI
- Retreat = escape combat. All heroes take stress damage (placeholder: +15 stress each)
- Emit \`combat_ended('retreat')\`

After combat ends:
- Apply post-combat effects (DoTs tick one final time? Or stop?)
- Transition back to dungeon exploration (Phase 2) or show results (Phase 1 standalone)

For Phase 1, just show a results popup and offer to restart combat." \
  "combat" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement status effects: stun, bleed, poison, mark, guard, stealth" \
  "Create \`scripts/combat/status_effect.gd\`.

Status effect framework:
- Each effect has: type, duration (turns), potency, source
- Effects are processed at specific timing points (start of turn, end of turn, on hit, etc.)

Implement these for Phase 1:

**Stun**: skip next turn, removed after skip. Only 1 stun at a time. Stun resist check on application.

**Bleed (DoT)**: deals X physical damage at start of afflicted entity's turn. Duration in turns. Stacks (multiple bleeds tick independently). Cured by Hemlock Salve.

**Poison (DoT)**: deals X poison damage at start of turn. Duration in turns. Stacks. Cured by Antitoxin Vial.

**Mark**: target takes +25% damage from all sources. Duration in turns. Visual indicator needed.

**Guard**: redirects attacks aimed at an adjacent ally to the guarding entity. Lasts until start of guardian's next turn or until guard is broken (guard entity stunned/moved).

**Stealth**: entity cannot be directly targeted. AoE abilities still hit. Broken by taking damage or using an offensive ability.

Emit signals for all applications/removals." \
  "combat,core-system" \
  "Phase 1 — Combat Prototype"

create_issue \
  "Implement combat log" \
  "Create \`scenes/dungeon/combat/combat_log.tscn\`.

A scrollable text feed showing combat events:
- '[Hero] uses [Ability] on [Target]'
- '[Target] takes [X] [type] damage'
- '[Target] dodges the attack!'
- 'Critical hit!'
- '[Target] enters Death's Door!'
- '[Target] has been slain!'
- '[Target] is stunned!'
- '[Source] applies [Status] to [Target]'
- '[Target] takes [X] bleed damage'

Listen to event bus signals and format messages.
Show latest messages at the bottom, scrollable up for history.
Color code: damage in red, healing in green, status in yellow, death in dark red.

Keep it simple — this is a debugging/information tool." \
  "ui,combat" \
  "Phase 1 — Combat Prototype"

# =============================================================================
# PHASE 2 — Dungeon Exploration
# =============================================================================
echo ""
echo "=== Phase 2 — Dungeon Exploration ==="

create_issue \
  "Implement dungeon generator: room graph with corridors" \
  "Create \`scripts/dungeon/dungeon_generator.gd\`.

Generate a dungeon layout as a graph:
- Input: mission length (short/normal/long) → determines max rooms from \`config.json\`
- Output: a graph of Room nodes connected by Corridor edges

Generation algorithm:
1. Start with entrance room
2. Branch outward, creating rooms connected by corridors
3. Allow occasional loops (connect existing rooms ~15-20% chance per branch)
4. Place special rooms: 1 boss room (if boss mission), rest rooms (1 per 4-5 rooms), shop room (0-1), treasure rooms
5. Fill remaining with combat rooms, events, and empty rooms (weighted random)
6. Dead-end rooms get +loot chance flag

Data structure:
\`\`\`
Room: {id, type, position_on_map, encounters, is_explored, connections[]}
Corridor: {room_a_id, room_b_id, encounters[], is_traversed}
\`\`\`

Room count by mission length defined in \`data/config.json\` — easily adjustable.

See: \`docs/game_plan_v2.md\` section 3.1." \
  "dungeon,core-system" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Create dungeon map UI with fog of war" \
  "Create \`scenes/dungeon/dungeon_map.tscn\`.

Visual map showing:
- Rooms as icons/nodes (different icon per room type)
- Corridors as lines connecting rooms
- Current party position highlighted
- Explored rooms shown clearly, unexplored rooms hidden (fog of war)
- Adjacent rooms to explored rooms shown as \`?\` (scoutable)
- Clickable rooms to select where to move next

Room type icons (placeholder shapes):
- Combat: sword icon / red square
- Rest: campfire / green square
- Shop: coin / yellow square
- Treasure: chest / gold square
- Event: \`!\` / purple square
- Boss: skull / large red square
- Empty: gray square
- Unknown: \`?\`

The map should be zoomable/pannable for larger dungeons.

See: \`docs/game_plan_v2.md\` section 3.1." \
  "dungeon,ui" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement corridor traversal: side-scroll movement" \
  "Create \`scenes/dungeon/corridor.tscn\`.

When the party moves between rooms, they traverse a corridor in a side-scrolling view:
- Party moves left to right through the corridor
- Corridor has segments — each segment may contain an encounter
- Encounters trigger as the party reaches them (not random, pre-rolled during generation)
- Party can move forward or backward in the corridor
- Movement is simple: click to advance to next segment

Corridor length: 1-4 segments based on dungeon tier and room distance.

When an encounter triggers:
- Enemy: transition to combat scene
- Trap: show trap result UI
- Curio: show curio interaction UI
- Loot: show loot pickup UI
- Nothing: continue walking

See: \`docs/game_plan_v2.md\` section 3.2." \
  "dungeon" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement encounter roller: generate corridor and room encounters" \
  "Create \`scripts/dungeon/encounter_roller.gd\`.

For each corridor segment, roll what encounter appears:
- Enemy ambush: 30% (weighted by swelling stage)
- Trap: 15%
- Curio: 15%
- Loot: 10%
- Nothing: 25%
- Secret: 5% (hidden, requires scouting to find)

Weights should be adjustable per dungeon type and tier (data-driven from \`data/dungeons/\`).

Arcane Swelling modifiers:
- Calm: fewer enemies, more nothing
- Stirring: baseline
- Raging: more enemies, more curios
- Overwhelming: most enemies, rare curios appear

For rooms: room type determines the encounter (already set by dungeon generator).

See: \`docs/game_plan_v2.md\` sections 3.2 and 3.5." \
  "dungeon,core-system" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement corridor encounters: traps" \
  "Trap encounter logic:

When a trap triggers:
1. Roll trap type from dungeon-specific trap table
2. Check if Rogue is in party → can attempt disarm (accuracy check)
3. Check if party has Enchanted Tools → can bypass some traps
4. If not disarmed: apply trap effects to random hero(es)

Trap effects (placeholder set for Phase 2):
- Spike trap: physical damage to hero in position 1
- Poison dart: poison DoT to random hero
- Arcane rune: magic damage + stress to all heroes
- Collapse: blunt damage to hero in positions 1-2, may shuffle positions

Show trap UI: what happened, damage dealt, option to use supply item.

See: \`docs/game_plan_v2.md\` section 3.2." \
  "dungeon" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement corridor encounters: curio interaction" \
  "Curio interaction system:

When a curio is encountered:
1. Show curio name, visual description, and options:
   - Interact (no item)
   - Use [supply item] (show available items that might work)
   - Ignore
2. If interact without item: roll outcome from curio's outcome table (positive/neutral/negative weights)
3. If use correct item: guaranteed/improved positive outcome
4. If use wrong item: worse outcome than bare interaction
5. If ignore: nothing happens, move on

Curio data structure:
\`\`\`json
{
  \"id\": \"ancient_chest\",
  \"name\": \"Ancient Chest\",
  \"outcomes_no_item\": {
    \"positive\": {\"weight\": 40, \"effects\": [...]},
    \"neutral\": {\"weight\": 30, \"effects\": [...]},
    \"negative\": {\"weight\": 30, \"effects\": [...]}
  },
  \"correct_item\": \"runestone_key\",
  \"correct_item_outcome\": {...},
  \"wrong_items\": [\"binding_rope\"],
  \"wrong_item_outcome\": {...}
}
\`\`\`

Use placeholder curios for Phase 2. Real curios from \`docs/curios.md\` in Phase 5+.

See: \`docs/curios.md\` for curio design." \
  "dungeon,core-system" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement room types: combat, rest, treasure, empty" \
  "Room type logic when party enters a room:

**Combat room:**
- Generate enemy group from dungeon's enemy pool (placeholder enemies for Phase 2)
- Transition to combat scene
- On victory: mark room as cleared, show loot

**Rest room:**
- Show rest menu: each hero picks ONE action:
  - Eat rations: heal HP (requires rations supply)
  - Relax: reduce stress (placeholder: -15 stress)
  - Sharpen weapon: +10% damage buff for next combat
  - Keep watch: +5% ambush prevention for next corridor
- Only one action per hero per rest room

**Treasure room:**
- May be trapped (30% chance → trigger trap logic)
- If not trapped or trap cleared: roll loot (gold + chance of trinket)

**Empty room:**
- Nothing happens. Brief flavor text. Tension builder.
- Small chance of hidden curio (10%)

See: \`docs/game_plan_v2.md\` section 3.3." \
  "dungeon" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement Arcane Swelling system" \
  "Create \`scripts/dungeon/swelling_manager.gd\`.

Arcane Swelling gauge: 0-100, tracked per dive.

Rising triggers:
- Enter new room: +X (from \`config.json\`, default ~5-8)
- Re-enter a room: +Y (lower, default ~2-3)
- Each combat turn: +Z (default ~1-2)

Stages:
- Calm: 0-25
- Stirring: 26-50
- Raging: 51-75
- Overwhelming: 76-100

Effects per stage (applied globally during the dive):
- Enemy stat multipliers (damage, HP, accuracy)
- Loot quality multiplier
- Ambush chance modifier
- Stress damage modifier
- Special event access flags

Reduction:
- Warding Stones supply: reduce swelling by a fixed amount (default ~15-20)
- Certain class abilities (defined per class in data)

Resets to 0 between dives.

Add swelling tracker for combat: \`scripts/combat/swelling_tracker.gd\` — increments swelling per combat turn and emits signal.

See: \`docs/game_plan_v2.md\` section 3.5." \
  "dungeon,core-system" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement swelling effects on enemies and loot" \
  "Connect swelling_manager to combat and loot systems:

**Enemy scaling by swelling stage:**
- Calm: baseline (1.0x)
- Stirring: 1.1x HP, 1.05x damage, +5 accuracy
- Raging: 1.25x HP, 1.15x damage, +10 accuracy, +5% crit
- Overwhelming: 1.5x HP, 1.3x damage, +15 accuracy, +10% crit

**Loot scaling:**
- Calm: baseline gold, baseline trinket chance
- Stirring: 1.1x gold, 1.1x trinket chance
- Raging: 1.3x gold, 1.5x trinket chance, uncommon+ trinkets possible
- Overwhelming: 1.5x gold, 2.0x trinket chance, rare trinkets possible

**Ambush chance:**
- Calm: 10% per corridor segment
- Stirring: 15%
- Raging: 25%
- Overwhelming: 40%

All multipliers should be in \`config.json\` for easy tuning.

See: \`docs/game_plan_v2.md\` section 3.5." \
  "dungeon,balance" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement inventory and supply system" \
  "Create a supply/inventory system for dungeon runs.

Before a mission:
- Player purchases supplies at the Supply Shop
- Supplies are added to the mission inventory
- Inventory has limited slots (configurable, default ~12-16)
- Each supply type has a stack limit (e.g., rations: 6/slot, keys: 2/slot)

During a mission:
- Supplies can be used from inventory (context-dependent):
  - Warding Stones: usable anytime to reduce swelling
  - Rations: usable at rest rooms or on hunger checks
  - Elemental flasks: usable in combat as an action
  - Hemlock Salve / Antitoxin: usable in combat or from inventory
  - Keys, rope, tools: used automatically when interacting with relevant curios/obstacles
- Track remaining quantities
- Loot picked up goes into remaining inventory slots

Starvation mechanic:
- Hunger check triggers every N rooms (configurable)
- If party has rations: consume 1, minor heal
- If no rations: all heroes take damage + stress

See: \`docs/supplies.md\` for full supply list and \`docs/game_plan_v2.md\` section 3.6." \
  "dungeon,core-system" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement retreat mechanic" \
  "Retreat from dungeon:

From dungeon map:
- Player can click 'Retreat' button at any time outside of combat
- Retreat = abandon the mission immediately
- Keep all loot collected so far
- All heroes take stress damage (+20 stress each, configurable)
- No PP earned for the dungeon

From combat:
- Retreat button during combat (already in combat end ticket)
- Flee combat: each hero rolls escape chance (base 60%, modified by speed)
- Failed escape: hero takes a free hit from a random enemy
- Successful escape: return to dungeon map, corridor encounter remains (can re-enter)
- If all 4 heroes escape: combat ends, no loot

Retreating should feel like a real cost — stress damage and lost PP — but sometimes it's the smart choice.

See: \`docs/game_plan_v2.md\` section 3.4." \
  "dungeon" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Implement mission results screen" \
  "After a dungeon run (completed, retreated, or wiped), show results:

**Victory:**
- Loot summary (gold, trinkets, supplies found)
- XP earned per hero
- PP earned for the dungeon
- Heroes killed (if any — permadeath, they're gone)
- Quirks gained/lost during the run
- Swelling stage reached (for flavor)

**Retreat:**
- Partial loot kept
- Stress gained from retreat
- No PP earned
- Same death/quirk tracking

**Wipe (all heroes dead):**
- All loot lost
- All 4 heroes permanently dead
- No PP earned
- Show memorial/death screen

Transition back to guild hub after results.

See: \`docs/game_plan_v2.md\` section 2." \
  "dungeon,ui" \
  "Phase 2 — Dungeon Exploration"

create_issue \
  "Connect combat ↔ dungeon flow" \
  "Wire up the full dungeon exploration loop:

1. Player selects room/corridor on dungeon map
2. If corridor: load corridor scene, traverse segments, trigger encounters
3. If encounter is combat: transition to combat scene with the generated enemy group
4. Combat result feeds back:
   - Victory: return to corridor/map, hero HP/stress persisted, loot added to inventory
   - Defeat: mission failed, go to results screen
   - Retreat: return to corridor/map, stress penalty applied
5. If room: load room encounter, resolve, return to map
6. Boss room cleared: mission complete, go to results screen
7. All rooms optional except boss room (if boss mission)

State that persists during a dive:
- Hero HP, stress, status effects, equipped abilities
- Inventory contents
- Arcane Swelling level
- Map exploration state (which rooms/corridors visited)
- Loot collected

Use \`game_manager.gd\` to hold dive state." \
  "dungeon,core-system" \
  "Phase 2 — Dungeon Exploration"

# =============================================================================
# PHASE 3 — Guild Hub
# =============================================================================
echo ""
echo "=== Phase 3 — Guild Hub ==="

create_issue \
  "Create guild hub scene: visual building layout" \
  "Create \`scenes/guild/guild_hub.tscn\`.

The guild hub is the between-mission home screen:
- Visual representation of buildings (placeholder rectangles with labels)
- Clickable buildings → open building UI
- Display persistent info: current week, gold, active roster count
- Navigation to: mission board, roster, settings

Buildings to show (each clickable):
1. The Gilded Den
2. The Enchanted Springs
3. Infirmary
4. Blacksmith
5. Guild Hall
6. Recruitment Board
7. Supply Shop
8. Training Grounds
9. Vault

Start with simple layout. Polish comes in Phase 7.

See: \`docs/game_plan_v2.md\` section 7." \
  "guild,ui" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement campaign state: week counter, gold, roster, PP tracking" \
  "Create \`scripts/campaign/campaign_manager.gd\`.

Campaign state tracks:
- \`current_week: int\` (starts at 1, +1 per mission or rest week)
- \`gold: int\` (starting gold from config)
- \`roster: Array[Hero]\` (all adventurers alive)
- \`pp_per_dungeon: Dictionary\` (e.g., {\"frozen_depths\": 0, \"howling_spire\": 0, ...})
- \`total_pp: int\` (sum of all dungeon PP)
- \`tier_unlocked_per_dungeon: Dictionary\` (current tier per dungeon, 1-3)
- \`bosses_defeated: Dictionary\` (track semi-boss and boss status per dungeon per tier)
- \`difficulty: String\` (easy/normal/hard)
- \`arcane_maw_unlocked: bool\` (true when all 4 final bosses dead)

Provide methods:
- \`add_pp(dungeon_id, amount)\`
- \`check_unlock(dungeon_id)\` → returns if semi-boss or boss should unlock
- \`is_campaign_won()\` → all final bosses + arcane maw cleared
- \`is_campaign_lost()\` → no heroes alive and can't afford recruitment
- \`advance_week()\`

See: \`docs/game_plan_v2.md\` sections 2.2-2.4." \
  "progression,core-system" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement mission board: PP-weighted mission generation" \
  "Create \`scripts/guild/mission_board.gd\`.

Each week, generate 3-4 available missions:

Per mission:
- \`dungeon_id\`: which dungeon
- \`tier\`: 1-3 (gated by dungeon's PP unlock status)
- \`length\`: short/normal/long (affects rooms and PP earned)
- \`type\`: normal / semi-boss / tier-boss / final-boss
- \`pp_reward\`: 1/2/3 based on length

Generation rules:
1. Only offer tiers the player has unlocked per dungeon
2. Semi-boss mission appears when dungeon PP reaches half threshold
3. Tier boss mission appears when dungeon PP reaches full threshold
4. Final boss appears when all 3 tier bosses for that dungeon are beaten
5. Arcane Maw appears when all 4 final bosses beaten

**Overall PP weighting:**
- Calculate total PP across all dungeons
- Use total PP to weight tier distribution:
  - Low total PP: mostly Tier 1 missions
  - Mid total PP: mix of Tier 1-2, Tier 1 becoming less common
  - High total PP: mostly Tier 2-3, Tier 1 very rare
- Exact weighting curve in \`config.json\`

The key tension: at high total PP, training new recruits on easy Tier 1 missions is almost impossible.

See: \`docs/game_plan_v2.md\` section 2.3." \
  "progression,guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement recruitment board" \
  "Create \`scenes/guild/recruitment_board.tscn\`.

Recruitment board offers new adventurers to hire:
- Show 3-4 available recruits (refreshes each week)
- Each recruit has:
  - Random class (from the 11 classes)
  - Level 1 (upgradeable with Training Grounds)
  - Random positive quirks (0-2)
  - Random negative quirks (0-1)
  - Base equipment (Tier 0)
  - Name (random from a name list)
- Hiring costs gold (amount from config, scales with campaign progression)

Upgrades to recruitment board (building upgrades):
- Level 2: recruits can be level 1-2
- Level 3: recruits can be level 1-3, 4 recruits shown
- Level 4: recruits can be level 1-4, 5 recruits shown

See: \`docs/game_plan_v2.md\` section 7.1." \
  "guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement roster screen: view adventurers, stats, quirks, equipment" \
  "Create a roster screen accessible from guild hub.

For each adventurer show:
- Name, class, level, portrait placeholder
- Stats: HP, Stress, Dodge, Speed, Accuracy, Crit, Damage
- Quirks: positive (green) and negative (red) lists
- Equipment: weapon, armor, trinket 1, trinket 2
- Status: available / in stress relief / in infirmary / in training
- XP bar toward next level

Allow:
- Equip/unequip trinkets
- View ability details (all 7 abilities, highlight equipped 4)
- Change equipped abilities (select 4 of 7)
- Dismiss adventurer (with confirmation)

See: \`docs/game_plan_v2.md\` section 5." \
  "guild,ui" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement party selection and supply loadout screen" \
  "Before a mission, the player must:

1. **Select 4 heroes** from available roster (not in stress relief/infirmary/training)
   - Show hero cards with class, level, HP, stress, key stats
   - Validate: can't send hero to a tier below their level restriction
   - Drag-and-drop or click to assign to positions 1-4

2. **Buy and equip supplies**
   - Show Supply Shop inventory with prices
   - Show available inventory slots
   - Buy supplies, they go into mission inventory
   - Can also equip already-owned supplies from stash

3. **Confirm and depart**
   - Show summary: party, supplies, mission details, estimated difficulty
   - Confirm → start dungeon dive
   - Gold is spent on supplies at this point

See: \`docs/game_plan_v2.md\` sections 3.6 and 7." \
  "guild,ui" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement The Gilded Den: 3 stress relief activities" \
  "Create \`scenes/guild/gilded_den.tscn\`.

The Gilded Den — a rowdy fantasy den of vices. 3 activities:

**Dragon Ale Drinking** (low stress relief):
- Cost: small gold
- Hero unavailable for 1 week
- Stress reduction: 20-30
- Risk: 10% chance of 'Drunkard' quirk, 5% chance of losing extra gold
- Reward: 5% chance of 'Tough Stomach' quirk (+poison resist)

**Dice with Sprites** (medium stress relief):
- Cost: moderate gold (bet)
- Hero unavailable for 1 week
- Stress reduction: 30-45
- Risk: 20% lose bet (gold gone), 8% 'Gambler' quirk
- Reward: 25% win bet (double gold), 5% 'Lucky' quirk (+crit)

**Pit Fighting** (high stress relief):
- Cost: entry fee
- Hero unavailable for 1 week
- Stress reduction: 45-60
- Risk: hero takes HP damage, 15% injury debuff next mission, 8% 'Aggressive' quirk
- Reward: 20% win gold prize, 10% 'Battle Hardened' quirk (+stress resist)

All values should come from data files for easy tuning.

See: \`docs/game_plan_v2.md\` section 7.2." \
  "guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement The Enchanted Springs: 3 stress relief activities" \
  "Create \`scenes/guild/enchanted_springs.tscn\`.

The Enchanted Springs — magical hot springs. 3 activities:

**Shallow Pool** (low stress relief):
- Cost: small gold
- Hero unavailable for 1 week
- Stress reduction: 20-30
- Risk: 8% elemental sensitivity (random element, +damage taken next mission)
- Reward: 10% cleanse a minor negative quirk

**Deep Basin** (medium stress relief):
- Cost: moderate gold
- Hero unavailable for 1 week
- Stress reduction: 30-45
- Risk: 10% 'Haunted' quirk (stress at high swelling), 8% speed debuff next mission
- Reward: 8% 'Arcane Attunement' quirk (+magic resist), 5% dungeon secret hint

**The Abyssal Font** (high stress relief):
- Cost: high gold
- Hero unavailable for 1 week
- Stress reduction: 45-60
- Risk: 12% 'Addicted to the Springs' quirk (stress if not sent back), 5% temporary stat drain
- Reward: 8% 'Deepwater Vision' quirk (reveal hidden curios/secrets next mission)

All values from data files.

See: \`docs/game_plan_v2.md\` section 7.3." \
  "guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement Infirmary: treat quirks and diseases" \
  "Create \`scenes/guild/infirmary.tscn\`.

Infirmary functions:
- Remove a negative quirk from a hero
- Cost: gold (based on quirk severity + building level discount)
- Hero unavailable for 1 week
- Only one treatment per hero per week

Lock positive quirks:
- Pay gold to lock a positive quirk (prevents it from being randomly replaced)
- Cost scales with building level

Building upgrades:
- Level 1: 1 treatment slot, base cost
- Level 2: 2 slots, 10% discount
- Level 3: 3 slots, 20% discount, can treat severe quirks
- Level 4: 4 slots, 30% discount, faster treatment (optional: same-week return)

See: \`docs/game_plan_v2.md\` section 7.1." \
  "guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement Blacksmith: weapon and armor upgrades" \
  "Create \`scenes/guild/blacksmith.tscn\`.

Blacksmith upgrades hero equipment:
- Select a hero → see current weapon and armor tier
- Upgrade to next tier: costs gold (from \`docs/equipment.md\` pricing)
- Each tier gives stat increases defined in equipment data
- Can only upgrade one tier at a time (no skipping)

Building level gates maximum upgrade tier:
- Blacksmith Level 1: can upgrade to equipment tier 2
- Blacksmith Level 2: can upgrade to tier 3
- Blacksmith Level 3: can upgrade to tier 4
- Blacksmith Level 4: can upgrade to tier 5
- Blacksmith Level 5: can upgrade to tier 6 (max)

UI: show current equipment, cost of next upgrade, stat preview.

See: \`docs/equipment.md\` for all weapon/armor tiers and costs." \
  "guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement Guild Hall: ability upgrades" \
  "Create \`scenes/guild/guild_hall.tscn\`.

Guild Hall upgrades hero abilities:
- Select a hero → see all 7 abilities
- Each ability can be upgraded (improved damage, better effects, etc.)
- Upgrade cost: gold (scales with ability level)
- Building level gates max ability upgrade tier

Building levels:
- Level 1: ability tier 2
- Level 2: ability tier 3
- Level 3: ability tier 4
- Level 4: ability tier 5

UI: show ability list, current tier, upgrade cost, stat comparison.

See: \`docs/classes.md\` for ability details." \
  "guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement Supply Shop" \
  "Create \`scenes/guild/supply_shop.tscn\`.

Supply Shop sells dungeon supplies:
- Display all available supply types with prices and descriptions
- Player buys supplies which go into a stash
- Supplies are loaded into mission inventory during party selection
- Stock is unlimited (buy as many as you can afford)

Building upgrades affect prices:
- Level 1: base prices
- Level 2: 10% discount
- Level 3: 20% discount, unlock elemental supplies
- Level 4: 30% discount

Prices and supply list from \`docs/supplies.md\`.

See: \`docs/supplies.md\` for full supply details." \
  "guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement Training Grounds and Vault" \
  "**Training Grounds** (\`scenes/guild/training_grounds.tscn\`):
- Assign heroes to train (not available for missions)
- Passive XP gain per week (small amount, configurable)
- Building level: more training slots, faster XP gain
- Level 1: 1 slot, base XP
- Level 2: 2 slots, 1.25x XP
- Level 3: 3 slots, 1.5x XP

**Vault** (\`scenes/guild/vault.tscn\`):
- Display current gold
- Gold is safe in vault between missions
- Building level: gold earns interest per week
- Level 1: no interest
- Level 2: 1% per week
- Level 3: 2% per week
- Level 4: 3% per week, higher capacity

See: \`docs/game_plan_v2.md\` section 7.1." \
  "guild" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement building upgrade system" \
  "Generic building upgrade system:

Each building has:
- Current level (1-4 or 1-5)
- Upgrade cost per level (gold, from config)
- Unlock requirements (e.g., must have completed X missions total, or reach week Y)
- Effects per level (defined per building in data files)

Upgrade UI:
- Show current level, effects, next level cost, and next level effects
- Confirm upgrade → spend gold → apply improvements
- Some upgrades may require beating certain tier bosses (progression-gated)

Building data structure:
\`\`\`json
{
  \"id\": \"blacksmith\",
  \"max_level\": 5,
  \"levels\": [
    {\"cost\": 0, \"effects\": {...}},
    {\"cost\": 1000, \"effects\": {...}, \"requires\": {\"total_pp\": 5}},
    ...
  ]
}
\`\`\`

See: \`docs/game_plan_v2.md\` section 7.1." \
  "guild,core-system" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement save/load system" \
  "Save/Load the full campaign state to disk.

Save data includes:
- Campaign state (week, gold, difficulty, PP, tier unlocks, boss defeats)
- Full roster (all heroes with stats, quirks, equipment, XP, level)
- Building levels
- Mission board state
- Heroes currently in stress relief / infirmary / training (and weeks remaining)

Implementation:
- Save to JSON file in user data directory (\`user://save/\`)
- Auto-save after each mission completes
- Manual save from guild hub menu
- Load from main menu
- Support multiple save slots (3)
- Validate save data on load (handle corruption gracefully)

Use Godot's \`FileAccess\` API.

See: \`CLAUDE.md\` architecture section." \
  "save-load,core-system" \
  "Phase 3 — Guild Hub"

create_issue \
  "Implement difficulty selection and fail state detection" \
  "**Difficulty selection** (on new campaign):
- Easy: no fail state, relaxed economy (more gold from missions)
- Normal: no fail state, standard economy
- Hard: Arcane Corruption enabled (Phase 7), standard economy

Store in \`campaign_manager.difficulty\`.

**Fail state detection** (checked each week):
- Count alive heroes in roster
- Count gold
- If no heroes alive AND gold < minimum recruitment cost → campaign over
- On Easy/Normal: warn but allow continuing with emergency gold injection or free recruit (TBD)
- On Hard: campaign over screen → return to main menu

See: \`docs/game_plan_v2.md\` section 2.4." \
  "progression,core-system" \
  "Phase 3 — Guild Hub"

create_issue \
  "Connect full gameplay loop: guild → dungeon → results → guild" \
  "Wire up the complete game flow:

1. Main Menu → New Campaign / Load Campaign
2. Guild Hub: manage heroes, buildings, shop
3. Mission Board: select mission
4. Party Select: choose 4 heroes + supplies
5. Dungeon Dive: explore corridors/rooms, fight, collect loot
6. Mission End: results screen (victory/retreat/wipe)
7. Apply results:
   - Add loot/gold to guild
   - Add PP to dungeon
   - Apply XP to heroes
   - Remove dead heroes from roster
   - Apply gained quirks
   - Advance week counter
   - Process stress relief / infirmary / training (reduce remaining weeks)
   - Refresh mission board
   - Check fail/win state
8. Return to Guild Hub (step 2)

This is the core loop. Every system built so far must work together.

Test the full loop with placeholder content — 2 classes, 3 test enemies, 1 dungeon type." \
  "core-system" \
  "Phase 3 — Guild Hub"

# =============================================================================
# PHASE 4 — Stress & Afflictions
# =============================================================================
echo ""
echo "=== Phase 4 — Stress & Afflictions ==="

create_issue \
  "Implement stress stat: tracking, UI, and damage sources" \
  "Add stress as a full gameplay system:

Stress stat:
- Range 0-200 per hero
- Displayed as a bar under HP bar on combat UI and roster screen
- Color changes: green (0-50), yellow (51-99), red (100+)

Stress damage sources (all configurable in data):
- Enemy attacks with stress damage component
- Traps that deal stress
- High arcane swelling ambient stress (Raging: +2/room, Overwhelming: +5/room)
- Walking in high swelling corridors
- Ally dying (all remaining heroes +25 stress)
- Ally entering Death's Door (+15 stress to party)
- Starvation (+20 stress)
- Failed trap disarm (+10 stress)
- Negative curio outcomes (+10-20 stress)

Stress healing sources:
- Rest room action (-15 to -25 stress)
- Certain class abilities (Cleric stress heal)
- Guild stress relief activities (between missions)
- Virtue effects (passive party stress reduction)

See: \`docs/game_plan_v2.md\` section 5.1 and \`docs/afflictions_virtues.md\`." \
  "stress-system" \
  "Phase 4 — Stress & Afflictions"

create_issue \
  "Implement resolve check at 100 stress" \
  "When a hero reaches 100 stress, trigger a resolve check:

1. Pause combat (or exploration)
2. Show dramatic UI moment (screen flash, hero portrait focus)
3. Roll: 75% affliction, 25% virtue
4. If in high swelling (51+) or magic-heavy dungeon: arcane affliction weighted higher
5. Select specific affliction/virtue from the pool
6. Apply stat modifiers and register behavior overrides
7. Show result to player with bark text
8. Resume gameplay

Rules:
- Only one affliction/virtue active at a time per hero
- Affliction persists until stress drops below 50 or mission ends
- If already afflicted and stress hits 100 again: nothing new happens (already suffering)
- If stress hits 200: heart attack (separate ticket)

See: \`docs/afflictions_virtues.md\` for full affliction/virtue details." \
  "stress-system,combat" \
  "Phase 4 — Stress & Afflictions"

create_issue \
  "Implement 6 mundane afflictions with forced behaviors" \
  "Implement all 6 mundane afflictions from \`docs/afflictions_virtues.md\`:

1. **Craven** — cowardice, may refuse to act or flee
2. **Wrathful** — blind rage, random attacks, may hit allies
3. **Despairing** — hopelessness, passes turns, refuses healing
4. **Paranoid** — refuses buffs/heals, may attack allies
5. **Unhinged** — random actions and targets
6. **Cruel** — mocks allies for stress damage, targets weakest

For each affliction:
- Apply stat modifiers (from doc)
- Register forced behavior chance (~25% per turn)
- Implement each possible forced action
- Add stress radiation to party (afflicted hero stresses allies each turn)
- Add bark text display when forced behavior triggers
- Track in hero data for save/load

Forced behaviors override player input on that hero's turn.

See: \`docs/afflictions_virtues.md\` for exact stats, behaviors, and barks." \
  "stress-system,combat,content" \
  "Phase 4 — Stress & Afflictions"

create_issue \
  "Implement 6 arcane afflictions with forced behaviors" \
  "Implement all 6 arcane afflictions from \`docs/afflictions_virtues.md\`:

7. **Arcane-Touched** — random elemental damage to self/party
8. **Void-Stricken** — blanks out (loses turns), resists movement
9. **Elemental Hysteria** — abilities randomly change damage type
10. **Mana-Drunk** — compulsively uses abilities, can't pass/guard
11. **Cursed Sight** — attacks empty positions, occasional scouting bonus
12. **Hollow** — immune to stress healing AND further stress damage

Arcane affliction weighting:
- Base chance when resolving at 100 stress: 30% arcane / 70% mundane
- At Raging swelling (51-75): 50% / 50%
- At Overwhelming swelling (76-100): 70% arcane / 30% mundane
- In Arcane Maw dungeon: 80% arcane / 20% mundane

Note: Hollow is unique — it's a 'numb' state. No further stress damage but no recovery either. Handle as a special case.

Note: Cursed Sight has a trade-off (scouting bonus). Track this for curio/secret interactions.

See: \`docs/afflictions_virtues.md\` for exact stats, behaviors, and barks." \
  "stress-system,combat,content" \
  "Phase 4 — Stress & Afflictions"

create_issue \
  "Implement 5 virtues with positive behaviors" \
  "Implement all 5 virtues from \`docs/afflictions_virtues.md\`:

1. **Stalwart** — defensive buffs, may guard allies
2. **Courageous** — offensive buffs, may inspire party (stress heal)
3. **Focused** — accuracy/crit buffs, may take extra action
4. **Vigorous** — HP/healing buffs, may self-heal
5. **Powerful** — damage buffs, may deal bonus damage

For each virtue:
- Apply stat modifiers (from doc)
- Register positive behavior chance (~20% per turn)
- Implement bonus actions
- Add stress healing to party (virtuous hero calms allies each turn)
- Add bark text display
- Track in hero data

Virtues are temporary — removed when stress drops below 50.
Virtues feel earned: the UI moment should feel rewarding (different visual/audio from affliction).

See: \`docs/afflictions_virtues.md\`." \
  "stress-system,combat,content" \
  "Phase 4 — Stress & Afflictions"

create_issue \
  "Implement heart attack at 200 stress" \
  "When a hero reaches 200 stress:

1. Trigger heart attack immediately
2. Hero is forced to Death's Door (HP set to 0 if not already)
3. If already on Death's Door: roll death blow (higher base chance: 50%)
4. Show dramatic UI (screen shake, dark overlay, bark text)
5. Stress stays at 200 (doesn't go higher)
6. If hero survives: they remain afflicted and on Death's Door

Heart attack is the ultimate stress consequence — it can kill even a full-HP hero instantly by putting them on Death's Door.

The cascade: one afflicted hero → stresses others → they get afflicted → stress radiates faster → someone hits 200 → heart attack → party panic.

See: \`docs/game_plan_v2.md\` section 5.1." \
  "stress-system,combat" \
  "Phase 4 — Stress & Afflictions"

create_issue \
  "Implement quirk system: gain and lose quirks during gameplay" \
  "Full quirk management system:

Quirk gain sources:
- Dungeon events (specific events grant specific quirks)
- Curio interactions (positive or negative curios may grant quirks)
- Guild activities (Gilded Den and Enchanted Springs risks/rewards)
- Affliction resolution (after mission, afflicted heroes may keep a related negative quirk)
- Boss kills (chance of rare positive quirk)
- Leveling up (small chance of positive quirk)

Quirk rules:
- Max 5 positive, max 5 negative per hero
- If at max and gaining a new one: random unlocked quirk of that type is replaced
- Locked quirks cannot be replaced
- Negative quirks removed at Infirmary (costs gold + 1 week)
- Positive quirks locked at Infirmary (costs gold)

Data: load quirks from \`docs/positive_quirks.md\` and \`docs/negative_quirks.md\`.
Create \`data/quirks/positive.json\` and \`data/quirks/negative.json\`.

Each quirk needs:
- ID, name, description
- Category
- Stat modifiers
- Rarity (common/uncommon/rare)
- Forced behavior (for compulsive negative quirks like Kleptomaniac)
- Source hints (for generation weighting)

See: \`docs/positive_quirks.md\` and \`docs/negative_quirks.md\`." \
  "stress-system,content,core-system" \
  "Phase 4 — Stress & Afflictions"

create_issue \
  "Implement stress UI: hero portraits, visual indicators, bark display" \
  "Visual stress feedback:

**Hero portraits:**
- Normal (0-50): standard portrait
- Stressed (51-99): portrait slightly darkened, stress bar yellow
- Afflicted (100+): portrait with affliction icon overlay, red tint, stress bar red
- Virtuous: portrait with golden glow, virtue icon

**Bark display:**
- When affliction/virtue triggers a forced behavior, show a speech bubble near the hero
- Bark text from affliction/virtue data
- Auto-dismiss after 2-3 seconds
- Queue barks if multiple trigger same turn

**Stress radiation visual:**
- When an afflicted hero stresses the party, show small stress icons floating from them to allies
- Brief screen pulse on heart attack

**Affliction/virtue overlay:**
- Icon on hero portrait in combat UI, roster screen, and party selection
- Tooltip with affliction name and effects on hover

See: \`docs/afflictions_virtues.md\` for bark text." \
  "stress-system,ui" \
  "Phase 4 — Stress & Afflictions"

# =============================================================================
# PHASE 5 — Content Pass 1: The Frozen Depths
# =============================================================================
echo ""
echo "=== Phase 5 — Content: Frozen Depths ==="

create_issue \
  "Create data files for all 11 classes (stats, abilities, passives)" \
  "Convert \`docs/classes.md\` into JSON data files.

For each of the 11 classes, create:
- \`data/classes/{class_id}.json\` — base stats, passive, stat growth per level
- \`data/abilities/{class_id}_{ability_name}.json\` — all 7 abilities per class

Classes: Knight, Berserker, Duelist, Ranger, Rogue, Pyromancer, Stormcaller, Cryomancer, Alchemist, Cleric, Necromancer.

Total: 11 class files + 77 ability files.

Ensure all damage types, position requirements, and special effects match the doc exactly.
Include the secondary elemental damage types added to several classes (Knight has Ice, Berserker has Fire, etc.).

See: \`docs/classes.md\` for all specs." \
  "content,data" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Implement all 11 class abilities in the ability executor" \
  "Ensure the ability execution system supports ALL ability types across 11 classes:

Ability types needed:
- Direct damage (single target, multi-target, AoE)
- Healing (single, AoE)
- Stress healing
- DoT application (bleed, poison, burn)
- Status effects (stun, mark, guard, stealth)
- Buffs/debuffs (accuracy, dodge, speed, damage, crit, resist)
- Forced movement (push, pull, self-move)
- Summoning (Necromancer — create entity from corpse)
- Self-damage abilities (Berserker rage)
- Riposte (Duelist — counter on being attacked)
- Stealth (Rogue — enter stealth)
- Guard (Knight — redirect attacks)
- Elemental status application (burn, freeze, shock, windswept)
- Multi-hit abilities
- Cooldown abilities

Test each class's 7 abilities individually. Many will need new ability effect handlers.

See: \`docs/classes.md\`." \
  "combat,content" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Balance pass: class stats and ability numbers" \
  "With all 11 classes and 77 abilities implemented, run balance tests:

Test compositions:
- All-physical party (Knight, Berserker, Duelist, Ranger)
- All-magic party (Pyromancer, Stormcaller, Cryomancer, Necromancer)
- Balanced party (Knight, Berserker, Cleric, Pyromancer)
- Support-heavy (Knight, Alchemist, Cleric, Ranger)
- Glass cannon (Berserker, Duelist, Rogue, Stormcaller)

Check for:
- Any ability that is always-pick or never-pick in the 4-of-7 selection
- Any class that is clearly too strong or too weak
- Healing vs damage balance (can Cleric outheal all damage?)
- Stress healing availability (is it too easy to manage stress?)
- Position conflicts (can common party comps fill all 4 positions naturally?)
- Elemental interaction accessibility (can most parties trigger combos?)

Adjust numbers in data files. Document changes.

See: \`docs/classes.md\` for design intent per class." \
  "balance" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Create Frozen Depths enemy data files (10-12 enemies)" \
  "Convert enemy designs from \`docs/enemies.md\` (Frozen Depths section) into JSON data.

For each enemy create \`data/enemies/frozen_depths/{enemy_id}.json\`:
- Base stats (HP, speed, dodge, accuracy, damage)
- Abilities (2-4 per enemy)
- Resistances (especially ice immune/resist, fire vulnerable)
- AI type
- Position preference
- Tier availability (all tiers / T2+ / T3+ only)
- Corpse behavior
- Dungeon mechanic interaction (frostbite, permafrost armor, frozen blood)

Also create \`data/enemies/frozen_depths/compositions.json\`:
- 5-6 enemy group templates
- Which enemies in which positions
- Tier availability per composition

See: \`docs/enemies.md\` Frozen Depths section." \
  "content,data" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Implement Frozen Depths enemy AI behaviors" \
  "Extend enemy AI for Frozen Depths-specific behaviors:

- Enemies that apply frostbite stacks
- Enemies that have/apply Permafrost Armor
- Enemies that exploit Frozen Blood (use bleed to freeze heroes)
- Support enemies that reapply ice shields to allies
- Enemies that interact with frozen heroes (shatter attacks)
- Stress-focused enemies unique to this dungeon

Ensure AI uses dungeon mechanics appropriately based on current tier.

See: \`docs/enemies.md\` Frozen Depths section." \
  "combat,content" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Implement Frostbite Gauge (Tier 1 mechanic)" \
  "Create \`scripts/dungeon/tier_mechanics/frostbite.gd\`.

Frostbite Gauge:
- Accumulates passively during Frozen Depths dives
- Rises per room/corridor explored (configurable rate)
- At thresholds, heroes suffer:
  - Light frostbite: -speed debuff
  - Moderate frostbite: -speed, -dodge debuff
  - Severe frostbite: -speed, -dodge, heroes can be 'shattered' by heavy hits (bonus damage)
- Reduced by fire abilities, campfire rests, or specific supplies
- Displayed as a UI gauge alongside Arcane Swelling

Must implement as a pluggable tier mechanic using the base interface.

See: \`docs/game_plan_v2.md\` section 6.1." \
  "dungeon,content" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Implement Permafrost Armor (Tier 2 mechanic)" \
  "Extend frostbite tier mechanic for Tier 2:

Permafrost Armor:
- Certain enemies (and the dungeon itself) apply ice shields to enemies
- Ice shield = bonus HP layer that must be broken before real HP takes damage
- Fire damage breaks shields fast (2x effective)
- Physical damage breaks shields slow (0.5x effective)
- Other elemental damage breaks at 1x
- Shield has its own HP value (varies per enemy)
- Visual: blue/white overlay on shielded enemies
- Some enemies can reapply shields to allies mid-combat

Active alongside Frostbite Gauge from T1.

See: \`docs/game_plan_v2.md\` section 6.1." \
  "dungeon,combat,content" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Implement Frozen Blood (Tier 3 mechanic)" \
  "Extend tier mechanics for Tier 3:

Frozen Blood:
- All healing effects are halved (hero heals, potions, rest rooms — everything)
- Bleed effects on heroes behave differently: instead of dealing damage, bleed FREEZES the hero (1-turn stun-like effect)
- This makes bleed attacks from enemies effectively stun attacks
- Bleed-focused party strategies become risky (Berserker/Duelist bleed can be reflected by certain enemies)
- Visual indicator: bleeding heroes have frost effects instead of blood drops

Active alongside Frostbite + Permafrost Armor. All 3 tier mechanics stack.

See: \`docs/game_plan_v2.md\` section 6.1." \
  "dungeon,combat,content" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Create Frozen Depths bosses: 3 semi-bosses, 3 tier bosses, 1 final boss" \
  "Convert boss designs from \`docs/bosses_frozen_depths.md\` into data and implementation.

For each boss:
- Create \`data/enemies/frozen_depths/boss_{boss_id}.json\` with full stats, abilities, phases
- Implement boss-specific AI (phase transitions, signature mechanics)
- Implement unique abilities not used by regular enemies
- Create boss arena setup (adds, positioning)

Total: 7 boss encounters.
- T1 semi-boss + T1 boss
- T2 semi-boss + T2 boss
- T3 semi-boss + T3 boss
- Final boss (multi-phase)

Final boss must interact with all 3 tier mechanics.
Each boss must have guaranteed loot defined.

See: \`docs/bosses_frozen_depths.md\` for complete boss specifications." \
  "combat,content" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Create Frozen Depths curios (standard + swelling-gated + secret boss)" \
  "Convert curio designs from \`docs/curios.md\` (Frozen Depths section) into data.

Create \`data/curios/frozen_depths/\` with:
- 4-6 standard curios (always available)
- 2 swelling-gated curios (1 at Raging, 1 at Overwhelming)
- 1 secret boss curio (10-15% spawn chance, cryptic activation)

Each curio needs:
- Outcome tables (positive/neutral/negative with weights)
- Correct supply item and improved outcome
- Wrong supply item and worse outcome
- Class-specific interactions (if any)
- Swelling-dependent outcome changes

Implement secret boss curio activation logic and the secret boss encounter.

See: \`docs/curios.md\` Frozen Depths section." \
  "content,data,dungeon" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Create Frozen Depths dungeon-specific trinkets" \
  "Create trinket data for items found specifically in the Frozen Depths:

From \`docs/equipment.md\` trinket section, extract all dungeon-specific trinkets for Frozen Depths.

Create \`data/items/trinkets/frozen_depths/\` with one JSON file per trinket:
- Name, rarity, bonus, drawback
- Source (which enemy/boss/curio drops it)
- Any class requirement

Include the legendary trinket(s) from the final boss drop table.

See: \`docs/equipment.md\` trinket section." \
  "content,data" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Create generic events (12-15) and Frozen Depths events (4-5)" \
  "Convert event designs from \`docs/events.md\` into data.

Create \`data/events/generic/\` with 12-15 event JSON files.
Create \`data/events/frozen_depths/\` with 4-5 event JSON files.

Each event needs:
- Narrative text
- 2-4 choices with requirements and outcomes
- Probabilistic outcomes with weights
- Class-specific bonus options (if any)
- Stat-dependent modifiers (if any)

Implement event UI:
- Scene that displays narrative text
- Choice buttons with requirement indicators
- Outcome display with effects

See: \`docs/events.md\`." \
  "content,data,dungeon" \
  "Phase 5 — Content: Frozen Depths"

create_issue \
  "Full balance pass: Frozen Depths campaign playthrough" \
  "Play through a complete campaign focusing on Frozen Depths:

Test:
- T1 missions: are they completable with level 1-2 heroes? Not too easy, not too hard?
- T1 semi-boss + boss: are they appropriate challenges for their unlock timing?
- T2 missions with Permafrost Armor: does fire vs physical feel meaningful?
- T2 bosses: difficulty jump from T1 appropriate?
- T3 with Frozen Blood: does healing halved make it genuinely harder?
- T3 bosses: are they the hardest non-final content?
- Final boss: does it feel like a culmination of all 3 mechanics?
- Frostbite accumulation rate: too fast? Too slow?
- Curio outcomes: do correct supply items feel rewarding?
- Event choices: do they feel meaningful?
- Loot quality: is trinket drop rate satisfying?
- Economy: can the player afford supplies + upgrades + stress relief?

Document all balance adjustments in data files.

See: all Frozen Depths docs." \
  "balance" \
  "Phase 5 — Content: Frozen Depths"

# =============================================================================
# PHASE 6a — Content: Ember Sanctum
# =============================================================================
echo ""
echo "=== Phase 6a — Content: Ember Sanctum ==="

create_issue \
  "Create Ember Sanctum enemy data files (10-12 enemies)" \
  "Convert enemy designs from \`docs/enemies.md\` (Ember Sanctum section) into JSON data files.

Create \`data/enemies/ember_sanctum/\` with all enemies and compositions.

Enemies should deal fire damage, apply ember marks, and interact with Heat Gauge / Molten Core mechanics.

See: \`docs/enemies.md\` Ember Sanctum section." \
  "content,data" \
  "Phase 6a — Content: Ember Sanctum"

create_issue \
  "Implement Heat Gauge (Tier 1), Ember Marks (Tier 2), Molten Core (Tier 3)" \
  "Create \`scripts/dungeon/tier_mechanics/heat.gd\`.

**Heat Gauge (T1):** party takes escalating stress and minor fire damage over time. Counter increments per room and combat turn. Efficiency is rewarded — faster clears = less heat.

**Ember Marks (T2):** fire enemies brand heroes on fire attacks. Branded heroes take +X% fire damage from all sources. Stacks. Only cleansable at rest rooms (consume rations or specific supply).

**Molten Core (T3):** certain melee enemies (flagged in data) explode on death. Explosion deals debuffs or fire damage to their adjacent allies (enemy positions). Changes kill order strategy — you may want to kill isolated enemies first.

All 3 tier mechanics layer on top of each other.

See: \`docs/game_plan_v2.md\` section 6.4." \
  "dungeon,combat,content" \
  "Phase 6a — Content: Ember Sanctum"

create_issue \
  "Create Ember Sanctum bosses: 3 semi-bosses, 3 tier bosses, 1 final boss" \
  "Convert boss designs from \`docs/bosses_ember_sanctum.md\` into data and implementation.

7 boss encounters total. Final boss is multi-phase and interacts with all 3 tier mechanics.

See: \`docs/bosses_ember_sanctum.md\`." \
  "combat,content" \
  "Phase 6a — Content: Ember Sanctum"

create_issue \
  "Create Ember Sanctum curios (standard + swelling-gated + secret boss)" \
  "From \`docs/curios.md\` (Ember Sanctum section): 4-6 standard + 2 swelling-gated + 1 secret boss curio.

Create data files and implement secret boss encounter.

See: \`docs/curios.md\` Ember Sanctum section." \
  "content,data,dungeon" \
  "Phase 6a — Content: Ember Sanctum"

create_issue \
  "Create Ember Sanctum events (4-5) and trinkets" \
  "From \`docs/events.md\` (Ember Sanctum section): create 4-5 dungeon-specific events.
From \`docs/equipment.md\` trinket section: create dungeon-specific trinkets.

See: \`docs/events.md\` and \`docs/equipment.md\`." \
  "content,data" \
  "Phase 6a — Content: Ember Sanctum"

create_issue \
  "Balance pass: Ember Sanctum campaign playthrough" \
  "Full playthrough testing Ember Sanctum content. Test all tiers, bosses, tier mechanics, curios, events, loot. Document adjustments." \
  "balance" \
  "Phase 6a — Content: Ember Sanctum"

# =============================================================================
# PHASE 6b — Content: Howling Spire
# =============================================================================
echo ""
echo "=== Phase 6b — Content: Howling Spire ==="

create_issue \
  "Create Howling Spire enemy data files (10-12 enemies)" \
  "Convert enemy designs from \`docs/enemies.md\` (Howling Spire section) into JSON data.

Enemies deal wind damage, force repositioning, interact with Gale/Wind Walls/Tempest Rage.

See: \`docs/enemies.md\` Howling Spire section." \
  "content,data" \
  "Phase 6b — Content: Howling Spire"

create_issue \
  "Implement Gale (Tier 1), Wind Walls (Tier 2), Tempest Rage (Tier 3)" \
  "Create \`scripts/dungeon/tier_mechanics/wind.gd\`.

**Gale (T1):** random position shifts each combat round. Heroes may be moved 1 position. Resistance check to avoid. Corridor resistance checks for damage.

**Wind Walls (T2):** each combat round, 1-2 positions are blocked by wind barriers. Abilities cannot target through barriers. Barriers shift position each turn.

**Tempest Rage (T3):** ranged attacks get accuracy penalty (-15%). Wind-element attacks get +25% damage. Melee attacks unaffected. Favors physical melee comps.

See: \`docs/game_plan_v2.md\` section 6.2." \
  "dungeon,combat,content" \
  "Phase 6b — Content: Howling Spire"

create_issue \
  "Create Howling Spire bosses: 3 semi-bosses, 3 tier bosses, 1 final boss" \
  "From \`docs/bosses_howling_spire.md\`: 7 boss encounters. Implement all.

See: \`docs/bosses_howling_spire.md\`." \
  "combat,content" \
  "Phase 6b — Content: Howling Spire"

create_issue \
  "Create Howling Spire curios, events, and trinkets" \
  "From docs: curios (\`docs/curios.md\`), events (\`docs/events.md\`), trinkets (\`docs/equipment.md\`).

Create all Howling Spire-specific content data files." \
  "content,data" \
  "Phase 6b — Content: Howling Spire"

create_issue \
  "Balance pass: Howling Spire campaign playthrough" \
  "Full playthrough testing Howling Spire content. Test all tiers, bosses, mechanics, curios, events. Document adjustments." \
  "balance" \
  "Phase 6b — Content: Howling Spire"

# =============================================================================
# PHASE 6c — Content: Shattered Conduit
# =============================================================================
echo ""
echo "=== Phase 6c — Content: Shattered Conduit ==="

create_issue \
  "Create Shattered Conduit enemy data files (10-12 enemies)" \
  "Convert enemy designs from \`docs/enemies.md\` (Shattered Conduit section) into JSON data.

Enemies deal lightning damage, trigger surges, cause overload, apply conductive chains.

See: \`docs/enemies.md\` Shattered Conduit section." \
  "content,data" \
  "Phase 6c — Content: Shattered Conduit"

create_issue \
  "Implement Surge Rounds (Tier 1), Overload (Tier 2), Conductive Chains (Tier 3)" \
  "Create \`scripts/dungeon/tier_mechanics/lightning.gd\`.

**Surge Rounds (T1):** every X turns (configurable, default 3-4), the conduit pulses. 1-2 random positions are struck. Visual indicator one turn before. Enemies are immune. Heroes in struck positions take lightning damage.

**Overload (T2):** track magic ability usage per round. If >N magic abilities used in a round (across heroes), trigger discharge: all heroes take lightning damage. Forces mixing physical and magic.

**Conductive Chains (T3):** certain enemy attacks apply a tether between 2 heroes. Tethered heroes share 50% of damage taken by either. Tether can be cleansed by certain abilities or supplies. Boss can chain all 4 heroes.

See: \`docs/game_plan_v2.md\` section 6.3." \
  "dungeon,combat,content" \
  "Phase 6c — Content: Shattered Conduit"

create_issue \
  "Create Shattered Conduit bosses: 3 semi-bosses, 3 tier bosses, 1 final boss" \
  "From \`docs/bosses_shattered_conduit.md\`: 7 boss encounters. Implement all.

See: \`docs/bosses_shattered_conduit.md\`." \
  "combat,content" \
  "Phase 6c — Content: Shattered Conduit"

create_issue \
  "Create Shattered Conduit curios, events, and trinkets" \
  "From docs: curios, events, trinkets for Shattered Conduit. Create all data files.

See: \`docs/curios.md\`, \`docs/events.md\`, \`docs/equipment.md\`." \
  "content,data" \
  "Phase 6c — Content: Shattered Conduit"

create_issue \
  "Balance pass: Shattered Conduit campaign playthrough" \
  "Full playthrough testing Shattered Conduit. Test all tiers, bosses, mechanics, curios, events. Document adjustments." \
  "balance" \
  "Phase 6c — Content: Shattered Conduit"

# =============================================================================
# PHASE 6d — Content: Arcane Maw
# =============================================================================
echo ""
echo "=== Phase 6d — Content: Arcane Maw ==="

create_issue \
  "Create Arcane Maw enemy data files (10-12 enemies)" \
  "Convert enemy designs from \`docs/enemies.md\` (Arcane Maw section) into JSON data.

Enemies deal magic/multi-element damage, interact with Spell Warp, Mana Bleed, and Echoes.

Include corrupted echo enemies (copies of hero classes for Floor 3).

See: \`docs/enemies.md\` Arcane Maw section." \
  "content,data" \
  "Phase 6d — Content: Arcane Maw"

create_issue \
  "Implement Spell Warp (Floor 1), Mana Bleed (Floor 2), Echoes (Floor 3)" \
  "Create \`scripts/dungeon/tier_mechanics/arcane.gd\`.

**Spell Warp (Floor 1):** any ability has a chance (configurable, ~15-25%) to mutate on use: random target, changed damage type, amplified (1.5x) or weakened (0.5x) effect. Applies to heroes AND enemies.

**Mana Bleed (Floor 2):** every ability used costs HP equal to X% of the hero's max HP (configurable, ~8-12%). Healing abilities also cost HP to cast. Passive effects and items exempt.

**Echoes (Floor 3):** generate corrupted hero copies based on classes used on Floors 1 and 2. Copy has ~80% of original's stats and all 4 equipped abilities. Mixed into enemy compositions on Floor 3.

Implement team lockout: heroes used on Floor 1 cannot be selected for Floor 2 or 3.

See: \`docs/game_plan_v2.md\` section 6.5." \
  "dungeon,combat,content" \
  "Phase 6d — Content: Arcane Maw"

create_issue \
  "Implement 3-floor gauntlet structure for Arcane Maw" \
  "The Arcane Maw is structurally different from elemental dungeons:

- Unlocks only after all 4 elemental final bosses are defeated
- Player selects 3 teams of 4 heroes (12 minimum)
- Each floor is a separate dungeon run with its own team
- Heroes used on one floor are locked out of subsequent floors
- If any floor's team wipes: entire dungeon attempt fails, those heroes are lost
- All 3 floor bosses must be beaten in sequence to win the campaign

UI flow:
1. Show Arcane Maw briefing
2. Team selection screen: assign heroes to Floor 1, Floor 2, Floor 3
3. Run Floor 1 with Team 1
4. If success: run Floor 2 with Team 2
5. If success: run Floor 3 with Team 3 (Echoes from Teams 1+2 as enemies)
6. All 3 cleared: campaign victory screen

See: \`docs/game_plan_v2.md\` section 6.5." \
  "dungeon,core-system" \
  "Phase 6d — Content: Arcane Maw"

create_issue \
  "Create Arcane Maw floor bosses (3)" \
  "From \`docs/bosses_arcane_maw.md\`: 3 floor bosses.

Floor 3 boss is the FINAL BOSS of the entire game. It should:
- Use the Echoes mechanic (corrupted copies of player's heroes)
- Be multi-phase (2-3 phases)
- Be the hardest fight in the game
- Have unique legendary loot
- Trigger campaign victory on defeat

See: \`docs/bosses_arcane_maw.md\`." \
  "combat,content" \
  "Phase 6d — Content: Arcane Maw"

create_issue \
  "Create Arcane Maw curios, events, and trinkets" \
  "From docs: curios, events, trinkets for Arcane Maw. Create all data files.

See: \`docs/curios.md\`, \`docs/events.md\`, \`docs/equipment.md\`." \
  "content,data" \
  "Phase 6d — Content: Arcane Maw"

create_issue \
  "Implement campaign victory screen" \
  "When all 3 Arcane Maw floor bosses are defeated:

- Show campaign victory screen
- Display stats: weeks survived, heroes lost, bosses beaten, gold earned total
- Show 'honor roll' of the 12 heroes who cleared the Maw
- Option: return to main menu or continue playing (sandbox mode)
- Save completion flag (for potential future unlockables)

This is the culmination of the entire game. Make it feel earned." \
  "ui,progression" \
  "Phase 6d — Content: Arcane Maw"

create_issue \
  "Balance pass: full campaign playthrough with all 5 dungeons" \
  "Complete campaign test from week 1 to campaign victory:

Test:
- Full PP progression across all 4 elemental dungeons
- Mission board weighting at various total PP levels
- Economy balance across full campaign
- All 4 final bosses
- Arcane Maw with 3 different teams
- Overall campaign length (should feel like 30-50 weeks?)
- Difficulty curve: does it escalate smoothly?
- Is training new recruits at high PP actually punishing?
- Are there any dominant strategies that trivialize content?

Document all balance adjustments." \
  "balance" \
  "Phase 6d — Content: Arcane Maw"

# =============================================================================
# PHASE 7 — Hard Mode & Polish
# =============================================================================
echo ""
echo "=== Phase 7 — Hard Mode & Polish ==="

create_issue \
  "Implement Arcane Corruption: hard mode escalation system" \
  "Create \`scripts/campaign/corruption_clock.gd\`.

Arcane Corruption (Hard mode only):
- A global corruption counter that increases each week
- As corruption rises, ALL dungeon enemies get permanent stat buffs:
  - +X% HP per corruption level
  - +X% damage per corruption level
  - +X accuracy per corruption level
  - Swelling rises faster
  - Stress damage from enemies increases
- At high corruption: previously manageable fights become deadly
- Eventually makes dives unsurvivable — soft time limit

Corruption rate should be tuned so players have ~35-45 weeks before it becomes extreme.
Display corruption level in guild hub UI.

See: \`docs/game_plan_v2.md\` section 2.4." \
  "core-system,progression" \
  "Phase 7 — Hard Mode & Polish"

create_issue \
  "Implement tutorial and first-mission guidance" \
  "New campaign first-time experience:

- Brief narrative intro (text + art, explaining the guild and its purpose)
- First mission is scripted/simplified:
  - Fixed short dungeon layout (not fully random)
  - Tooltips explaining UI elements on first appearance
  - Combat tutorial: explain positioning, abilities, targeting
  - Show swelling gauge with explanation
  - Explain supplies and their usage
- After first mission: tutorial for guild hub
  - Explain each building briefly
  - Show how to recruit, equip, prepare
- Tutorial can be skipped (option at campaign start)
- Tutorial text should be concise and dark fantasy flavored

Don't make a 30-minute tutorial. Teach through play." \
  "ui,polish" \
  "Phase 7 — Hard Mode & Polish"

create_issue \
  "UI polish: tooltips, animations, and screen transitions" \
  "Polish pass across all UI:

**Tooltips:**
- Hover tooltips on abilities (show damage, effects, position requirements)
- Hover tooltips on status effects (show what they do, duration remaining)
- Hover tooltips on quirks (show exact stat modifiers)
- Hover tooltips on trinkets (show bonuses/drawbacks)
- Hover tooltips on enemies (show known resistances after scouting)

**Animations:**
- Combat: hit animations, miss animations, death animations, heal particles
- Dungeon: corridor walking animation, room entry transition
- Guild: building click feedback, upgrade sparkle

**Transitions:**
- Scene transitions (fade, slide, or custom)
- Combat start/end transitions
- Mission depart/return transitions

Keep it functional. Atmosphere over flashiness." \
  "ui,polish" \
  "Phase 7 — Hard Mode & Polish"

create_issue \
  "Audio integration: SFX and music" \
  "Integrate free audio assets:

**SFX priority:**
1. Combat: hits (slash, blunt, pierce), misses, crits, abilities, death, heal
2. UI: button clicks, menu navigation, equip, purchase, level up
3. Dungeon: footsteps, trap trigger, curio interaction, ambient
4. Stress: affliction trigger, virtue trigger, heart attack, bark sounds
5. Status effects: stun, bleed tick, poison tick, elemental impacts

**Music priority:**
1. Combat music (intense, per dungeon theme if possible)
2. Guild hub music (calm, melancholic)
3. Dungeon exploration music (tense, per dungeon)
4. Boss music (dramatic, escalating)
5. Main menu music
6. Victory/defeat stingers

Sources: Freesound.org, OpenGameArt.org, Kevin MacLeod (Incompetech), BFXR.

See: \`docs/game_plan_v2.md\` section 9." \
  "audio" \
  "Phase 7 — Hard Mode & Polish"

create_issue \
  "Implement settings menu" \
  "Settings accessible from main menu and guild hub:

- **Audio:** master volume, music volume, SFX volume
- **Display:** resolution, fullscreen/windowed, VSync
- **Gameplay:** combat speed (1x, 1.5x, 2x), auto-advance combat log, show damage numbers
- **Controls:** key rebinding (if applicable)
- **Accessibility:** text size, tooltip delay, colorblind mode (future?)

Save settings to \`user://settings.json\`. Load on startup." \
  "ui,polish" \
  "Phase 7 — Hard Mode & Polish"

create_issue \
  "Narrative flavor: loading tips, death quotes, dungeon intros" \
  "Add atmospheric text throughout the game:

- **Loading screen tips:** ~30-50 gameplay tips shown during transitions
- **Death quotes:** unique death messages per class (3-5 per class)
- **Dungeon intro text:** narrative paragraph when entering each dungeon type for the first time
- **Boss intro text:** dramatic text before each boss fight
- **Weekly report:** brief flavor text on return to guild ('Another week in the guild...')
- **Recruitment flavor:** short backstory per recruit (random from a pool)

All text should be dark fantasy tone. Concise. Atmospheric. Not cheesy.

Store all text in data files (\`data/flavor/\`)." \
  "content,polish" \
  "Phase 7 — Hard Mode & Polish"

create_issue \
  "Bug fixing and edge case pass" \
  "Systematic bug hunt:

- Save corruption: test save/load at every game state (mid-combat, mid-dungeon, guild)
- Permadeath edge cases: what happens if all 4 heroes die simultaneously? Last hero dies to DoT between turns?
- Death's Door: can healing race with damage correctly?
- Position edge cases: what happens when all positions have corpses?
- Stress cascade: test affliction → party stress → multiple afflictions → heart attacks
- Arcane Swelling: does it reset correctly? Edge cases at exactly 100?
- Inventory: what happens when inventory is full and you find loot?
- Economy: can gold go negative? Can the player soft-lock?
- Tier unlocks: do semi-bosses and tier bosses unlock at correct PP?
- Mission board: does weighting work correctly at extreme PP values?
- Equipment: unequipping trinkets mid-mission? Edge cases with stat modifiers.
- Retreat: can you retreat from a boss fight? Should you be able to?

Fix all identified issues." \
  "polish" \
  "Phase 7 — Hard Mode & Polish"

create_issue \
  "Desktop build and export testing" \
  "Prepare for release:

- Configure Godot export presets for Windows, Linux, macOS
- Test exported builds on each platform (or at least Windows + Linux)
- Verify save/load works in exported builds
- Check asset loading in exported builds (pack files)
- Test performance in exported builds
- Create build versioning system
- Write basic README for the project
- Prepare for potential Steam upload (Steamworks SDK integration if targeting Steam)

See: Godot 4 export documentation." \
  "infrastructure" \
  "Phase 7 — Hard Mode & Polish"

# =============================================================================
# DONE
# =============================================================================
echo ""
echo "=== Setup Complete ==="
echo ""
echo "All labels, milestones, and issues have been created."
echo "View your project board at: https://github.com/$REPO/issues"
echo ""
echo "To start working with Claude Code:"
echo "  claude 'Work on issue #1: Complete Godot first 2D game tutorial'"
