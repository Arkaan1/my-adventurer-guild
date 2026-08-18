# DARKHOLD — Game Design & Project Plan (v2)

> Working title. Darkest Dungeon-inspired side-scrolling dungeon crawler.
> Engine: **Godot 4** | Platform: **Desktop** | Dev: **Solo**

---

## 1. Game Identity

**Elevator pitch:** A punishing roguelike set in a dark fantasy world filled with magic and mystical creatures. You manage a guild of expendable adventurers, sending parties of 4 into procedurally-generated side-scrolling dungeons. Adventurers die, go mad, get cursed — and you recruit more. Each campaign starts fresh. Victory means conquering all 4 elemental dungeons and their final bosses.

**Core pillars:**
- **Consequence** — every decision costs something. No free healing, no safe choices.
- **Attrition** — resources drain. Stress builds. The arcane swelling grows. The dungeon wins by erosion.
- **Sacrifice** — sometimes you abandon a run, lose an adventurer, or retreat to survive.
- **Mastery** — the player gets better, not the characters. Knowledge is the real progression.

**Setting:** A fantasy world where ancient elemental forces have corrupted vast underground domains. Magic is real, dangerous, and volatile. Mystical creatures — from frost wraiths to arcane golems — inhabit the depths. The guild sends adventurers into these dungeons knowing many won't return.

---

## 2. Campaign Structure

### 2.1 Starting Conditions

- **Fixed starting party:** 4 predetermined adventurers (same every playthrough regardless of difficulty). Classes TBD after class finalization.
- **Starting guild:** all buildings at level 1, limited gold.
- **All 4 dungeons available** from the start (Tier 1 missions only).

### 2.2 Progression System

Each dungeon has its own **progression points (PP)**.

| Mission Length | Rooms | PP Earned |
|----------------|-------|-----------|
| Short | CONFIG_SHORT_ROOMS | 1 |
| Normal | CONFIG_NORMAL_ROOMS | 2 |
| Long | CONFIG_LONG_ROOMS | 3 |

> Room counts per mission length are defined in config — easily adjustable.

**Tier unlocking per dungeon:**

```
Tier 1 missions → earn PP → reach threshold (e.g., 10 PP) → Tier 1 semi-boss unlocks
  → beat semi-boss → Tier 2 missions unlock → earn PP → reach threshold (e.g., 15 PP)
    → Tier 2 semi-boss unlocks → beat semi-boss → Tier 3 missions unlock → ...
      → Tier 3 semi-boss → Final boss unlocks
```

Each dungeon tracks its own PP independently. Thresholds are configurable.

### 2.3 Mission Selection

Each week, the game offers **3-4 missions** spread across the 4 dungeons. Each mission is tied to a dungeon and tier (gated by that dungeon's progression).

**Overall progression effect:** the player's **total PP across all dungeons** determines mission pool weighting. The higher the total PP, the less likely low-tier missions appear. At high total PP, Tier 1 missions become extremely rare — making it brutal to train fresh recruits after losing veterans.

### 2.4 Win & Fail States

**Win state:** all 4 elemental dungeon final bosses defeated, then clear The Arcane Maw (final dungeon — 3 floors, 3 separate teams of 4).

**Fail state by difficulty:**

| Difficulty | Fail Condition |
|------------|---------------|
| **Easy** | None — play at your own pace |
| **Normal** | None — play at your own pace |
| **Hard** | **Arcane Corruption** — a global mechanic that strengthens all monsters over time. The world itself becomes more hostile as weeks pass, eventually making dives unsurvivable. A soft time limit forcing efficient play. |

---

## 3. Dungeon Crawling (Core Gameplay)

### 3.1 Dungeon Layout

Side-scrolling view. The dungeon is a graph of **rooms** connected by **corridors**.

```
[Room A] ---corridor--- [Room B] ---corridor--- [Room C]
         \                                        |
          corridor                            corridor
              \                                   |
            [Room F] ---corridor--- [Room D] ---corridor--- [Room E (Boss)]
```

**Generation rules:**
- Mission length determines max rooms (configurable per length).
- Layout is a graph — primarily branching with **occasional loops** creating alternate paths. Feels like a real dungeon with interconnected passages.
- Each corridor: 0-3 encounters (enemies, traps, curios, loot).
- Each room: 1 encounter (combat, event, shop, treasure, or empty/rest).
- Dead-end rooms have higher loot chance but also higher danger.
- Player sees a fog-of-war map; scouting reveals adjacent rooms.
- Layout should feel like an actual dungeon — twisting corridors, branching paths, the occasional shortcut loop back to a previously visited area.

### 3.2 Corridor Encounters

While traversing a corridor, the party may hit (randomly selected per corridor segment):

| Type | Description |
|------|-------------|
| **Enemy ambush** | Combat encounter, possible surprise round |
| **Trap** | Damage/debuff, can be disarmed by certain classes |
| **Curio** | Interactive object — could be loot, curse, buff, or trap. Risk/reward. |
| **Trinket** | Loot pickup (equipment, consumable, gold) |
| **Nothing** | Empty stretch — tension builder |
| **Secret** | Hidden passage to bonus room (requires scout or perception check) |

### 3.3 Room Types

| Room | Function |
|------|----------|
| **Combat** | Mandatory fight, 1-2 enemy groups |
| **Elite combat** | Miniboss-level fight, guaranteed rare loot |
| **Event** | Narrative choice with consequences (sacrifice HP for gold, etc.) |
| **Rest** | Can heal, de-stress, sharpen weapons — pick ONE action |
| **Shop** | Spend gold on supplies mid-dungeon |
| **Treasure** | Loot room, may be trapped or guarded |
| **Boss** | Semi-boss or final boss room |

### 3.4 Combat System

**Turn-based, position-dependent.**

Party of 4 occupies positions 1-4 (front to back). Enemies also have positions.

```
[Pos 1][Pos 2][Pos 3][Pos 4]  ←— PARTY  |  ENEMIES —→  [Pos 1][Pos 2][Pos 3][Pos 4]
 Front                  Back                               Front                  Back
```

**Core combat mechanics:**
- **Initiative/Speed** determines turn order (party + enemies in one queue).
- **Abilities are position-gated:** a frontliner's melee can't hit from Pos 4. A healer's heal works best from Pos 3-4.
- **Targeting is position-gated:** some attacks hit front only, some hit back only, some hit any, some hit AoE.
- **Forced movement:** abilities can push/pull enemies or allies to different positions, disrupting their ability access.
- **Status effects:** Stun, Mark (increased damage taken), Guard (redirect attacks), Dodge buff/debuff, Stealth.
- **Stress damage:** some enemy attacks deal stress instead of/alongside HP damage.
- **Death's Door:** at 0 HP, hero enters Death's Door. Any further damage has a chance to kill. Healing pulls them back. Staying at 0 accumulates death blow chance.
- **Corpses:** dead enemies leave corpses occupying their position (can be cleared or left to block targeting).

**Damage types:**
- **Physical:** Slash, Blunt, Pierce
- **Elemental:** Fire, Ice, Lightning, Wind
- **Other:** Bleed (DoT), Poison (DoT), Magic (raw arcane)

**Elemental interactions:**
Every element pair has three interactions:
- **Minor boost** — small bonus effect
- **Major boost** — powerful combo effect
- **Negative interaction** — detrimental outcome

> Full interaction table to be defined during implementation. Examples:
> - Fire + Wind: minor = increased fire range, major = firestorm AoE, negative = fire blown back at party
> - Ice + Lightning: minor = slowed targets take more lightning, major = shatter AoE on frozen targets, negative = static disrupts freeze duration
> - Fire + Ice: minor = steam cloud (dodge debuff), major = thermal shock (massive damage), negative = cancel each other out

**Combat end states:**
- All enemies dead → loot, proceed.
- All heroes dead → mission failed, all heroes permanently lost.
- Retreat → escape combat, but take stress damage and lose potential loot.

### 3.5 Arcane Swelling

The dungeon's magical energy **swells** in response to adventurers invading it.

**Swelling gauge: 0-100**

**How it rises:**
- Entering a new room: +X swelling
- Revisiting a room: +Y swelling (lower than new room)
- Each turn in combat: +Z swelling

**Effects by stage:**

| Swelling Stage | Range | Effect |
|----------------|-------|--------|
| **Calm** | 0-25 | Baseline. Normal encounters. |
| **Stirring** | 26-50 | Enemies slightly more aggressive, minor accuracy buff to enemies. |
| **Raging** | 51-75 | More enemies per encounter, enemies deal more damage, ambush chance increases. Loot quality improves. |
| **Overwhelming** | 76-100 | Maximum danger. Enemies buffed significantly, constant stress pressure. Best loot drops. Special high-swelling events accessible — great risk, great reward. |

**Swelling reduction:**
- Consumable items (Warding Stones, Arcane Dampeners) reduce swelling.
- Certain class abilities may temporarily suppress it.
- Resets fully between dives.

### 3.6 Supplies & Inventory

Before each mission, spend gold on supplies:

| Item | Use |
|------|-----|
| **Warding Stones** | Reduce arcane swelling |
| **Rations** | Heal during rest rooms, prevent starvation |
| **Enchanted Tools** | Clear obstacles, disarm certain traps |
| **Antitoxin Vials** | Cure poison |
| **Hemlock Salve** | Cure bleed |
| **Arcane Dampeners** | Buff elemental resistance, interact with certain curios |
| **Runestone Keys** | Open magically sealed curios safely |
| **Binding Rope** | Navigate certain obstacles, interact with curios |

Limited inventory space. Bring too little: die. Bring too much: no room for loot.

---

## 4. The 11 Classes

Each class has **7 abilities** (can equip 4 per mission) and a **unique passive**.

| # | Class | Role | Position | Damage Types | Flavor |
|---|-------|------|----------|-------------|--------|
| 1 | **Knight** | Tank/frontline | 1-2 | Slash, Blunt | Heavy armor, guard, taunt, stun. The wall. |
| 2 | **Berserker** | Melee DPS | 1-2 | Slash, Bleed | Rage mechanic, self-damage for power, high risk/reward. |
| 3 | **Duelist** | Counter/dodge | 1-2 | Pierce, Bleed | Riposte, dodge, crits. Glass cannon. |
| 4 | **Ranger** | Ranged physical | 3-4 | Pierce, Poison | Marks, traps, scouting, high accuracy. |
| 5 | **Rogue** | Stealth/assassin | 2-4 | Pierce, Poison | Stealth, crits, position manipulation, trap disarm. |
| 6 | **Pyromancer** | Elemental mage | 3-4 | Fire, Magic | AoE damage, burning DoT, high damage but friendly fire risk. |
| 7 | **Stormcaller** | Elemental mage | 3-4 | Lightning, Wind | Single target burst, stun, forced movement via wind. |
| 8 | **Cryomancer** | Control/mage | 3-4 | Ice, Wind | Freeze, slow, AoE control, shatter combos on frozen targets. |
| 9 | **Alchemist** | Support/DoT | 2-3 | Poison, Fire | Healing potions, poison bombs, elemental mixtures, versatile. |
| 10 | **Cleric** | Healer/support | 3-4 | Blunt, Magic | Heals, stress heals, buffs, weak offensive magic. |
| 11 | **Necromancer** | Summoner/debuff | 2-3 | Magic, Poison | Summons, corpse manipulation, curses, high power but stress cost on party. |

**Damage type coverage:**
- Slash: Knight, Berserker
- Blunt: Knight, Cleric
- Pierce: Duelist, Ranger, Rogue
- Bleed: Berserker, Duelist
- Poison: Ranger, Rogue, Alchemist, Necromancer
- Fire: Pyromancer, Alchemist
- Ice: Cryomancer
- Lightning: Stormcaller
- Wind: Stormcaller, Cryomancer
- Magic: Pyromancer, Stormcaller, Cleric, Necromancer

**Key synergies:**
- Stormcaller wind + Pyromancer fire = enhanced fire damage
- Cryomancer freeze + Berserker/Duelist = shatter burst on frozen targets
- Cryomancer slow + Rogue positioning = easy backstabs
- Ranger mark + Rogue crit = assassination combo
- Necromancer summon + combat corpses = extra bodies
- Alchemist potions + Cleric heals = sustain comp
- Knight guard + Berserker rage = protected glass cannon

**Class design rules:**
- No class is self-sufficient. Party composition matters.
- Every class has at least one weakness that another class covers.
- Each class has 1-2 abilities that synergize with specific other classes.

---

## 5. Adventurer System

### 5.1 Stats

| Stat | Function |
|------|----------|
| **HP** | Health. 0 = Death's Door. |
| **Stress** | 0-200. At 100: resolve check (75% negative affliction, 25% positive virtue). At 200: heart attack (Death's Door or instant death). |
| **Dodge** | Chance to avoid attacks |
| **Speed** | Turn order priority |
| **Accuracy** | Hit chance |
| **Crit** | Critical hit chance |
| **Damage** | Base damage range |
| **Resistances** | Per damage type (bleed, poison, stun, move, debuff, fire, ice, lightning, wind) |

### 5.2 Quirks

Each adventurer has **positive quirks** and **negative quirks** (max 5 each).
Quirks are gained from dungeon events, stress, curio interactions, and guild activities.

Examples:
- *Steady (+5% stress resist)* / *Paranoid (+10% stress taken)*
- *Eagle Eye (+5 accuracy ranged)* / *Bad Reflexes (-5 dodge)*
- *Kleptomaniac (compulsively interacts with curios)*
- *Courageous (+10% virtue chance)*
- *Lucky (+3% crit)* / *Gambler (compulsive curio interaction)*
- *Tough Stomach (+poison resist)* / *Drunkard (stress penalty if not sent to Gilded Den)*
- *Battle Hardened (+stress resist)* / *Aggressive (may act on own in combat)*
- *Arcane Attunement (+magic resist)* / *Haunted (stress spikes at high swelling)*
- *Deepwater Vision (reveals hidden curios/secrets next mission)*

Negative quirks can be treated at the Infirmary (costs gold + hero unavailable).
Positive quirks can be locked in (costs gold).

### 5.3 Afflictions & Virtues

At 100 stress, resolve check:

**Afflictions (75%):** Irrational, Fearful, Abusive, Selfish, Masochistic, Paranoid, Hopeless
→ Hero acts erratically. May refuse orders, hurt allies, stress the party.

**Virtues (25%):** Stalwart, Courageous, Focused, Vigorous, Powerful
→ Hero gets buffed, may self-heal, reduces party stress.

### 5.4 Leveling

Adventurers gain XP from missions. Levels 1-6.
Higher level = better base stats, access to upgraded abilities.
Higher-level heroes refuse to enter lower-tier dungeons (they're above it).

### 5.5 Equipment

- **Weapon** — affects damage.
- **Armor** — affects HP and dodge.
- **Trinket slots (2)** — modifiers with tradeoffs (e.g., +15% damage, -10% dodge).

Equipment is bought/upgraded at the guild Blacksmith.

---

## 6. The 4 Dungeon Types

### 6.1 The Frozen Depths

**Theme:** Ancient glacial caverns, cursed eternal winter.

**Enemy types:** Ice wraiths, frost beasts, frozen undead, yeti-like creatures.

| Tier | Mechanic | Description |
|------|----------|-------------|
| **Tier 1** | **Frostbite Gauge** | Party gradually freezes, slowing speed and reducing dodge. Frozen characters can be shattered by heavy hits. |
| **Tier 2** | + **Permafrost Armor** | Enemies gain ice shields that must be broken before taking HP damage. Fire melts them fast, physical takes longer. |
| **Tier 3** | + **Frozen Blood** | Healing is halved. Bleed effects freeze instead of bleeding, stunning the target. Makes healers less reliable and bleed builds double-edged. |

Unique curios, trinkets, semi-bosses, and final boss per tier.

---

### 6.2 The Howling Spire

**Theme:** Ruined tower open to endless storms, vertigo.

**Enemy types:** Harpies, wind elementals, storm cultists, gargoyles.

| Tier | Mechanic | Description |
|------|----------|-------------|
| **Tier 1** | **Gale** | Wind forces random position shifts each round. Some corridors require resistance checks or take damage. Higher floors = stronger wind. |
| **Tier 2** | + **Wind Walls** | Certain positions become blocked by wind barriers each round. Abilities can't target through them. Barriers shift each turn. |
| **Tier 3** | + **Tempest Rage** | Wind affects abilities. Ranged attacks get accuracy penalties, wind-element attacks get boosted. Melee becomes more reliable than ranged. |

Unique curios, trinkets, semi-bosses, and final boss per tier.

---

### 6.3 The Shattered Conduit

**Theme:** Collapsed arcane laboratory built around a lightning nexus, raw energy arcing through corridors.

**Enemy types:** Arcane golems, chained experimentations (creatures fused with lightning), spark elementals, mad artificers, overcharged constructs.

| Tier | Mechanic | Description |
|------|----------|-------------|
| **Tier 1** | **Surge Rounds** | Every X turns, the conduit pulses. Random positions get struck. Before each surge, visual indicators show which positions are dangerous, giving one turn to reposition. Enemies are adapted and immune. |
| **Tier 2** | + **Overload** | Using magic abilities feeds the conduit's energy. Too many spells in quick succession triggers a discharge hitting the whole party. Forces mixing physical and magical attacks. Pure mage comps get punished. |
| **Tier 3** | + **Conductive Chains** | Some enemy attacks mark heroes with a lightning tether. Tethered heroes share damage taken. Healers must decide who to cleanse vs who to heal. Bosses chain the whole party together. |

Unique curios, trinkets, semi-bosses, and final boss per tier.

---

### 6.4 The Ember Sanctum

**Theme:** Volcanic temple, fanatical cult.

**Enemy types:** Cultists, fire elementals, branded zealots.

| Tier | Mechanic | Description |
|------|----------|-------------|
| **Tier 1** | **Heat Gauge** | Party takes increasing stress and damage over time. Efficiency is rewarded — the faster you clear, the less you suffer. |
| **Tier 2** | + **Ember Marks** | Fire enemies brand heroes. Branded heroes take bonus fire damage from all sources for the rest of the dive. Stacks. Only cleansable at rest rooms. |
| **Tier 3** | + **Molten Core** | Certain enemies (melee-only, physical attackers) explode on death, dealing debuffs or damage to their nearby allies. Killing order matters — positioning enemy deaths becomes tactical. |

Unique curios, trinkets, semi-bosses, and final boss per tier.

---

### 6.5 The Arcane Maw (Final Dungeon)

**Theme:** The source of all magical corruption — a rift of pure, unstable arcane energy. Reality itself breaks down. The dungeon reshapes around you.

**Unlock condition:** all 4 elemental dungeon final bosses defeated.

**Structure:** 3-floor gauntlet. Each floor requires a separate team of 4 adventurers. An adventurer used on one floor cannot be reused. **Minimum roster requirement: 12 viable adventurers.**

**Enemy types:** Arcane aberrations, spell-wraiths, reality fragments, void constructs, corrupted echoes (twisted copies of adventurer classes).

| Floor | Mechanic | Description |
|-------|----------|-------------|
| **Floor 1** | **Spell Warp** | Any ability (hero or enemy) has a chance to mutate on use — random target, changed damage type, amplified or weakened effect. Encourages physical-heavy teams but those face tougher enemies. |
| **Floor 2** | **Mana Bleed** | Every ability used costs HP in addition to its normal effect. Healing abilities also cost HP to cast. Forces efficiency — wasted turns literally kill you. Makes pre-fight preparation and Alchemist potions critical. |
| **Floor 3** | **Echoes** | Enemies include corrupted copies of heroes used on Floors 1 and 2 — same class, same abilities. Your own strength is turned against you. The better your first two teams, the harder Floor 3. |

**Win state:** clearing all 3 floor bosses = **campaign victory.**

**Fail state:** if any floor's team wipes, the entire dungeon fails. Those adventurers are lost. Can attempt again with a new set of 12.

**Strategic dilemma:** send your best teams first for safety, knowing Floor 3 Echoes get harder? Or save your best for last and risk failing early floors?

---

### Dungeon-wide rules

Each dungeon has:
- Unique enemy pool (8-12 enemy types).
- Unique curio set (4-6 per dungeon).
- Unique environmental hazard (tiered, escalating).
- 3 semi-bosses (one per tier).
- 1 final boss with multi-phase fight.
- Unique loot/trinkets.
- Elemental resistance matters — bringing the matching element class may face resistant enemies but interact differently with the environment.

---

## 7. Guild Management

The guild is the between-mission hub. All buildings start at level 1 and can be upgraded (costs gold + mission completions). Designed to be modular — adding buildings = adding a scene + registering it.

### 7.1 Buildings

| Building | Function | Upgrades |
|----------|----------|----------|
| **The Gilded Den** | Stress relief — risky, rewarding (see 7.2) | More activity slots, better odds |
| **The Enchanted Springs** | Stress relief — magical, variable risk (see 7.3) | Deeper pools, better effects |
| **Infirmary** | Heal diseases, remove negative quirks | Cheaper, faster, more slots |
| **Blacksmith** | Upgrade weapons and armor | Higher upgrade tiers |
| **Guild Hall** | Upgrade hero abilities | Higher ability tiers |
| **Recruitment Board** | Hire new adventurers (random class, random quirks) | Better starting levels, more choices |
| **Supply Shop** | Buy dungeon supplies | Better prices, more stock |
| **Training Grounds** | Passive XP for benched heroes | More slots, faster XP |
| **Vault** | Store gold between missions, interest | Higher capacity, better interest |

### 7.2 The Gilded Den

A rowdy fantasy den of vices — gambling with sprites, pit fights, strong drink.

| Activity | Stress Relief | Risk | Reward Chance |
|----------|--------------|------|---------------|
| **Dragon Ale Drinking** | Low | Small chance of gaining "Drunkard" quirk. Hero may lose a small amount of gold (bar tab got out of hand). | May gain "Tough Stomach" quirk (+poison resist). |
| **Dice with Sprites** | Medium | Can lose moderate gold (bad bets). Small chance of gaining "Gambler" quirk (compulsive curio interaction). | Can win gold back doubled. Small chance of gaining "Lucky" quirk (+crit). |
| **Pit Fighting** | High | Hero takes HP damage. Chance of injury (stat debuff for next mission). Small chance of gaining "Aggressive" quirk (may act on own in combat). | Can win gold prize. Chance of gaining "Battle Hardened" quirk (+stress resist). |

### 7.3 The Enchanted Springs

Magical hot springs infused with arcane energy — soothing but unpredictable.

| Activity | Stress Relief | Risk | Reward Chance |
|----------|--------------|------|---------------|
| **Shallow Pool** | Low | Small chance the waters irritate — hero gains minor elemental sensitivity (+damage taken from one random element for next mission). | May cleanse a minor negative quirk. |
| **Deep Basin** | Medium | Magical currents can cause visions — chance of gaining "Haunted" quirk (stress spikes at high swelling). Small chance hero becomes magically drowsy (speed debuff next mission). | May gain "Arcane Attunement" quirk (+magic resist). Small chance of revealing a dungeon secret (curio hint). |
| **The Abyssal Font** | High | Powerful magic — chance of magical dependency ("Addicted to the Springs" quirk, stress penalty if not sent back next week). Rare chance of temporary stat drain. | Rare chance of gaining "Deepwater Vision" quirk — hero can see hidden curios/secrets more easily in next mission. |

### 7.4 Economy

- **Income:** mission loot, selling trinkets, quest rewards, Pit Fighting/Dice winnings.
- **Expenses:** recruitment, supplies, stress relief, healing, upgrades.
- **Tension:** you never have enough gold. Spending on upgrades means less for supplies. Under-supplying missions means dead heroes. Dead heroes means recruitment costs.

### 7.5 Campaign Progression

```
Week 1:   Fixed starting party, basic guild, Tier 1 missions available
          ↓
Week 5:   6-8 adventurers, some upgrades, earning PP toward first semi-bosses
          ↓
Week 15:  8-12 adventurers, mid-level guild, Tier 2 unlocking, some deaths
          ↓
Week 25:  Veteran roster, Tier 3 available, boss missions approaching
          ↓
Week 30+: Boss hunting, final push, high attrition
```

Time is measured in **weeks**. Each mission = 1 week. Stress relief / healing = hero sits out 1 week.

---

## 8. Architecture (Godot 4)

### 8.1 Project Structure

```
res://
├── scenes/
│   ├── main_menu/
│   ├── guild/                    # Hub screen + building UIs
│   │   ├── guild_hub.tscn
│   │   ├── gilded_den.tscn
│   │   ├── enchanted_springs.tscn
│   │   ├── blacksmith.tscn
│   │   ├── recruitment_board.tscn
│   │   └── ...                   # One scene per building (modular)
│   ├── dungeon/
│   │   ├── dungeon_map.tscn      # Fog-of-war room/corridor map
│   │   ├── corridor.tscn         # Side-scroll corridor traversal
│   │   ├── room.tscn             # Room encounter container
│   │   └── combat/
│   │       ├── combat_scene.tscn  # Turn-based combat arena
│   │       ├── combat_ui.tscn     # HP bars, ability buttons, turn order
│   │       └── combat_log.tscn
│   └── shared/                   # Reusable UI components
├── scripts/
│   ├── autoload/                 # Singletons
│   │   ├── game_manager.gd       # Campaign state, save/load, difficulty
│   │   ├── event_bus.gd          # Global signals
│   │   └── data_manager.gd       # Load data resources
│   ├── combat/
│   │   ├── combat_manager.gd     # Turn logic, initiative, win/loss
│   │   ├── ability_executor.gd   # Resolve abilities, damage calc
│   │   ├── element_system.gd     # Elemental interactions (minor/major/negative)
│   │   ├── status_effect.gd
│   │   └── swelling_tracker.gd   # Arcane swelling per-combat turn tracking
│   ├── dungeon/
│   │   ├── dungeon_generator.gd  # Procedural layout (graph with loops)
│   │   ├── corridor_manager.gd
│   │   ├── encounter_roller.gd   # What spawns where
│   │   ├── swelling_manager.gd   # Arcane swelling per-room tracking
│   │   └── tier_mechanic.gd      # Per-dungeon tier hazard logic
│   ├── guild/
│   │   ├── guild_manager.gd      # Buildings, upgrades, economy
│   │   ├── roster_manager.gd     # Adventurer roster
│   │   ├── mission_board.gd      # Mission generation, PP weighting
│   │   └── stress_activity.gd    # Base class for stress relief activities
│   ├── campaign/
│   │   ├── campaign_manager.gd   # PP tracking, tier unlocks, win/fail state
│   │   ├── difficulty.gd         # Easy/Normal/Hard rules
│   │   └── corruption_clock.gd   # Hard mode escalation
│   └── entities/
│       ├── hero.gd
│       ├── enemy.gd
│       └── ability.gd
├── data/                         # JSON/Resource files (data-driven design)
│   ├── classes/                  # 11 class definitions
│   ├── enemies/                  # Enemy stat blocks per dungeon
│   ├── dungeons/                 # Dungeon generation rules, tier mechanics
│   ├── abilities/                # All abilities
│   ├── quirks/                   # Quirk definitions
│   ├── curios/                   # Curio interaction tables per dungeon
│   ├── items/                    # Equipment, trinkets, supplies
│   ├── elements/                 # Elemental interaction table
│   ├── missions/                 # Mission templates, PP thresholds
│   └── config.json               # Room counts, swelling rates, tuning knobs
└── assets/
    ├── sprites/
    ├── ui/
    ├── audio/
    └── fonts/
```

### 8.2 Key Architecture Decisions

- **Data-driven:** all game content (classes, enemies, abilities, quirks, items, curios, dungeon rules, elemental interactions, mission thresholds) defined in JSON/Resource files. Adding content = adding data, not code.
- **Event bus pattern:** decouple systems via signals. Combat doesn't know about UI. UI listens to events.
- **State machine:** combat flow, dungeon exploration, and guild navigation each run on state machines.
- **Modular buildings:** each guild building is a self-contained scene + script. Adding a building = adding a scene + registering it.
- **Modular tier mechanics:** each dungeon's tier hazard is a pluggable script implementing a base interface. Adding a new tier mechanic = new script, no core changes.
- **Config-driven tuning:** room counts per mission length, swelling rates, PP thresholds, corruption clock speed — all in config, no recompilation needed.

---

## 9. Free Asset Strategy

### Art
- **Placeholder:** use simple geometric shapes / colored rectangles initially.
- **Free assets:** [OpenGameArt.org](https://opengameart.org), [itch.io free assets](https://itch.io/game-assets/free), [Kenney.nl](https://kenney.nl).
- **Style target:** find ONE consistent pixel art pack and build around it. Consistency > quality.
- **Priority:** hero sprites > enemy sprites > UI > environment > effects.

### Audio
- **Music:** [Freesound.org](https://freesound.org), [OpenGameArt.org](https://opengameart.org), [Kevin MacLeod (Incompetech)](https://incompetech.com) — all free with attribution.
- **SFX:** Freesound.org for hits, UI clicks, ambient. [BFXR](https://www.bfxr.net/) for retro SFX generation.
- **Priority:** combat SFX > ambient dungeon > UI sounds > music.

### Fonts
- [Google Fonts](https://fonts.google.com) — free, open source. Look for something gothic/medieval.

---

## 10. Development Phases & Timeline

> Estimated for solo dev, learning Godot from scratch, ~15-20 hrs/week.
> Total estimate: **12-18 months** to feature-complete with 4 dungeons / 11 classes.

---

### Phase 0 — Learn Godot (Weeks 1-3)

**Goal:** be comfortable with the engine before writing game code.

- [ ] Complete official Godot "Your First 2D Game" tutorial
- [ ] Build a throwaway prototype: move a sprite, click buttons, switch scenes
- [ ] Learn: scenes/nodes, signals, GDScript basics, UI, scene transitions, input handling
- [ ] Learn: Resource files, how to load JSON data
- [ ] Set up version control (Git + GitHub/GitLab)

**Deliverable:** comfort navigating Godot, a toy project that switches scenes and handles input.

---

### Phase 1 — Combat Prototype (Weeks 4-9)

**Goal:** playable turn-based combat with placeholder art.

- [ ] Combat scene: 4 hero slots, 4 enemy slots, position display
- [ ] Turn order system (speed-based initiative queue)
- [ ] Ability system: select ability → select target → resolve
- [ ] Damage calculation: accuracy, dodge, damage range, crits
- [ ] Damage types: slash, blunt, pierce, bleed, poison, fire, ice, lightning, wind, magic
- [ ] Elemental interaction system (minor/major/negative lookups from data)
- [ ] Position system: abilities gated by position, forced movement
- [ ] HP system: damage, healing, Death's Door
- [ ] 2 test classes with 4 abilities each (e.g., Knight + Pyromancer)
- [ ] 3 test enemies with basic AI (attack, heal, buff)
- [ ] Basic combat UI: HP bars, turn order display, ability buttons
- [ ] Combat end: win/lose detection
- [ ] Status effects: stun, bleed, poison (DoT processing)
- [ ] Combat log (text feed of what happened)

**Deliverable:** a standalone combat screen where you fight a test battle with elemental interactions working.

---

### Phase 2 — Dungeon Exploration (Weeks 10-16)

**Goal:** navigate a procedurally generated dungeon with corridors and rooms.

- [ ] Dungeon generator: create room graph with branching and occasional loops
- [ ] Dungeon map UI: fog-of-war, room icons, current position
- [ ] Corridor traversal: side-scroll movement through corridor segments
- [ ] Corridor encounters: enemy spawns → transition to combat scene
- [ ] Corridor encounters: traps, curios, loot pickups
- [ ] Room transitions: enter room → trigger room type logic
- [ ] Room types: combat, rest, treasure, empty
- [ ] Arcane swelling system: rises per room, per combat turn, reducible with items
- [ ] Swelling effects: enemy buffs, loot scaling, special event access
- [ ] Inventory system: supplies carried into dungeon
- [ ] Retreat mechanic: abandon dungeon mid-run
- [ ] Mission results screen: loot gained, heroes lost, XP gained
- [ ] Connect combat → dungeon: combat results feed back to party state

**Deliverable:** start a dungeon, explore rooms/corridors, fight, find loot, finish or die.

---

### Phase 3 — Guild Hub (Weeks 17-23)

**Goal:** between-mission management loop.

- [ ] Guild hub scene: visual representation of buildings
- [ ] Campaign state: week counter, gold, roster, PP per dungeon
- [ ] Mission board: generate weighted mission selection based on PP
- [ ] PP tracking and tier unlock logic
- [ ] Recruitment board: hire random adventurers
- [ ] Roster screen: view all adventurers, stats, quirks, equipment
- [ ] Party selection: pick 4 heroes + supplies for a mission
- [ ] The Gilded Den: 3 activities with risks/rewards
- [ ] The Enchanted Springs: 3 activities with risks/rewards
- [ ] Infirmary: treat quirks/diseases
- [ ] Blacksmith: upgrade weapons/armor (simple)
- [ ] Guild Hall: upgrade abilities (simple)
- [ ] Supply shop: buy supplies before mission
- [ ] Building upgrade system: spend gold to improve buildings
- [ ] Save/Load system: save campaign state between sessions
- [ ] Difficulty selection: easy/normal/hard
- [ ] Fail state detection
- [ ] Connect guild → dungeon → guild loop

**Deliverable:** full gameplay loop — guild → prepare → dungeon → results → guild.

---

### Phase 4 — Stress & Affliction System (Weeks 24-27)

**Goal:** the stress meta-layer that makes the game punishing.

- [ ] Stress stat on heroes (0-200)
- [ ] Stress damage from enemies, high swelling, traps, events, starvation
- [ ] Resolve check at 100 stress (affliction/virtue roll)
- [ ] Affliction behaviors: hero acts on their own, negative effects
- [ ] Virtue behaviors: hero gets buffed
- [ ] Heart attack at 200 stress
- [ ] Stress healing: abilities, rest rooms, guild activities
- [ ] Quirk system: gain/lose quirks from events and guild activities
- [ ] Stress UI: visual indicators on hero portraits

**Deliverable:** stress creates real tension and forces difficult decisions.

---

### Phase 5 — Content Pass 1: The Frozen Depths (Weeks 28-33)

**Goal:** first complete dungeon with all content.

- [ ] All 11 classes: abilities, stats, sprites, balance pass
- [ ] Frozen Depths enemy pool: 8-10 enemies with unique abilities and AI
- [ ] Tier 1 mechanic: Frostbite Gauge
- [ ] Tier 2 mechanic: + Permafrost Armor
- [ ] Tier 3 mechanic: + Frozen Blood
- [ ] 3 semi-bosses (one per tier)
- [ ] Final boss: multi-phase fight
- [ ] Frozen Depths curios: 4-6 interactive objects with risk/reward tables
- [ ] Frozen Depths trinkets: dungeon-specific loot
- [ ] Event encounters (narrative choices) — 5-8 generic + dungeon-specific events
- [ ] Balance pass: run full campaigns, adjust numbers

**Deliverable:** one complete, polished dungeon playable from start to final boss kill.

---

### Phase 6 — Content Pass 2-4: Remaining Dungeons (Weeks 34-48)

**Goal:** 3 more dungeons, each ~4-5 weeks.

**Per dungeon:**
- [ ] Enemy pool (8-10 enemies)
- [ ] Tier 1/2/3 mechanics implementation
- [ ] 3 semi-bosses
- [ ] Final boss
- [ ] Curios (4-6)
- [ ] Trinkets
- [ ] Dungeon-specific events
- [ ] Balance pass

Dungeons in order:
1. **The Ember Sanctum** (weeks 34-38) — Heat/Ember Marks/Molten Core
2. **The Howling Spire** (weeks 39-43) — Gale/Wind Walls/Tempest Rage
3. **The Shattered Conduit** (weeks 44-48) — Surge/Overload/Conductive Chains

---

### Phase 7 — Hard Mode & Polish (Weeks 49-56)

- [ ] Hard mode: Arcane Corruption escalation system
- [ ] Campaign win state: all bosses dead → victory screen
- [ ] Tutorial / first-mission guidance
- [ ] Difficulty balancing across full campaign arc
- [ ] UI polish: tooltips, animations, screen transitions
- [ ] Audio integration: SFX + music per dungeon
- [ ] Settings menu: volume, display, keybindings
- [ ] Bug fixing, edge cases, save corruption prevention
- [ ] Narrative flavor: loading screen tips, death quotes, dungeon intro text
- [ ] Steam build + export testing

---

## 11. Risk Register

| Risk | Impact | Mitigation |
|------|--------|------------|
| Scope creep | High | Stick to the phase plan. No new features until current phase ships. |
| Balance nightmare (11 classes × 4 dungeons × elemental combos) | High | Playtest each phase. Balance is iterative. Ship "good enough," patch later. |
| Elemental interaction complexity | High | Start with simple interactions. Layer complexity in later passes. |
| Burnout (solo dev) | Critical | Keep phases short. Celebrate milestones. Take breaks. |
| Free assets look inconsistent | Medium | Pick ONE art pack/style and stick with it. Consistency > quality. |
| Godot learning curve | Medium | Phase 0 exists for this. Don't rush into game code. |
| Combat feels boring | High | Phase 1 is intentionally first. If combat isn't fun, nothing else matters. |
| Permadeath feels unfair | Medium | Ensure Death's Door gives a chance. Provide clear feedback on WHY heroes died. |
| Mission weighting feels punishing | Medium | Tune PP thresholds and low-tier mission rarity carefully. Playtest extensively. |

---

## 12. Key Design Rules (Reference)

1. **No free lunch.** Every benefit has a cost. Every healing item takes an inventory slot. Every strong ability has a drawback.
2. **Information is power.** Scouting and knowledge should feel valuable. High swelling should feel dangerous.
3. **The dungeon is the enemy.** Not just the monsters — the dungeon itself drains you. Arcane swelling, tier mechanics, and attrition are the real threats.
4. **Dead is dead.** Permadeath is non-negotiable. It drives every decision.
5. **Composition over power.** A well-composed party of level 2s should beat a poorly composed party of level 4s.
6. **Elements matter.** Bringing the right elemental coverage for a dungeon should feel strategic, not obvious.
7. **Data, not code.** Adding a new enemy, class, ability, or dungeon mechanic should be a data file, not a code rewrite.
8. **Systems, not content.** Build robust systems first. Content is the easy part once systems work.
9. **Layers, not walls.** Each dungeon tier adds a new mechanic on top of existing ones. Complexity grows naturally.

---

## 13. First Steps (This Week)

1. Download and install [Godot 4](https://godotengine.org/).
2. Follow the official ["Your First 2D Game"](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html) tutorial.
3. Set up a Git repository for the project.
4. Come back here and we'll start Phase 1 together.
