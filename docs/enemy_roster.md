# Enemy Roster — Dark Fantasy Roguelike

---

# 1. The Frozen Depths (Ice Theme)

## Enemies

---

### 1. Frost Revenant
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1–2
- **Visual:** A gaunt undead warrior sheathed in blue-white ice, frost crawling through the gaps in its corroded plate armor. Its eyes are pale frozen orbs, and its sword is fused to its frozen gauntlet.
- **Stats:** HP Medium (28) · Speed Medium (4) · Dodge Low (10) · Accuracy High (85)
- **Resistances:** Immune to Ice, Immune to Bleed. Weak to Fire (+50%), Weak to Blunt (+25%).
- **Abilities:**
  1. **Rimeblade Slash** — Pos 1–2 → Hero 1–2. Slash + Ice damage (medium). 30% chance to apply 1 Frostbite stack.
  2. **Frozen Lunge** — Pos 1–2 → Hero 1–3. Pierce + Ice damage (low-medium). Pushes target back 1 position.
  3. **Permafrost Stance** *(T2+)* — Self. Gains Permafrost Armor (absorbs next 8 damage, immune to Fire for 1 turn).
- **Dungeon Mechanic:** At T2+, can self-apply Permafrost Armor. At T3, its Rimeblade Slash applies Frozen Blood (halves healing on target for 2 turns).
- **Corpse:** Standard. No special behavior.

---

### 2. Glacial Mauler
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1
- **Visual:** A hulking ape-like beast covered in matted white fur and thick ice plates across its shoulders and fists. Steam vents from its nostrils. Stands hunched, knuckles dragging.
- **Stats:** HP High (42) · Speed Low (2) · Dodge Low (5) · Accuracy Medium (75)
- **Resistances:** Resistant to Ice (50%), Resistant to Blunt (25%). Weak to Fire (+50%), Weak to Bleed (+25%).
- **Abilities:**
  1. **Frost Pound** — Pos 1 → Hero 1–2. Blunt + Ice damage (high). 40% stun chance.
  2. **Avalanche Swipe** — Pos 1 → Hero 1–2 (both). Blunt damage (medium). Pushes both targets back 1.
  3. **Icebound Roar** — Pos 1–2 → All heroes. No damage. Applies -15% Accuracy debuff for 2 turns. Stress damage (3).
- **Dungeon Mechanic:** At T1+, Frost Pound adds 2 Frostbite stacks to target. At T3, Frozen Blood makes its stun from Frost Pound guaranteed if target is Bleeding.
- **Corpse:** Large corpse — occupies 2 positions (its position and one behind it).

---

### 3. Rimeclaw Stalker
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1–2
- **Visual:** A lean, wolf-like predator with a hide of jagged ice crystals. Moves low to the ground, its claws leaving frost trails. Six pale eyes glow in a wedge-shaped skull.
- **Stats:** HP Low (18) · Speed High (7) · Dodge High (30) · Accuracy High (85)
- **Resistances:** Resistant to Ice (50%). Weak to Fire (+50%), Weak to Lightning (+25%).
- **Abilities:**
  1. **Frost Rake** — Pos 1–2 → Hero 1–2. Slash + Ice damage (low-medium). Applies Bleed (2/rd, 3 rounds).
  2. **Lunge and Drag** — Pos 1–2 → Hero 2–3. Pierce damage (low). Pulls target forward 1 position.
  3. **Pack Howl** — Pos 1–3 → Self + all allies. Grants +10% Dodge and +1 Speed for 2 turns. Can only be used once per combat.
- **Dungeon Mechanic:** At T3, its Bleed from Frost Rake interacts with Frozen Blood — Bleed freezes, dealing the remaining Bleed damage as instant Ice damage and stunning the target for 1 turn.
- **Corpse:** Standard.

---

### 4. Frost Wraith
- **Role:** Backline Ranged
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A translucent spectral figure made of swirling ice mist, its form barely humanoid. Hollow eye sockets burn with cold blue light. Trails of frost crystals hang suspended in the air behind it.
- **Stats:** HP Low (16) · Speed High (6) · Dodge Medium (25, spectral) · Accuracy Medium (75)
- **Resistances:** Immune to Ice, Immune to Bleed, Immune to Poison. Weak to Fire (+75%), Weak to Magic (+25%).
- **Abilities:**
  1. **Freezing Touch** — Pos 3–4 → Hero 1–3. Ice + Magic damage (medium). Applies 2 Frostbite stacks.
  2. **Bitter Wind** — Pos 3–4 → Hero 3–4. Ice damage (low). Applies -20% Speed debuff for 2 turns.
  3. **Soul Chill** — Pos 3–4 → Hero 1–4 (any). No damage. Stress damage (8). Applies Frostbite (1 stack).
- **Dungeon Mechanic:** Frostbite stacks it applies count double at T2+. At T3, Soul Chill also halves healing received on target for 1 turn (Frozen Blood rider).
- **Corpse:** Dissipates — leaves no corpse.

---

### 5. Icebound Archer
- **Role:** Backline Ranged
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A frozen corpse in tattered hunter's garb, one eye socket empty and frosted over. It draws a bow of solid ice, arrows crystallizing from the air as it nocks them. Frost-blackened fingers grip with mechanical precision.
- **Stats:** HP Low-Medium (20) · Speed Medium (5) · Dodge Low (10) · Accuracy High (90)
- **Resistances:** Immune to Ice. Weak to Fire (+50%), Weak to Blunt (+25%).
- **Abilities:**
  1. **Ice Arrow** — Pos 3–4 → Hero 1–4 (any). Pierce + Ice damage (medium). High accuracy.
  2. **Pinning Shot** — Pos 3–4 → Hero 1–3. Pierce damage (low). Immobilizes target (cannot be moved) for 1 turn.
  3. **Shatter Volley** *(T2+)* — Pos 3–4 → Hero 1–2 (both). Pierce + Ice damage (low). If target has Frostbite stacks, consumes them for bonus Ice damage (4 per stack consumed).
- **Dungeon Mechanic:** Shatter Volley at T2+ detonates Frostbite stacks for burst damage. At T3, Pinning Shot also applies Frozen Blood if target is Bleeding.
- **Corpse:** Standard.

---

### 6. Permafrost Shaman
- **Role:** Support
- **Tier:** Tier 2+
- **Position:** 3–4
- **Visual:** A hunched figure in heavy furs and a mask of carved bone antlers, blue runes glowing across exposed skin. Carries a staff topped with a chunk of unmelting ice that pulses with inner light.
- **Stats:** HP Medium (24) · Speed Medium (4) · Dodge Low (10) · Accuracy Medium (70)
- **Resistances:** Resistant to Ice (75%), Resistant to Magic (25%). Weak to Fire (+50%).
- **Abilities:**
  1. **Glacial Ward** — Pos 3–4 → Ally (any). Heals 6 HP and applies Permafrost Armor (absorbs 10 damage).
  2. **Frostbite Hex** — Pos 3–4 → Hero 1–4 (any). No damage. Applies 3 Frostbite stacks and -15% damage debuff for 2 turns.
  3. **Raise Frozen** — Pos 3–4 → Ally corpse. Resurrects a dead ally at 50% HP with Permafrost Armor. 3-round cooldown.
  4. **Bitter Invocation** *(T3)* — Pos 3–4 → All allies. Applies Frozen Blood aura to all allies (melee attackers apply Frozen Blood to heroes who hit them for 1 turn).
- **Dungeon Mechanic:** Core T2 mechanic enabler — applies Permafrost Armor to allies. At T3, enables Frozen Blood interactions across the enemy team.
- **Corpse:** Standard.

---

### 7. Frozen Stitcher
- **Role:** Support
- **Tier:** All tiers
- **Position:** 2–3
- **Visual:** A skeletal figure with exposed ribcage packed with blue ice, wearing a rotted apron. Its hands are oversized, stitched together from multiple corpses, and it threads frozen sinew through a bone needle the length of a forearm.
- **Stats:** HP Medium (22) · Speed Low (3) · Dodge Low (5) · Accuracy Medium (70)
- **Resistances:** Immune to Ice, Immune to Poison. Weak to Fire (+50%), Weak to Blunt (+50%).
- **Abilities:**
  1. **Frost Stitch** — Pos 2–3 → Ally (any). Heals 8 HP. If target is undead, heals 12 instead.
  2. **Corpse Graft** — Pos 2–3 → Ally corpse. Resurrects a dead ally at 30% HP. No cooldown, but resurrected ally has -25% max HP permanently.
  3. **Needle Jab** — Pos 1–2 → Hero 1–2. Pierce damage (low). Applies Bleed (2/rd, 2 rounds).
- **Dungeon Mechanic:** At T3, Corpse Graft resurrections come back with Frozen Blood aura (attackers who hit them get healing halved for 1 turn). Enables persistent corpse cycling.
- **Corpse:** Standard.

---

### 8. Howling Wendigo
- **Role:** Stress Dealer
- **Tier:** All tiers
- **Position:** 2–3
- **Visual:** An emaciated humanoid with antlers of black ice, its mouth frozen open in a perpetual scream. Its elongated limbs end in frost-blackened claws. Wisps of cold air stream from its throat like breath made visible.
- **Stats:** HP Low (14) · Speed High (7) · Dodge Medium (20) · Accuracy Medium (75)
- **Resistances:** Resistant to Ice (50%). Weak to Fire (+50%), Weak to Lightning (+25%).
- **Abilities:**
  1. **Frozen Wail** — Pos 2–4 → Hero 1–4 (all). No damage. Stress damage (6 to all heroes). 1 Frostbite stack to random hero.
  2. **Gnaw** — Pos 1–2 → Hero 1–2. Slash damage (low). Applies Bleed (3/rd, 2 rounds). Self-heals 4 HP.
  3. **Dread Presence** — Passive. While alive, all heroes receive +2 stress at the start of each round.
- **Dungeon Mechanic:** At T3, Frozen Wail's Frostbite application hits all heroes instead of random. If heroes are Bleeding, Frozen Blood triggers stun on 1 random hero.
- **Corpse:** Standard, but while Wendigo's corpse is on the field, Dread Presence continues for 1 additional round (lingering horror).

---

### 9. Frostbitten Whisper
- **Role:** Stress Dealer
- **Tier:** Tier 2+
- **Position:** 4
- **Visual:** A barely-visible shape — little more than a vaguely humanoid outline in the frost-fog, with a single glowing blue eye. It drifts rather than walks, and ice crystals form words in the air around it that dissolve before they can be read.
- **Stats:** HP Very Low (10) · Speed High (8) · Dodge High (35) · Accuracy Low (60, but undodgeable abilities)
- **Resistances:** Immune to Ice, Immune to Bleed, Immune to Poison. Weak to Fire (+75%), Weak to Magic (+50%).
- **Abilities:**
  1. **Whisper of Despair** — Pos 4 → Hero 1–4 (any). Undodgeable. No damage. Stress damage (12). Applies -10% damage debuff for 1 turn.
  2. **Creeping Frost** — Pos 3–4 → Hero 3–4 (any). Ice damage (low). Applies 3 Frostbite stacks. Stress damage (4).
  3. **Fade** — Pos 3–4 → Self. Enters Stealth for 1 turn. While stealthed, cannot be targeted by single-target abilities.
- **Dungeon Mechanic:** At T2+, Whisper of Despair also applies 2 Frostbite stacks. Its existence makes Frostbite Gauge rise 1 point faster per round.
- **Corpse:** Dissipates — no corpse.

---

### 10. Frozen Colossus
- **Role:** Tank/Guardian
- **Tier:** All tiers
- **Position:** 1
- **Visual:** A massive humanoid figure encased entirely in thick glacial ice, twice the height of a man. Ancient armor is visible frozen within the ice. It moves with grinding, deliberate slowness, each step cracking the ground beneath it.
- **Stats:** HP Very High (55) · Speed Very Low (1) · Dodge None (0) · Accuracy Low (65)
- **Resistances:** Immune to Ice, Resistant to Blunt (50%), Resistant to Slash (25%), Resistant to Pierce (25%). Weak to Fire (+75%).
- **Abilities:**
  1. **Glacial Slam** — Pos 1 → Hero 1–2. Blunt + Ice damage (medium). 25% stun.
  2. **Ice Guard** — Pos 1 → Ally in pos 2. Guards target — all single-target attacks against guarded ally hit Colossus instead. Lasts 2 turns.
  3. **Frozen Bulwark** — Pos 1 → Self. Gains 15 temporary HP (ice shield). Applies Permafrost Armor if T2+.
  4. **Shatter Burst** *(on death)* — When killed, deals Ice damage (medium) to hero positions 1–2. Applies 3 Frostbite stacks to both.
- **Dungeon Mechanic:** At T2+, its Ice Guard also grants Permafrost Armor to the guarded ally. At T3, its death Shatter Burst applies Frozen Blood to affected heroes.
- **Corpse:** Large corpse (2 positions). Emits cold — heroes in pos 1 gain 1 Frostbite stack per round while corpse persists.

---

### 11. Shatter Spawn
- **Role:** Special/Gimmick
- **Tier:** All tiers
- **Position:** 1–2
- **Visual:** A humanoid ice sculpture, smooth and featureless except for a single crack running down its center. Faint blue light pulses within like a heartbeat. When it moves, its body creaks and splinters audibly.
- **Stats:** HP Low (15) · Speed Medium (5) · Dodge Low (10) · Accuracy Medium (75)
- **Resistances:** Immune to Ice. Weak to Fire (+50%), Weak to Blunt (+75%).
- **Abilities:**
  1. **Ice Claw** — Pos 1–2 → Hero 1–2. Slash + Ice damage (low-medium).
  2. **Frost Spit** — Pos 1–3 → Hero 2–3. Ice damage (low). Applies 1 Frostbite stack.
  3. **Fracture** *(passive, on death)* — Splits into 2 **Shard Mites** (HP 6, Speed 6, Ice Claw only — Pos 1–2 → Hero 1, Slash+Ice low damage). Shard Mites leave no corpse.
- **Dungeon Mechanic:** At T2+, Shard Mites have Permafrost Armor on spawn. At T3, Shard Mites apply Frozen Blood on hit. Punishes AoE-only strategies (killing the Spawn creates more targets).
- **Corpse:** No standard corpse — replaced by 2 Shard Mites.

---

### 12. Frostbound Detonator
- **Role:** Special/Gimmick
- **Tier:** Tier 2+
- **Position:** 1–2
- **Visual:** A bloated undead figure with a translucent belly packed with compressed ice and frozen gas. Blue veins of frost spiderweb across its taut, gray skin. It lurches forward with mindless purpose, arms outstretched.
- **Stats:** HP Medium (20) · Speed Low (3) · Dodge None (0) · Accuracy Low (65)
- **Resistances:** Immune to Ice, Immune to Stun. Weak to Fire (+50%). Resistant to all other physical (+25%).
- **Abilities:**
  1. **Shambling Grasp** — Pos 1–2 → Hero 1. Blunt damage (low). Pulls self forward 1 position if not in pos 1.
  2. **Frost Bulge** — Passive. Each round it's alive, gains +5 to its explosion damage. Visual indicator: it swells visibly.
  3. **Glacial Detonation** *(on death)* — Deals Ice damage (high, scaling with Frost Bulge stacks) to hero positions 1–3. Applies 4 Frostbite stacks to all hit. Destroys its own corpse.
- **Dungeon Mechanic:** At T3, Glacial Detonation also applies Frozen Blood to all hit heroes and deals bonus damage to Bleeding heroes. Creates a dilemma: kill it fast (before it bulges) or leave it alive and deal with it growing.
- **Corpse:** Self-destructs on detonation — no corpse. If killed by Fire, explodes immediately with current Frost Bulge stacks.

---

## Frozen Depths — Enemy Compositions

### 1. "The Grinding Wall"
- **Enemies:** Frozen Colossus (pos 1), Frost Revenant (pos 2), Permafrost Shaman (pos 3), Icebound Archer (pos 4)
- **Why it's dangerous:** The Colossus guards the Revenant while the Shaman keeps refreshing Permafrost Armor on both. The Archer punishes Frostbite stacks with Shatter Volley. You must get past the Colossus to reach the Shaman, but killing the Colossus triggers its death burst. Prioritize: Shaman > Archer > Colossus > Revenant.
- **Tier:** T2+ (Shaman is T2+)

### 2. "Howling Pack"
- **Enemies:** Rimeclaw Stalker (pos 1), Rimeclaw Stalker (pos 2), Howling Wendigo (pos 3)
- **Why it's dangerous:** Two fast Stalkers apply Bleed and drag heroes forward while the Wendigo's passive stress aura and Frozen Wail pile on stress. At T3, Bleeds interact with Frozen Blood for stuns. Pack Howl makes the Stalkers harder to hit. Kill the Wendigo first or suffer affliction spirals.
- **Tier:** All tiers

### 3. "The Unending Dead"
- **Enemies:** Frost Revenant (pos 1), Shatter Spawn (pos 2), Frozen Stitcher (pos 3), Frost Wraith (pos 4)
- **Why it's dangerous:** The Stitcher keeps reviving whatever you kill. Kill the Spawn and it splits into Mites, clogging the field. The Wraith piles Frostbite from safety. The composition punishes both single-target and AoE strategies — focus the Stitcher but it's in the back.
- **Tier:** All tiers

### 4. "Frostbitten Despair"
- **Enemies:** Frostbound Detonator (pos 1), Howling Wendigo (pos 2), Frostbitten Whisper (pos 4)
- **Why it's dangerous:** Double stress pressure from the Wendigo and Whisper forces heroes toward affliction. The Detonator creates a ticking bomb — ignore it and it detonates catastrophically, but killing it triggers the blast too. The Whisper fades in and out of stealth, making it hard to eliminate. Pure psychological warfare.
- **Tier:** T2+ (Whisper and Detonator are T2+)

### 5. "Avalanche Formation"
- **Enemies:** Glacial Mauler (pos 1), Frost Revenant (pos 2), Icebound Archer (pos 3), Permafrost Shaman (pos 4)
- **Why it's dangerous:** The Mauler pushes heroes back with Avalanche Swipe, displacing your party positioning. The Revenant follows up on displaced heroes. The Archer detonates Frostbite stacks. The Shaman heals and armors. Heavy disruption of party positioning plus attrition damage.
- **Tier:** T2+

### 6. "Splinter Tide"
- **Enemies:** Shatter Spawn (pos 1), Shatter Spawn (pos 2), Frozen Stitcher (pos 3), Frost Wraith (pos 4)
- **Why it's dangerous:** Killing either Spawn creates 2 Mites each, potentially flooding the field with 4+ small enemies. The Stitcher can revive destroyed Spawns. The Wraith applies Frostbite to fuel the chaos. An overwhelming numbers game — requires careful kill order and AoE management.
- **Tier:** All tiers

---
---

# 2. The Howling Spire (Wind Theme)

## Enemies

---

### 1. Galetalon Harpy
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1–2
- **Visual:** A lean, feathered humanoid with razor-edged wings folded tight against its arms. Its talons are black iron, and wind visibly spirals around its body. Its face is avian — sharp beak, darting predator eyes.
- **Stats:** HP Low (16) · Speed High (8) · Dodge High (30) · Accuracy Medium (75)
- **Resistances:** Resistant to Wind (50%), Resistant to Pierce (25%). Weak to Ice (+50%), Weak to Lightning (+25%).
- **Abilities:**
  1. **Talon Rend** — Pos 1–2 → Hero 1–2. Slash + Wind damage (medium). Applies Bleed (2/rd, 2 rounds).
  2. **Buffeting Strike** — Pos 1–3 → Hero 1–3. Wind damage (low). Pushes target back 1 position. Pushes self back 1 position.
  3. **Dive** — Pos 2–3 → Hero 1–2. Pierce + Wind damage (medium-high). Moves self to pos 1. 2-round cooldown.
- **Dungeon Mechanic:** At T1+, Buffeting Strike interacts with Gale — affected heroes may be shifted an additional position. At T2+, Dive can place a temporary Wind Wall in the position it left.
- **Corpse:** Standard.

---

### 2. Stonewind Gargoyle
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1–2
- **Visual:** A squat, heavy gargoyle carved from dark stone, with bat-like wings folded on its back. Wind erosion has carved grooves into its hide. Its eyes are hollow, and dust and grit swirl in a permanent vortex around its fists.
- **Stats:** HP High (38) · Speed Low (2) · Dodge Low (5) · Accuracy Medium (75)
- **Resistances:** Resistant to Wind (75%), Resistant to Slash (50%), Resistant to Pierce (25%). Weak to Blunt (+50%), Weak to Lightning (+25%).
- **Abilities:**
  1. **Gritblast Fist** — Pos 1–2 → Hero 1–2. Blunt + Wind damage (medium). Applies -15% Accuracy debuff for 2 turns (grit in the eyes).
  2. **Stone Guard** — Pos 1–2 → Ally pos 2–3. Guards target for 2 turns.
  3. **Windbreak** — Pos 1 → Self. Gains +50% physical resistance for 1 turn. Creates a Wind Wall in the position behind it (blocks forced movement through that position).
- **Dungeon Mechanic:** At T2+, Windbreak's Wind Wall blocks hero ranged attacks that pass through that position (reducing accuracy by 30%). At T3, Tempest Rage makes its melee more reliable (+15% accuracy) while heroes suffer ranged penalties.
- **Corpse:** Heavy corpse — takes 2 hits to clear instead of 1.

---

### 3. Storm Cultist
- **Role:** Backline Ranged
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A gaunt figure in tattered gray robes, face hidden behind a mask shaped like a screaming wind. Hands crackle with pale lightning and gusts of wind spiral up their forearms. Trinkets of bone and feather rattle from chains at their waist.
- **Stats:** HP Low (16) · Speed Medium (5) · Dodge Medium (15) · Accuracy Medium (75)
- **Resistances:** Resistant to Wind (50%), Resistant to Lightning (25%). Weak to Ice (+25%), Weak to Pierce (+25%).
- **Abilities:**
  1. **Gust Bolt** — Pos 3–4 → Hero 1–4 (any). Wind + Lightning damage (medium).
  2. **Invoke Gale** — Pos 3–4 → Hero 1–2 (both). Wind damage (low). Shifts both targets to random positions. 2-round cooldown.
  3. **Raise Wind Wall** *(T2+)* — Pos 3–4 → Any allied position. Creates a Wind Wall that blocks forced movement and reduces ranged accuracy through it by 30%. Lasts 2 rounds.
- **Dungeon Mechanic:** Invoke Gale is the primary Gale mechanic enabler — forcibly repositions heroes. At T2+, actively creates Wind Walls to protect backline. At T3, Gust Bolt gains +25% damage (Tempest Rage buff).
- **Corpse:** Standard.

---

### 4. Gale Marksman
- **Role:** Backline Ranged
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A lean, armored figure in wind-worn leather, with a crossbow that has feathered wind-charms tied along its limbs. One eye is replaced with a pale crystal that glows faintly. A short cape whips perpetually behind them.
- **Stats:** HP Low (15) · Speed Medium (5) · Dodge Medium (15) · Accuracy Very High (95)
- **Resistances:** Resistant to Wind (25%). Weak to Blunt (+25%), Weak to Fire (+25%).
- **Abilities:**
  1. **Windguided Bolt** — Pos 3–4 → Hero 1–4 (any). Pierce + Wind damage (medium). Undodgeable (wind-guided). Counters dodge-heavy parties.
  2. **Pinning Gust** — Pos 3–4 → Hero 2–3. Pierce damage (low). Immobilizes target for 1 turn.
  3. **Called Shot** — Pos 3–4 → Hero 1–4 (any). Pierce damage (high). 3-round cooldown. Applies Mark for 2 turns.
- **Dungeon Mechanic:** At T3, Windguided Bolt gains bonus damage during Tempest Rage (wind-boosted ranged exception — this enemy is designed as a "wind-adapted" ranged fighter).
- **Corpse:** Standard.

---

### 5. Windweaver Acolyte
- **Role:** Support
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A young woman in flowing robes that never stop billowing. Her hair streams upward as if she's perpetually falling. She holds her hands apart, and between them spins a miniature tornado of pale light.
- **Stats:** HP Low (14) · Speed Medium (5) · Dodge Medium (20) · Accuracy Low (65)
- **Resistances:** Resistant to Wind (50%). Weak to Ice (+25%), Weak to Pierce (+50%).
- **Abilities:**
  1. **Tailwind** — Pos 3–4 → Ally (any). Grants +3 Speed and +20% Dodge for 2 turns.
  2. **Healing Gust** — Pos 3–4 → Ally (any). Heals 8 HP. Pushes target forward 1 position.
  3. **Scatter Gale** — Pos 3–4 → Hero party. Shuffles 2 random heroes to different positions. No damage.
- **Dungeon Mechanic:** At T2+, Scatter Gale can place Wind Walls in the vacated positions. At T3, Tailwind also grants immunity to Tempest Rage's ranged accuracy penalty for the buffed ally.
- **Corpse:** Standard.

---

### 6. Shriekspire Banshee
- **Role:** Stress Dealer
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A spectral figure of a woman whose lower body dissolves into a screaming vortex of wind. Her mouth is impossibly wide, and her scream manifests as visible distortion waves. Phantom tears stream horizontally from her eyes.
- **Stats:** HP Low (12) · Speed High (7) · Dodge High (30) · Accuracy Low (60, abilities undodgeable)
- **Resistances:** Immune to Wind, Immune to Bleed. Weak to Magic (+50%), Weak to Lightning (+25%).
- **Abilities:**
  1. **Banshee Wail** — Pos 3–4 → All heroes. Undodgeable. No damage. Stress damage (7 to all). Applies -10% Accuracy debuff for 1 turn.
  2. **Keening Lament** — Pos 3–4 → Hero 1–4 (any). Undodgeable. No damage. Stress damage (15 to single target). If target is already at 50+ stress, additional +5 stress.
  3. **Fade Into Wind** — Pos 3–4 → Self. Enters Stealth. While stealthed, immune to single-target attacks. Lasts 1 turn.
- **Dungeon Mechanic:** At T3, Banshee Wail pushes all heroes back 1 position (Tempest Rage wind). Priority kill target — devastating stress if left alive.
- **Corpse:** Dissipates — no corpse.

---

### 7. Petrified Sentinel
- **Role:** Tank/Guardian
- **Tier:** All tiers
- **Position:** 1
- **Visual:** A massive gargoyle three times the size of a man, carved from veined gray stone, crouched in a protective stance with wings spread wide. Glowing wind runes are etched into its chest and forearms. Its face is blank — no eyes, no mouth, just smooth stone.
- **Stats:** HP Very High (52) · Speed Very Low (1) · Dodge None (0) · Accuracy Low (60)
- **Resistances:** Resistant to Wind (75%), Resistant to Slash (50%), Resistant to Pierce (50%), Resistant to Bleed (75%). Weak to Blunt (+50%), Weak to Lightning (+50%).
- **Abilities:**
  1. **Stone Fist** — Pos 1 → Hero 1. Blunt damage (medium-high). 30% stun.
  2. **Wing Shield** — Pos 1 → Allies in pos 2–3. Guards both targets for 2 turns. Cannot be used consecutive rounds.
  3. **Anchored** — Passive. Immune to forced movement. While alive, allies in pos 2–3 cannot be pushed forward (wind barrier).
- **Dungeon Mechanic:** At T2+, its Wing Shield also creates Wind Walls behind it. At T3, benefits from Tempest Rage's melee reliability bonus.
- **Corpse:** Massive corpse — occupies 2 positions. Very hard to clear (3 hits).

---

### 8. Zephyr Imp
- **Role:** Special/Gimmick
- **Tier:** All tiers
- **Position:** Any (highly mobile)
- **Visual:** A tiny, cackling creature the size of a cat, with translucent dragonfly wings and a body like a gnarled twig wrapped in wind. It moves so fast it appears as a blur, leaving afterimages. Its face is all sharp teeth and mischief.
- **Stats:** HP Very Low (8) · Speed Very High (9) · Dodge Very High (40) · Accuracy Medium (70)
- **Resistances:** Resistant to Wind (75%). Weak to Ice (+50%), Weak to Lightning (+75%).
- **Abilities:**
  1. **Nip** — Any pos → Hero 1–4 (any). Pierce damage (very low). Applies -5% Dodge debuff (stacking, 3 turns).
  2. **Gust Prank** — Any pos → Hero 1–4 (any). No damage. Swaps target with an adjacent hero. Imp moves to a random position.
  3. **Annoying Buzz** — Any pos → Hero 1–4 (any). No damage. Stress damage (5). Imp moves to a random position afterward.
- **Dungeon Mechanic:** Gust Prank interacts with Gale — at higher tiers, the swap can chain with the Gale mechanic for extreme repositioning. At T2+, it can swap through Wind Walls (ignores them). Infuriating disruption enemy.
- **Corpse:** Tiny corpse — dissipates after 1 round.

---

### 9. Tempest Elemental
- **Role:** Special/Gimmick
- **Tier:** Tier 2+
- **Position:** 2–3
- **Visual:** A swirling column of compressed wind given vaguely humanoid shape — arms of spinning air, a torso of debris and dust, and two blazing white eyes in a featureless face. Lightning occasionally arcs within its form.
- **Stats:** HP Medium (25) · Speed Medium (5, increases) · Dodge Medium (20) · Accuracy Medium (75)
- **Resistances:** Immune to Wind, Resistant to Lightning (50%). Weak to Ice (+50%), Weak to Fire (+25%).
- **Abilities:**
  1. **Gale Strike** — Pos 2–3 → Hero 1–3. Wind damage (medium, scales with Wind Charge). Pushes target back 1.
  2. **Cyclone Buildup** — Passive. Gains 1 Wind Charge per round. Each charge grants +1 Speed, +5% damage, +5% Dodge. At 5 charges, unlocks Tempest Burst.
  3. **Tempest Burst** *(5 charges required)* — Pos 2–3 → All heroes. Wind + Lightning damage (very high). Pushes all heroes back 1. Resets Wind Charges to 0. Devastates if left alive too long.
- **Dungeon Mechanic:** At T3, Tempest Rage accelerates its charge rate to 2 per round. Must be killed before it reaches 5 charges or it team-wipes.
- **Corpse:** Dissipates — no corpse. On death, releases a final gust that shifts hero positions 1 randomly.

---

### 10. Vortex Wraith
- **Role:** Special/Gimmick
- **Tier:** All tiers
- **Position:** 2–3
- **Visual:** A ghostly figure wrapped in chains of solidified wind. It hovers slightly above the ground, and its lower half spirals into a funnel of debris and mist. Its arms reach forward as if pulling everything toward itself.
- **Stats:** HP Medium (20) · Speed Medium (5) · Dodge Medium (20) · Accuracy Medium (70)
- **Resistances:** Immune to Wind. Weak to Magic (+50%), Weak to Lightning (+25%).
- **Abilities:**
  1. **Pull** — Pos 2–3 → Hero 3–4. No damage. Pulls target forward 2 positions. 
  2. **Scatter** — Pos 2–3 → Hero 1–2. Wind damage (low). Pushes target back 2 positions.
  3. **Vortex Drain** — Pos 2–3 → Hero pulled to pos 1. Wind + Magic damage (medium). Heals self for damage dealt. Can only target hero in pos 1.
- **Dungeon Mechanic:** The primary position-manipulation enemy. At T1+, works with Gale to keep heroes permanently displaced. At T2+, can pull heroes through Wind Walls (dragging them takes damage). At T3, Vortex Drain benefits from Tempest Rage wind boost.
- **Corpse:** Standard.

---

### 11. Updraft Zealot
- **Role:** Frontline Melee
- **Tier:** Tier 2+
- **Position:** 1–2
- **Visual:** A wild-eyed cultist in shredded robes, hovering inches above the ground on currents of wind. Ritual scars cover their arms, and they wield twin curved blades that sing when swung. Their hair floats in a permanent updraft.
- **Stats:** HP Medium (22) · Speed High (7) · Dodge Medium (25) · Accuracy High (85)
- **Resistances:** Resistant to Wind (50%). Weak to Ice (+25%), Weak to Blunt (+25%).
- **Abilities:**
  1. **Windcutter** — Pos 1–2 → Hero 1–2. Slash + Wind damage (medium-high).
  2. **Gale Step** — Pos 1–3 → Self. Moves to any position. Gains +10% Dodge for 1 turn.
  3. **Death Wind** *(T3)* — Pos 1–2 → Hero on Death's Door. Slash + Wind damage (low). Undodgeable. Designed to execute heroes on Death's Door.
- **Dungeon Mechanic:** At T3, benefits from Tempest Rage melee bonus. Death Wind makes it an execution threat — must be killed before it reaches weakened heroes.
- **Corpse:** Standard.

---

## Howling Spire — Enemy Compositions

### 1. "The Displacement Engine"
- **Enemies:** Vortex Wraith (pos 2), Storm Cultist (pos 3), Galetalon Harpy (pos 1), Windweaver Acolyte (pos 4)
- **Why it's dangerous:** Constant hero repositioning from all angles — Pull, Invoke Gale, Buffeting Strike, Scatter Gale. Heroes can never settle into their preferred positions. The Acolyte buffs ally speed/dodge to keep the machine running. Prioritize: Vortex Wraith or Acolyte.
- **Tier:** All tiers

### 2. "Stone and Squall"
- **Enemies:** Petrified Sentinel (pos 1), Stonewind Gargoyle (pos 2), Storm Cultist (pos 3), Gale Marksman (pos 4)
- **Why it's dangerous:** Massive front wall — Sentinel guards the Gargoyle, Gargoyle guards the Cultist. Wind Walls block access to backline. The Marksman's undodgeable bolts punish dodge-heavy parties that can't burst through stone. Requires Blunt damage to crack.
- **Tier:** All tiers

### 3. "Harassment Swarm"
- **Enemies:** Zephyr Imp (pos 2), Zephyr Imp (pos 3), Shriekspire Banshee (pos 4)
- **Why it's dangerous:** Two Imps constantly shuffling heroes and debuffing dodge while the Banshee applies devastating stress. All three are hard to hit (high dodge/stealth). Low damage but causes affliction spirals if not killed quickly. Requires AoE or high accuracy.
- **Tier:** All tiers

### 4. "The Rising Storm"
- **Enemies:** Updraft Zealot (pos 1), Tempest Elemental (pos 2), Windweaver Acolyte (pos 3), Shriekspire Banshee (pos 4)
- **Why it's dangerous:** A ticking clock — the Tempest Elemental charges toward Tempest Burst while the Acolyte buffs its speed and the Banshee applies stress. The Zealot threatens execution on Death's Door heroes. Must kill the Elemental before 5 charges or face a devastating AoE.
- **Tier:** T2+

### 5. "Gale Ambush"
- **Enemies:** Galetalon Harpy (pos 1), Galetalon Harpy (pos 2), Gale Marksman (pos 3)
- **Why it's dangerous:** Fast, high-dodge pack. Both Harpies apply Bleed and reposition heroes, then the Marksman picks off priority targets with undodgeable Called Shots. Small group but extremely fast — likely acts before most heroes. Requires AoE or tank strategies.
- **Tier:** All tiers

### 6. "The Screaming Wall"
- **Enemies:** Petrified Sentinel (pos 1), Updraft Zealot (pos 2), Shriekspire Banshee (pos 3), Storm Cultist (pos 4)
- **Why it's dangerous:** Sentinel walls off the backline while the Banshee and Cultist create chaos. The Zealot executes weakened heroes. Wind Walls from the Sentinel and Cultist block ranged access to the Banshee. Forces melee approach through a stun-capable tank.
- **Tier:** T2+

---
---

# 3. The Shattered Conduit (Lightning Theme)

## Enemies

---

### 1. Voltaic Golem
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1–2
- **Visual:** A humanoid construct of dark iron and copper, crackling with arcs of lightning between exposed conduits in its joints. Its fists are oversized capacitor banks. One eye socket glows electric blue; the other is shattered.
- **Stats:** HP High (36) · Speed Low (3) · Dodge Low (5) · Accuracy Medium (75)
- **Resistances:** Immune to Lightning, Resistant to Blunt (25%), Resistant to Poison (50%), Immune to Bleed. Weak to Ice (+25%), Weak to Magic (+50%).
- **Abilities:**
  1. **Arc Fist** — Pos 1–2 → Hero 1–2. Blunt + Lightning damage (medium-high). 25% stun.
  2. **Discharge Pulse** — Pos 1–2 → Hero 1–3 (all). Lightning damage (low). Triggers if Golem is hit by a Lightning or Magic ability (reactive, once per round).
  3. **Grounding Slam** — Pos 1 → Hero 1. Blunt damage (high). Removes all buffs from target.
- **Dungeon Mechanic:** At T1+, Surge Rounds that hit the Golem charge it — next Arc Fist deals +50% damage. At T2+, counts toward Overload threshold when it uses abilities. At T3, Conductive Chains can tether through it.
- **Corpse:** Sparking corpse — heroes in pos 1 take Lightning damage (2) per round while corpse persists.

---

### 2. Chained Berserker
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1
- **Visual:** A hulking, scarred human wrapped in heavy chains that pulse with lightning. Its eyes are wild and unseeing, mouth fixed in a rictus of pain. Electrode bolts are driven into its spine and shoulders. It strains against its chains with every movement.
- **Stats:** HP Medium (30) · Speed Medium (5) · Dodge Low (10) · Accuracy High (85)
- **Resistances:** Resistant to Lightning (50%). Weak to Ice (+25%), Weak to Magic (+25%).
- **Abilities:**
  1. **Chain Lash** — Pos 1 → Hero 1–2. Slash + Lightning damage (medium). Applies Bleed (2/rd, 2 rounds).
  2. **Frenzy** — Passive. When below 50% HP, gains +25% damage, +2 Speed, and attacks twice per turn (second attack at reduced accuracy).
  3. **Conductive Grasp** — Pos 1 → Hero 1. Blunt damage (low). Tethers target — for 2 turns, 30% of damage dealt to either transfers to the other.
- **Dungeon Mechanic:** At T3, Conductive Grasp creates a Conductive Chain — if the tethered hero is hit by a Surge Round, the Berserker absorbs the damage (charging its Frenzy). Conversely, damage to the Berserker shocks the hero.
- **Corpse:** Chains remain — corpse acts as a conductor. Surge Rounds that hit the corpse arc to adjacent hero positions.

---

### 3. Spark Elemental
- **Role:** Backline Ranged
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A floating orb of concentrated lightning, roughly head-sized, with crackling tendrils that lash outward like tentacles. It moves erratically, blinking between positions. The air around it smells of ozone and scorched metal.
- **Stats:** HP Low (14) · Speed Very High (9) · Dodge High (35) · Accuracy Medium (75)
- **Resistances:** Immune to Lightning, Immune to Stun. Weak to Ice (+75%), Weak to Wind (+25%).
- **Abilities:**
  1. **Lightning Lash** — Pos 3–4 → Hero 1–4 (any). Lightning damage (medium).
  2. **Arc Jump** — Pos 3–4 → Hero 1–4 (any). Lightning damage (low). If target is adjacent to another hero, arcs to them for half damage.
  3. **Overcharge** — Pos 3–4 → Self. Sacrifices 25% of current HP. Next Lightning Lash deals double damage and stuns (50% chance).
- **Dungeon Mechanic:** At T2+, every ability it uses counts double toward the Overload threshold. At T3, Arc Jump's arc chains along Conductive Chains, potentially hitting the entire party.
- **Corpse:** Dissipates in a final spark — no corpse. Deals Lightning damage (3) to a random hero on death.

---

### 4. Mad Artificer
- **Role:** Backline Ranged / Support hybrid
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A wild-haired human in a scorched leather apron, goggles permanently fused to their face by melted glass. They carry a bandolier of sparking vials and a hand-cranked generator on their back. One arm is a crude prosthetic of copper and wire.
- **Stats:** HP Low-Medium (18) · Speed Medium (5) · Dodge Low (10) · Accuracy Medium (75)
- **Resistances:** Resistant to Lightning (25%). Weak to Slash (+25%), Weak to Fire (+25%).
- **Abilities:**
  1. **Shock Grenade** — Pos 3–4 → Hero 2–3 (both). Lightning damage (medium). 20% stun to each.
  2. **Repair** — Pos 3–4 → Construct ally. Heals 10 HP. Grants +10% damage for 2 turns. Only works on Golems/constructs.
  3. **Overload Bomb** *(T2+)* — Pos 3–4 → Hero 1–4 (any). Magic + Lightning damage (low). Forces target's next ability to count double toward Overload threshold.
  4. **Deploy Turret** *(T3, once per combat)* — Pos 3–4 → Creates a **Shock Turret** in an empty ally position (HP 8, acts each round: Lightning damage low to random hero, stacks Overload).
- **Dungeon Mechanic:** Core mechanic enabler. Repair keeps constructs alive. Overload Bomb weaponizes the Overload mechanic against spell-heavy parties. Deploy Turret at T3 adds another source of Overload pressure.
- **Corpse:** Standard. Drops a sparking device — 50% chance to deal Lightning damage (5) to hero who clears the corpse.

---

### 5. Circuit Priest
- **Role:** Support
- **Tier:** Tier 2+
- **Position:** 3–4
- **Visual:** A robed figure with circuit-like tattoos of silver running across all visible skin. Its head is shaved and capped with a metal skullcap connected by wires to a humming backpack generator. It chants in a monotone, and electricity follows the patterns of its tattoos as it speaks.
- **Stats:** HP Medium (22) · Speed Medium (4) · Dodge Low (10) · Accuracy Medium (70)
- **Resistances:** Resistant to Lightning (75%), Resistant to Magic (25%). Weak to Blunt (+50%), Weak to Bleed (+25%).
- **Abilities:**
  1. **Galvanic Prayer** — Pos 3–4 → Ally (any). Heals 8 HP. Grants Lightning resistance (+25%) for 2 turns.
  2. **Conductive Link** — Pos 3–4 → 2 allies. Links them — damage to one heals the other for 25% of damage taken. Lasts 3 turns.
  3. **Chain Lightning Benediction** — Pos 3–4 → All allies. Grants all allies' melee attacks +Lightning rider damage (3) for 2 turns. 3-round cooldown.
  4. **Resurrect Construct** *(T3)* — Pos 3–4 → Construct corpse. Revives at 40% HP. Only works on Golem/construct corpses. 4-round cooldown.
- **Dungeon Mechanic:** Conductive Link creates artificial Conductive Chains between enemies at T3, making it harder to focus damage. Chain Lightning Benediction weaponizes the frontline.
- **Corpse:** Standard.

---

### 6. Frequency Screamer
- **Role:** Stress Dealer
- **Tier:** All tiers
- **Position:** 2–3
- **Visual:** A hunched, twitching figure with metal rods driven through its skull at regular intervals like a crown of antennae. Its mouth has been replaced with a speaker-like apparatus of metal and wire. It vibrates visibly, emitting a constant low hum.
- **Stats:** HP Low (12) · Speed High (7) · Dodge Medium (15) · Accuracy Low (55, undodgeable abilities)
- **Resistances:** Resistant to Lightning (50%). Weak to Blunt (+50%), Weak to Ice (+25%).
- **Abilities:**
  1. **Resonance Shriek** — Pos 2–4 → All heroes. Undodgeable. No damage. Stress damage (6 to all). Heroes with metal equipment (Knight, certain gear) take +3 additional stress.
  2. **Feedback Loop** — Pos 2–3 → Hero 1–4 (any). Undodgeable. Lightning damage (very low). Stress damage (10). If target uses an ability next turn, takes Lightning damage (5).
  3. **Static Cling** — Passive. While alive, heroes' healing abilities count toward Overload threshold at T2+.
- **Dungeon Mechanic:** At T2+, Static Cling means healing triggers Overload. Devastating interaction — forces players to choose between healing and avoiding Overload discharge. Must be killed quickly.
- **Corpse:** Hums for 1 round after death — stress damage (3) to all heroes for that round.

---

### 7. Charged Sentinel
- **Role:** Tank/Guardian
- **Tier:** All tiers
- **Position:** 1
- **Visual:** An enormous iron golem with a furnace-like core visible through grating in its chest, filled with captured lightning. Its arms end in massive shield-plates instead of hands. Arcs of electricity jump between the plates continuously.
- **Stats:** HP Very High (50) · Speed Very Low (1) · Dodge None (0) · Accuracy Low (60)
- **Resistances:** Immune to Lightning, Immune to Stun, Resistant to all physical (25%). Weak to Magic (+50%), Weak to Ice (+25%).
- **Abilities:**
  1. **Shield Bash** — Pos 1 → Hero 1. Blunt + Lightning damage (medium). 35% stun.
  2. **Arc Shield** — Pos 1 → Ally in pos 2. Guards target. Any attacker that hits the Sentinel during Guard takes Lightning damage (4) as retaliation.
  3. **Capacitor Burst** *(when below 25% HP)* — Pos 1 → Hero 1–3 (all). Lightning damage (high). 50% stun to all. Self-destructs (dies). One-time trigger.
- **Dungeon Mechanic:** At T1+, absorbs Surge Rounds harmlessly (protects allies behind it). At T2+, attacks against it don't count toward Overload. At T3, Conductive Chains cannot pass through it (acts as insulator for allies behind).
- **Corpse:** Massive. 3 hits to clear. Emits residual charge — Surge Rounds that hit the corpse redirect to random hero.

---

### 8. Arc Spider
- **Role:** Special/Gimmick
- **Tier:** All tiers
- **Position:** 1–3 (mobile)
- **Visual:** A mechanical spider the size of a large dog, made of brass and copper with crystal capacitor nodes at each leg joint. It skitters erratically, leaving scorch marks. Its abdomen is a glass sphere filled with churning electricity.
- **Stats:** HP Low (12) · Speed High (7) · Dodge High (25) · Accuracy High (80)
- **Resistances:** Immune to Lightning, Immune to Poison. Weak to Blunt (+50%), Weak to Ice (+50%).
- **Abilities:**
  1. **Shock Bite** — Pos 1–2 → Hero 1–2. Pierce + Lightning damage (low-medium). Applies Mark for 2 turns.
  2. **Web Tether** — Pos 1–3 → Hero 1–4 (any). No damage. Tethers target — target cannot change position for 2 turns.
  3. **Scuttle** — Any pos → Self. Moves to any position. Gains +10% Dodge for 1 turn.
- **Dungeon Mechanic:** Web Tether at T3 creates a Conductive Chain to the tethered hero. Marks from Shock Bite make the target take +25% damage from all sources. Combos with other lightning enemies.
- **Corpse:** Small metallic corpse. 50% chance to shock hero who clears it (Lightning damage 3).

---

### 9. Overcharged Juggernaut
- **Role:** Special/Gimmick
- **Tier:** Tier 2+
- **Position:** 1
- **Visual:** A massive, unstable golem twice the size of a Voltaic Golem, with cracks in its iron hull leaking blinding white lightning. It shudders and sparks with every step. Parts of it are melting, and it moves with lurching, unpredictable violence.
- **Stats:** HP High (40) · Speed Medium (4) · Dodge None (0) · Accuracy Medium (70)
- **Resistances:** Immune to Lightning, Immune to Stun. Weak to Ice (+50%), Weak to Magic (+25%).
- **Abilities:**
  1. **Overload Smash** — Pos 1 → Hero 1–2. Blunt + Lightning damage (very high). Self-damage (5). 40% stun.
  2. **Unstable** — Passive. Takes 3 self-damage at the start of each of its turns. When it dies, triggers Meltdown.
  3. **Meltdown** *(on death)* — Lightning + Fire damage (high) to hero positions 1–3. Applies Stun (50%) and Mark to all hit. Destroys own corpse.
- **Dungeon Mechanic:** At T2+, its abilities each count as 3 toward Overload (it's already overloaded). At T3, Meltdown creates Conductive Chains between all heroes it hits, linking them for 3 turns. Ticking bomb — kill it from range if possible.
- **Corpse:** Self-destructs via Meltdown.

---

### 10. Tether Drone
- **Role:** Special/Gimmick
- **Tier:** Tier 2+
- **Position:** 2–3
- **Visual:** A hovering metal sphere the size of a basketball, with four articulated arms ending in clamp-hooks. Thin wires trail from it, sparking intermittently. It hums at a frequency that sets teeth on edge.
- **Stats:** HP Very Low (8) · Speed High (8) · Dodge High (30) · Accuracy High (85)
- **Resistances:** Immune to Lightning, Immune to Poison, Immune to Bleed. Weak to Blunt (+75%), Weak to Ice (+50%).
- **Abilities:**
  1. **Tether Clamp** — Pos 2–3 → Hero 1–4 (any). No damage. Creates a Conductive Chain between target and an adjacent hero (or enemy). Lasts 3 turns.
  2. **Spark Jolt** — Pos 2–3 → Hero with Conductive Chain. Lightning damage (medium). Chains to linked target for half damage.
  3. **Emergency Evade** — Passive. First hit each combat that would kill it reduces it to 1 HP instead.
- **Dungeon Mechanic:** Primary T3 Conductive Chain enabler. Creates chains that link heroes together, causing shared damage. Must be killed quickly but Emergency Evade means it survives one lethal blow. Designed for T2+ when chains become relevant.
- **Corpse:** Falls to ground with a clatter. No special effect.

---

### 11. Galvanic Leech
- **Role:** Stress Dealer / Support hybrid
- **Tier:** Tier 3+
- **Position:** 3–4
- **Visual:** A writhing, eel-like creature made of exposed muscle and copper wire, coiled around a floating metal rod. It pulses with stolen electricity, growing brighter as it feeds. Its mouth is a lamprey-like circle of rotating metal teeth.
- **Stats:** HP Low (14) · Speed High (6) · Dodge Medium (20) · Accuracy Medium (70)
- **Resistances:** Immune to Lightning. Weak to Ice (+50%), Weak to Slash (+50%).
- **Abilities:**
  1. **Nerve Shock** — Pos 3–4 → Hero 1–4 (any). Lightning damage (low). Stress damage (8). Drains 3 HP from target, heals self.
  2. **Siphon Charge** — Pos 3–4 → Hero 1–4 (any). Steals one buff from target (if any). Applies the buff to a random ally instead.
  3. **Power Feed** — Pos 3–4 → Construct ally. Heals 6 HP. Grants +1 Speed for rest of combat (stacking). Can supercharge Golems.
- **Dungeon Mechanic:** Siphon Charge steals hero buffs, denying party support. Power Feed synergizes with constructs. At T3, its Nerve Shock creates mini-Conductive Chains (1-turn duration) between the target and an adjacent hero.
- **Corpse:** Standard.

---

## Shattered Conduit — Enemy Compositions

### 1. "The Iron Wall"
- **Enemies:** Charged Sentinel (pos 1), Voltaic Golem (pos 2), Circuit Priest (pos 3), Mad Artificer (pos 4)
- **Why it's dangerous:** Two constructs in front, two supports behind. The Priest links them and adds Lightning rider damage. The Artificer repairs them and deploys turrets. The Sentinel retaliates when attacked during Guard. Must break through construct armor to reach supports.
- **Tier:** T2+

### 2. "Chain Lightning"
- **Enemies:** Chained Berserker (pos 1), Tether Drone (pos 2), Spark Elemental (pos 3), Circuit Priest (pos 4)
- **Why it's dangerous:** The Drone tethers heroes together, the Spark Elemental's Arc Jump chains along tethers, and the Berserker's Conductive Grasp links a hero to itself. The Priest links allies defensively. Damage cascades through the party. AoE against you — single target to escape.
- **Tier:** T2+ (T3 for full chains)

### 3. "Overload Pressure"
- **Enemies:** Frequency Screamer (pos 2), Mad Artificer (pos 3), Spark Elemental (pos 4)
- **Why it's dangerous:** The Screamer's Static Cling makes healing count toward Overload. The Artificer's Overload Bomb forces abilities to double-count. The Spark Elemental double-counts naturally. Spell-heavy and heal-heavy parties trigger constant Overload discharges. Forces physical-only strategies.
- **Tier:** T2+

### 4. "The Walking Bomb"
- **Enemies:** Overcharged Juggernaut (pos 1), Arc Spider (pos 2), Frequency Screamer (pos 3)
- **Why it's dangerous:** The Juggernaut is a ticking bomb that deals massive AoE on death. The Spider marks targets for bonus damage. The Screamer stresses the party while they try to manage the situation. Kill the Juggernaut from range to avoid Meltdown — but the Spider can web your ranged heroes in place.
- **Tier:** T2+

### 5. "Swarm and Shock"
- **Enemies:** Arc Spider (pos 1), Arc Spider (pos 2), Spark Elemental (pos 3), Galvanic Leech (pos 4)
- **Why it's dangerous:** Two Spiders apply Marks and Web Tethers, the Spark Elemental chains damage along tethers, and the Leech steals buffs and feeds constructs. Fast, evasive pack. Requires AoE or Blunt damage to efficiently clear.
- **Tier:** T3

### 6. "The Conductor's Orchestra"
- **Enemies:** Voltaic Golem (pos 1), Tether Drone (pos 2), Galvanic Leech (pos 3), Circuit Priest (pos 4)
- **Why it's dangerous:** Complete synergy — the Drone creates Conductive Chains, the Leech supercharges the Golem, the Priest links enemies defensively and adds Lightning riders, and the Golem hits with empowered Arc Fists. Damage spreads through chains while the enemy team shares healing.
- **Tier:** T3

---
---

# 4. The Ember Sanctum (Fire Theme)

## Enemies

---

### 1. Branded Zealot
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1–2
- **Visual:** A muscular cultist with ritual burn scars forming geometric patterns across their bare torso. Their eyes glow ember-orange, and they wield a branding iron shaped like a holy symbol. Heat radiates visibly from their skin.
- **Stats:** HP Medium (26) · Speed Medium (5) · Dodge Low (10) · Accuracy High (85)
- **Resistances:** Resistant to Fire (50%). Weak to Ice (+50%), Weak to Bleed (+25%).
- **Abilities:**
  1. **Brand Strike** — Pos 1–2 → Hero 1–2. Blunt + Fire damage (medium). Applies 1 Ember Mark stack.
  2. **Zealot's Fervor** — Pos 1–2 → Self. Gains +25% damage for 2 turns. Takes 3 self-damage (burns with purpose).
  3. **Fanatical Charge** — Pos 2–3 → Hero 1–2. Slash + Fire damage (medium-high). Moves self to pos 1. 2-round cooldown.
- **Dungeon Mechanic:** Brand Strike is the core Ember Mark applicator at T2+. Each Ember Mark stack adds +2 Fire damage to all fire attacks against the marked hero. At T3, Zealots with Molten Core passive explode on death.
- **Corpse:** At T3, corpse smolders — 50% chance to deal Fire damage (3) to adjacent hero when cleared.

---

### 2. Magma Brute
- **Role:** Frontline Melee
- **Tier:** All tiers
- **Position:** 1
- **Visual:** A towering humanoid of volcanic rock, with cracks of molten lava visible between the stone plates of its body. Its arms end in club-like formations of obsidian. Smoke rises constantly from its shoulders, and its footprints glow orange.
- **Stats:** HP High (40) · Speed Low (2) · Dodge None (0) · Accuracy Medium (70)
- **Resistances:** Immune to Fire, Resistant to Slash (50%), Resistant to Pierce (25%). Weak to Ice (+75%), Weak to Wind (+25%).
- **Abilities:**
  1. **Magma Slam** — Pos 1 → Hero 1–2 (both). Blunt + Fire damage (high). Applies 2 Ember Mark stacks to both.
  2. **Lava Spew** — Pos 1 → Hero 1–3 (all). Fire damage (low). 30% chance to apply Bleed per target (molten rock shards).
  3. **Eruption** *(T3, on death)* — Deals Fire damage (very high) to hero positions 1–2. Applies 3 Ember Mark stacks. Destroys own corpse and deals Fire damage (5) to ally in pos 2.
- **Dungeon Mechanic:** At T1+, adds to Heat Gauge when using fire abilities (+2 Heat per fire ability). At T2+, Ember Marks it applies stack extra (+1 per stack). At T3, Eruption on death is the Molten Core mechanic — devastating if killed by melee.
- **Corpse:** At T3, no corpse (Eruption destroys it). Otherwise, hot corpse — heroes clearing it take Fire damage (3).

---

### 3. Embercaller
- **Role:** Backline Ranged
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A robed cultist wreathed in floating embers, face hidden behind a golden mask depicting a screaming sun. Their hands are blackened and cracked, dripping sparks. A floating brazier of blue-white flame hovers beside them.
- **Stats:** HP Low (15) · Speed Medium (5) · Dodge Low (10) · Accuracy High (80)
- **Resistances:** Resistant to Fire (75%). Weak to Ice (+50%), Weak to Blunt (+25%).
- **Abilities:**
  1. **Ember Bolt** — Pos 3–4 → Hero 1–4 (any). Fire + Magic damage (medium). Applies 1 Ember Mark.
  2. **Ignite Marks** — Pos 3–4 → Hero with Ember Marks. Consumes all Ember Mark stacks on target. Deals Fire damage equal to (5 × stacks consumed). 2-round cooldown.
  3. **Flame Shield** — Pos 3–4 → Ally (any). Grants Fire damage retaliation for 2 turns (attackers take Fire damage 3 when hitting shielded enemy).
- **Dungeon Mechanic:** Ignite Marks is the Ember Mark detonation ability — a Branded Zealot or Magma Brute stacks marks, then the Embercaller detonates for burst damage. At T2+, Ignite Marks also re-applies half the consumed stacks. Core T2 synergy.
- **Corpse:** Standard.

---

### 4. Cinder Archer
- **Role:** Backline Ranged
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A gaunt figure in charred leather armor, using a recurve bow strung with glowing wire. Arrows are tipped with smoldering pitch that ignites on release. One side of their face is a mass of burn scars, and they aim with their remaining good eye.
- **Stats:** HP Low (14) · Speed Medium (5) · Dodge Medium (15) · Accuracy High (90)
- **Resistances:** Resistant to Fire (25%). Weak to Ice (+25%), Weak to Blunt (+25%).
- **Abilities:**
  1. **Fire Arrow** — Pos 3–4 → Hero 1–4 (any). Pierce + Fire damage (medium). Applies 1 Ember Mark.
  2. **Pitch Shot** — Pos 3–4 → Hero 1–2 (both). Pierce damage (low). Applies Bleed (2/rd, 3 rounds) to both targets.
  3. **Fan of Cinders** *(T2+)* — Pos 3–4 → Hero 1–3 (all). Fire damage (low). Applies 1 Ember Mark to each. 3-round cooldown.
- **Dungeon Mechanic:** Spreads Ember Marks across the party for mass Ignite Marks detonation. At T2+, Fan of Cinders enables multi-target mark stacking. Pitch Shot's Bleed interacts with T3 Molten Core (Bleed+Fire combos).
- **Corpse:** Standard.

---

### 5. Ash Priest
- **Role:** Support
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** An ancient figure in ashen gray robes, face painted in soot. They carry a censer that billows choking black smoke. Their voice is a dry rasp, and when they speak, embers drift from their mouth.
- **Stats:** HP Medium (22) · Speed Medium (4) · Dodge Low (10) · Accuracy Medium (70)
- **Resistances:** Resistant to Fire (50%), Resistant to Magic (25%). Weak to Ice (+50%), Weak to Wind (+25%).
- **Abilities:**
  1. **Cauterize** — Pos 3–4 → Ally (any). Heals 10 HP. Removes Bleed from target. Applies 1 Ember Mark to target (self-branding).
  2. **Ash Cloud** — Pos 3–4 → Hero 3–4 (both). No damage. Applies -20% Accuracy debuff for 2 turns. Stress damage (4 each).
  3. **Sanctify Brand** — Pos 3–4 → Ally with Ember Marks. Consumes ally's Ember Marks. Heals ally 3 HP per stack consumed and grants +10% damage for 2 turns.
  4. **Resurrect the Branded** *(T2+)* — Pos 3–4 → Ally corpse. Revives ally at 40% HP with 2 Ember Marks already applied. 3-round cooldown.
- **Dungeon Mechanic:** Sanctify Brand creates a dilemma — Ember Marks on enemies become a resource the Ash Priest can harvest for healing/buffs. Do you apply fire to marked enemies (risking Priest harvesting the marks for healing) or focus the Priest first?
- **Corpse:** Standard.

---

### 6. Pyretic Whisper
- **Role:** Stress Dealer
- **Tier:** All tiers
- **Position:** 3–4
- **Visual:** A floating, faceless specter of heat haze and ash, barely visible — more distortion than figure. Its outline flickers like a mirage. Where it passes, the air crackles and heroes feel an irrational, primal dread of burning.
- **Stats:** HP Very Low (10) · Speed High (8) · Dodge High (30, heat haze) · Accuracy Low (undodgeable abilities)
- **Resistances:** Immune to Fire, Immune to Bleed, Immune to Poison. Weak to Ice (+75%), Weak to Magic (+50%).
- **Abilities:**
  1. **Burning Dread** — Pos 3–4 → All heroes. Undodgeable. No damage. Stress damage (7 to all). Adds +1 Heat Gauge.
  2. **Scorch Whisper** — Pos 3–4 → Hero 1–4 (any). Undodgeable. Fire damage (very low). Stress damage (12). Applies 1 Ember Mark.
  3. **Heat Mirage** — Pos 3–4 → Self. Enters Stealth. While stealthed, Heat Gauge rises 1 extra per round.
- **Dungeon Mechanic:** Directly increases Heat Gauge. At T2+, Scorch Whisper's Ember Mark stacks are doubled. Fragile but devastating to stress management if left alive. Priority kill — but hard to hit.
- **Corpse:** Dissipates — no corpse.

---

### 7. Infernal Guardian
- **Role:** Tank/Guardian
- **Tier:** All tiers
- **Position:** 1
- **Visual:** A massive humanoid encased in blackened armor that glows red at the seams. A visor of hammered iron reveals two smoldering coal eyes. It carries a tower shield of volcanic stone and a heavy mace. Radiant heat makes the air shimmer around it.
- **Stats:** HP Very High (48) · Speed Very Low (1) · Dodge None (0) · Accuracy Low (65)
- **Resistances:** Immune to Fire, Resistant to all physical (25%), Resistant to Bleed (50%). Weak to Ice (+50%), Weak to Lightning (+25%).
- **Abilities:**
  1. **Mace Smash** — Pos 1 → Hero 1. Blunt + Fire damage (medium). Applies 1 Ember Mark.
  2. **Flame Guard** — Pos 1 → Ally pos 2. Guards target. Attackers hitting the Guardian take Fire damage (4) and gain 1 Ember Mark.
  3. **Heat Aura** — Passive. All heroes take Fire damage (1) at the start of each round while Guardian is alive. Adds +1 Heat Gauge per round.
- **Dungeon Mechanic:** Heat Aura directly interacts with T1 Heat Gauge. At T2+, Flame Guard applies Ember Marks to attackers, weaponizing hero aggression. At T3, has Molten Core — explodes on death for Fire damage (high) to heroes in pos 1–2, applies 3 Ember Marks.
- **Corpse:** Embers smolder — corpse deals Fire damage (2) per round to heroes in pos 1. Very hot.

---

### 8. Cinder Imp
- **Role:** Special/Gimmick
- **Tier:** All tiers
- **Position:** Any (mobile)
- **Visual:** A small, cackling fire sprite — a humanoid flame the size of a child, with embers for eyes and teeth of glowing coal. It leaps and scurries unpredictably, setting things alight as it passes.
- **Stats:** HP Very Low (8) · Speed Very High (9) · Dodge High (35) · Accuracy Medium (75)
- **Resistances:** Immune to Fire. Weak to Ice (+75%), Weak to Wind (+50%).
- **Abilities:**
  1. **Singe** — Any pos → Hero 1–4 (any). Fire damage (very low). Applies 1 Ember Mark. Imp moves to random position.
  2. **Stoke Flames** — Any pos → Ally with Ember Marks. Adds 2 Ember Mark stacks to target ally (making them more dangerous but also a fire vulnerability). Buffs ally's next fire attack for +50% damage.
  3. **Self-Immolate** *(on death)* — Deals Fire damage (low) in a small area (position it died in and adjacent hero position).
- **Dungeon Mechanic:** Ember Mark spreader. Can stack marks rapidly across both teams. Stoke Flames weaponizes friendly Ember Marks for buff purposes. At T2+, its death applies 2 Ember Marks to the hero who killed it.
- **Corpse:** Burns out immediately — no corpse.

---

### 9. Pyre Knight
- **Role:** Special/Gimmick (anti-heal)
- **Tier:** Tier 2+
- **Position:** 1–2
- **Visual:** A skeletal warrior clad in ornate but heat-warped plate armor, wielding a flamberge that burns with white-hot fire. A broken halo of fire floats above its skull. It moves with rigid, ceremonial precision.
- **Stats:** HP Medium (28) · Speed Medium (5) · Dodge Low (10) · Accuracy High (85)
- **Resistances:** Immune to Fire, Resistant to Magic (25%). Weak to Ice (+50%), Weak to Blunt (+25%).
- **Abilities:**
  1. **Purging Flame** — Pos 1–2 → Hero 1–2. Slash + Fire damage (medium). Removes positive buffs from target. Applies 1 Ember Mark.
  2. **Cauterize Wound** — Pos 1–2 → Hero 1–3. Fire damage (low). Applies anti-heal debuff: target receives 50% reduced healing for 3 turns.
  3. **Martyr's Pyre** *(on death)* — If in pos 1, deals Fire damage (medium) to hero pos 1–2. Heals all remaining allies for 8 HP. Applies 2 Ember Marks to heroes hit.
- **Dungeon Mechanic:** Counter to heal-heavy parties. Cauterize Wound cripples Cleric/Alchemist strategies. At T3, Martyr's Pyre triggers Molten Core interaction — death heals allies AND damages heroes.
- **Corpse:** At T3, burning corpse — any hero adjacent takes Fire damage (2) per round.

---

### 10. Ashen Revenant
- **Role:** Special/Gimmick
- **Tier:** All tiers
- **Position:** 1–2
- **Visual:** A charred skeleton wreathed in low-burning fire, its ribcage cracked open to reveal a glowing ember where its heart would be. Ash flakes constantly from its body, and it leaves a trail of cinders. Its movements are jerky, puppet-like.
- **Stats:** HP Low (14) · Speed Medium (5) · Dodge Low (10) · Accuracy Medium (75)
- **Resistances:** Immune to Fire, Immune to Bleed. Weak to Ice (+50%), Weak to Blunt (+50%).
- **Abilities:**
  1. **Ash Claw** — Pos 1–2 → Hero 1–2. Slash + Fire damage (low-medium).
  2. **From the Ashes** — Passive. When killed, if an Ash Priest is alive, the Revenant's corpse can be auto-revived at 50% HP at the end of the next round (no action required from the Priest — synergy passive). Can trigger twice per combat.
  3. **Cinder Burst** *(on second death)* — If killed after being revived by From the Ashes, explodes for Fire damage (medium) to hero pos 1–2. Applies 2 Ember Marks. Final death — no further revival.
- **Dungeon Mechanic:** At T2+, revives with Ember Marks pre-applied (each stack buffs fire damage it takes but also buffs its Ash Claw). At T3, Cinder Burst triggers Molten Core.
- **Corpse:** Smoldering corpse. If Ash Priest is alive, auto-revives (see From the Ashes).

---

### 11. Flamewrought Colossus
- **Role:** Tank / Special hybrid
- **Tier:** Tier 3+
- **Position:** 1
- **Visual:** A towering construct of forged iron and living flame, assembled from the melted remains of lesser constructs. Its chest is an open furnace, and chains of molten metal drip from its arms. It moves with terrible, grinding deliberation.
- **Stats:** HP Very High (55) · Speed Very Low (1) · Dodge None (0) · Accuracy Medium (70)
- **Resistances:** Immune to Fire, Resistant to all physical (50%). Weak to Ice (+75%).
- **Abilities:**
  1. **Furnace Blow** — Pos 1 → Hero 1. Blunt + Fire damage (very high). Applies 3 Ember Marks.
  2. **Heat Wave** — Pos 1 → Hero 1–3 (all). Fire damage (medium). Adds +3 Heat Gauge.
  3. **Consume Ally** — Pos 1 → Ally in pos 2. Kills the ally, heals self for ally's remaining HP, and gains +25% damage for 2 turns. 4-round cooldown.
  4. **Core Meltdown** *(on death)* — Fire damage (very high) to hero 1–3. Applies 4 Ember Marks. Stun (75%). +5 Heat Gauge. Destroys own corpse.
- **Dungeon Mechanic:** The ultimate T3 Molten Core threat. Consume Ally creates priority decisions — do you focus the Colossus (risking Meltdown) or kill its food sources first? Heat Wave directly spikes Heat Gauge. Requires Ice damage to efficiently kill.
- **Corpse:** Self-destructs via Meltdown.

---

## Ember Sanctum — Enemy Compositions

### 1. "Mark and Detonate"
- **Enemies:** Branded Zealot (pos 1), Branded Zealot (pos 2), Embercaller (pos 3), Ash Priest (pos 4)
- **Why it's dangerous:** Two Zealots rapidly stack Ember Marks, the Embercaller detonates for burst damage, and the Ash Priest heals and can harvest allied marks for buffs. The Priest can also resurrect killed Zealots. Must kill the Embercaller to stop detonation, but the Priest keeps everything alive.
- **Tier:** All tiers

### 2. "The Furnace"
- **Enemies:** Infernal Guardian (pos 1), Pyre Knight (pos 2), Cinder Archer (pos 3), Pyretic Whisper (pos 4)
- **Why it's dangerous:** The Guardian's Heat Aura and Flame Guard punish attacking. The Pyre Knight shuts down healing. The Archer spreads Ember Marks from safety. The Whisper piles stress. Heat Gauge spirals. Heroes can't heal, can't attack the front without taking Fire damage, and are slowly stressed out.
- **Tier:** T2+

### 3. "Undying Embers"
- **Enemies:** Ashen Revenant (pos 1), Ashen Revenant (pos 2), Ash Priest (pos 3), Embercaller (pos 4)
- **Why it's dangerous:** Both Revenants auto-revive when the Ash Priest is alive. Kill them and they come back. Kill them a second time and they explode (Cinder Burst). The Embercaller detonates Ember Marks. Must kill the Priest first — but it's in the back behind two self-reviving frontliners.
- **Tier:** All tiers

### 4. "Swarming Cinders"
- **Enemies:** Cinder Imp (pos 1), Cinder Imp (pos 2), Branded Zealot (pos 3), Embercaller (pos 4)
- **Why it's dangerous:** Two Imps spread Ember Marks everywhere while the Zealot stacks them and the Embercaller detonates. Imps are fast and evasive, hard to pin down. On death, Imps apply more marks. The whole party ends up covered in Ember Marks for devastating Ignite Marks chains.
- **Tier:** All tiers

### 5. "The Infernal Wall"
- **Enemies:** Flamewrought Colossus (pos 1), Branded Zealot (pos 2), Cinder Archer (pos 3), Ash Priest (pos 4)
- **Why it's dangerous:** The Colossus is an immovable wall that can consume the Zealot to heal. Kill the Colossus and Core Meltdown devastates the party. The Archer and Priest support from behind while the Colossus's Heat Wave spikes the gauge. Must bring Ice damage or suffer.
- **Tier:** T3

### 6. "Scorched Earth"
- **Enemies:** Magma Brute (pos 1), Pyre Knight (pos 2), Pyretic Whisper (pos 3)
- **Why it's dangerous:** The Brute applies massive Ember Marks with Magma Slam. The Pyre Knight blocks healing and strips buffs. The Whisper stresses and adds heat. At T3, both the Brute and Pyre Knight explode on death (Molten Core). Smaller group but each enemy is devastating to kill OR leave alive.
- **Tier:** T2+ (T3 for full Molten Core)

---
---

# 5. The Arcane Maw (Raw Magic Theme — Final Dungeon)

## Enemies

---

### 1. Void Husk
- **Role:** Frontline Melee
- **Tier:** All floors
- **Position:** 1–2
- **Visual:** A humanoid figure with skin like cracked porcelain, revealing swirling void-purple energy beneath. Its face is blank — no features, just a smooth surface that occasionally ripples. It moves with unnatural fluidity, as if gravity doesn't fully apply.
- **Stats:** HP Medium (30) · Speed Medium (5) · Dodge Medium (15) · Accuracy Medium (75)
- **Resistances:** Resistant to Magic (50%), Resistant to Poison (25%). Weak to Blunt (+25%), Weak to Slash (+25%).
- **Abilities:**
  1. **Void Strike** — Pos 1–2 → Hero 1–2. Magic + Blunt damage (medium). 20% chance to apply random debuff (Accuracy, Dodge, Speed, or Damage — one at random).
  2. **Reality Tear** — Pos 1–2 → Hero 1–3. Magic damage (low). Target's next ability has a 30% chance to mutate (Spell Warp interaction).
  3. **Absorb** — Pos 1–2 → Self. Absorbs 1 status effect from self, converting it into +5 temporary HP. 
- **Dungeon Mechanic:** Floor 1: Reality Tear amplifies Spell Warp — more mutations on hero abilities. Floor 2: Void Strike costs target 3 HP additional (Mana Bleed). Floor 3: If the party used a Knight on previous floors, Void Husks gain the Knight's Guard ability (Corrupted Echo).
- **Corpse:** Corpse pulses with magic. Heroes clearing it lose 1 of a random buff.

---

### 2. Spellscar Brute
- **Role:** Frontline Melee
- **Tier:** All floors
- **Position:** 1
- **Visual:** A massive, muscle-bound humanoid covered in glowing arcane scars that pulse with energy. Its proportions are wrong — arms too long, head too small. One fist is encased in crystallized magic that cracks and reforms with each swing.
- **Stats:** HP High (38) · Speed Low (3) · Dodge Low (5) · Accuracy Medium (75)
- **Resistances:** Resistant to Magic (25%), Resistant to Blunt (25%). Weak to Pierce (+25%), Weak to Bleed (+50%).
- **Abilities:**
  1. **Arcane Maul** — Pos 1 → Hero 1–2 (both). Blunt + Magic damage (high).
  2. **Spell Shatter** — Pos 1 → Hero 1. Blunt damage (medium). Interrupts target: if the target would act next, pushes their turn back by 2 speed.
  3. **Mana Feast** — Passive. When a hero uses a magic-type ability within 2 positions, Brute heals 5 HP.
- **Dungeon Mechanic:** Floor 2: Mana Feast also heals when heroes lose HP to Mana Bleed. Floor 3: If Berserker was used previously, gains Frenzy (below 50% HP, +25% damage and double attacks).
- **Corpse:** Heavy corpse. 2 hits to clear.

---

### 3. Spell-Wraith
- **Role:** Backline Ranged
- **Tier:** All floors
- **Position:** 3–4
- **Visual:** A spectral figure in tattered mage robes, its body semi-transparent and flickering between visibility states. Runes float in orbit around its head like a halo. Its hands trail arcane energy that writes formulae in the air and dissolves them.
- **Stats:** HP Low (14) · Speed High (6) · Dodge Medium (20) · Accuracy High (80)
- **Resistances:** Resistant to Magic (75%). Weak to Blunt (+50%), Weak to Fire (+25%).
- **Abilities:**
  1. **Arcane Bolt** — Pos 3–4 → Hero 1–4 (any). Magic damage (medium).
  2. **Dispel** — Pos 3–4 → Hero 1–4 (any). Removes 1 positive buff from target. Stress damage (4).
  3. **Spell Mirror** *(Floor 2+)* — Pos 3–4 → Self. For 1 turn, reflects the first magic-type ability that hits it back at the caster for half damage. 3-round cooldown.
- **Dungeon Mechanic:** Floor 1: Arcane Bolt has 20% chance to mutate into a random element (Spell Warp). Floor 2: Dispel also costs the target 5 HP (Mana Bleed drain). Spell Mirror punishes magic-heavy parties.
- **Corpse:** Dissipates — no corpse.

---

### 4. Reality Fragment
- **Role:** Backline Ranged / Support hybrid
- **Tier:** All floors
- **Position:** 3–4
- **Visual:** A floating shard of crystallized reality — a jagged, mirror-like fragment the size of a person, reflecting distorted versions of the battlefield. Images in its surface move independently of the real world. It hums with resonant power.
- **Stats:** HP Medium (20) · Speed Medium (4) · Dodge Low (10) · Accuracy Medium (75)
- **Resistances:** Resistant to Magic (50%), Resistant to Pierce (50%). Weak to Blunt (+75%).
- **Abilities:**
  1. **Refracted Blast** — Pos 3–4 → Hero 1–4 (any). Magic damage (medium). Damage type randomly shifts to a random element (Fire, Ice, Lightning, Wind).
  2. **Distortion Field** — Pos 3–4 → Ally (any). Grants +20% Dodge for 2 turns. 25% chance that attacks against the buffed ally are redirected to a random hero instead.
  3. **Shatter** *(on death)* — Splits into 2 **Mirror Shards** (HP 6, Speed 3, one ability: Reflected Pain — Magic damage low to random hero). Shards leave no corpse.
- **Dungeon Mechanic:** Refracted Blast interacts with Spell Warp — the random element shift means heroes can't predict resistances. At Floor 2, Distortion Field costs the protected ally 3 HP per turn (Mana Bleed). Shatter on death creates pressure similar to Shatter Spawn.
- **Corpse:** No standard corpse — replaced by Mirror Shards.

---

### 5. Void Channeler
- **Role:** Support
- **Tier:** Floor 2+
- **Position:** 3–4
- **Visual:** A floating figure in layers of dark robes that don't obey gravity, spreading outward like wings of cloth. Its face is a featureless mask of black glass, and its hands are permanently open, palms up, from which streams of raw arcane energy flow upward.
- **Stats:** HP Medium (22) · Speed Medium (4) · Dodge Low (10) · Accuracy Medium (70)
- **Resistances:** Resistant to Magic (75%). Weak to Pierce (+50%), Weak to Bleed (+25%).
- **Abilities:**
  1. **Arcane Infusion** — Pos 3–4 → Ally (any). Heals 10 HP. Grants +15% damage for 2 turns.
  2. **Mana Drain** — Pos 3–4 → Hero 1–4 (any). Magic damage (low). Target's next ability costs double HP (Floor 2 Mana Bleed interaction) or has double mutation chance (Floor 1 Spell Warp interaction).
  3. **Void Anchor** — Pos 3–4 → Hero 1–4 (any). Immobilizes target for 2 turns. Target also cannot be healed by allies (void isolation). 3-round cooldown.
  4. **Reconstruct** *(Floor 3)* — Pos 3–4 → Corrupted Echo corpse. Revives a Corrupted Echo at 50% HP with a different hero template. 4-round cooldown.
- **Dungeon Mechanic:** Floor 2: Mana Drain doubles Mana Bleed cost. Floor 3: Reconstruct can revive Corrupted Echoes as different hero templates, making the echo roster unpredictable.
- **Corpse:** Standard.

---

### 6. Thought Parasite
- **Role:** Stress Dealer
- **Tier:** All floors
- **Position:** 2–3
- **Visual:** A brain-like organism trailing neural tendrils, floating in a bubble of warped space. Its surface is covered in tiny, blinking eyes. When it pulses, heroes feel intrusive thoughts and false memories. Translucent and sickly purple.
- **Stats:** HP Very Low (10) · Speed High (7) · Dodge Medium (20) · Accuracy Low (undodgeable abilities)
- **Resistances:** Resistant to Magic (50%). Weak to Blunt (+75%), Weak to Fire (+50%).
- **Abilities:**
  1. **Psychic Scream** — Pos 2–4 → All heroes. Undodgeable. No damage. Stress damage (8 to all).
  2. **Memory Worm** — Pos 2–3 → Hero 1–4 (any). Undodgeable. No damage. Stress damage (10). Applies -15% Accuracy debuff for 2 turns (false memories clouding judgment).
  3. **Burrow** — Pos 2–3 → Self. Enters Stealth. While stealthed, Psychic Scream costs no action (triggers automatically at round start). Lasts 1 turn.
- **Dungeon Mechanic:** Floor 1: Memory Worm has 30% chance to mutate the target's next ability (Spell Warp). Floor 2: Psychic Scream also deals 3 HP to all heroes (Mana Bleed). The primary stress threat of the final dungeon — even more devastating than previous dungeon stress dealers.
- **Corpse:** Dissipates — no corpse. On death, final psychic pulse: Stress damage (5) to all heroes.

---

### 7. Arcane Sentinel
- **Role:** Tank/Guardian
- **Tier:** All floors
- **Position:** 1
- **Visual:** A towering construct of crystallized magic, vaguely humanoid but with too many angles. Its chest contains a rotating arcane core visible through translucent crystal plates. No face — just a faceted dome that reflects and refracts light in disturbing patterns.
- **Stats:** HP Very High (55) · Speed Very Low (1) · Dodge None (0) · Accuracy Medium (70)
- **Resistances:** Resistant to Magic (75%), Resistant to all physical (25%). Weak to Blunt (+50%).
- **Abilities:**
  1. **Crystal Slam** — Pos 1 → Hero 1–2. Blunt + Magic damage (medium-high). 30% stun.
  2. **Arcane Guard** — Pos 1 → Ally pos 2. Guards target. Absorbs magic damage completely during Guard (but physical damage passes through).
  3. **Spell Dampening Field** — Passive. While alive, all magic-type hero abilities deal -20% damage.
  4. **Mana Overload** *(below 25% HP)* — Deals Magic damage (high) to all hero positions. Self-destructs. 75% stun to all heroes hit.
- **Dungeon Mechanic:** Spell Dampening Field directly counters Pyromancer/Stormcaller/Cryomancer strategies. At Floor 2, magic abilities used near it cost extra HP (Mana Bleed amplifier). Floor 3 Mana Overload can trigger Conductive Chains if heroes are linked.
- **Corpse:** Massive crystal corpse. 3 hits to clear. While present, residual dampening — magic damage -10%.

---

### 8. Glitch Walker
- **Role:** Special/Gimmick
- **Tier:** All floors
- **Position:** Any (teleports)
- **Visual:** A humanoid figure that flickers between multiple states of existence simultaneously — sometimes transparent, sometimes solid, sometimes showing multiple overlapping versions of itself in different poses. Its outline jitters like a corrupted image.
- **Stats:** HP Low (12) · Speed High (7) · Dodge High (30, teleport jitter) · Accuracy Medium (75)
- **Resistances:** Resistant to Magic (50%). Weak to Blunt (+50%), Weak to Pierce (+25%).
- **Abilities:**
  1. **Phase Strike** — Any pos → Hero 1–4 (any). Magic damage (low-medium). Ignores Guard. Glitch Walker teleports to random position after attack.
  2. **Glitch Pulse** — Any pos → Hero 1–2 (both). Magic damage (low). Swaps the two targets' positions.
  3. **Desync** — Any pos → Hero 1–4 (any). No damage. Target acts last next round regardless of Speed.
- **Dungeon Mechanic:** Floor 1: Phase Strike has 50% chance to mutate into a random damage type (Spell Warp). Floor 2: Desync also costs target 5 HP (Mana Bleed). Glitch Pulse keeps disrupting party formation. Extremely annoying to pin down.
- **Corpse:** Flickers in and out for 2 rounds before fully dying. During flicker, 25% chance per round to "revive" at 1 HP for one last action.

---

### 9. Arcane Devourer
- **Role:** Special/Gimmick (anti-magic)
- **Tier:** Floor 2+
- **Position:** 1–2
- **Visual:** A creature like a massive lamprey made of crystallized void energy, with a circular maw of rotating teeth that glow with absorbed spells. Its body is segmented, and each segment contains a trapped spell visible as a glowing glyph. It coils and lunges.
- **Stats:** HP Medium (28) · Speed Medium (5) · Dodge Low (10) · Accuracy High (80)
- **Resistances:** Resistant to Magic (75%), Resistant to all elements (25%). Weak to Blunt (+50%).
- **Abilities:**
  1. **Maw Bite** — Pos 1–2 → Hero 1–2. Pierce + Magic damage (medium-high).
  2. **Devour Spell** — Pos 1–2 → Reactive. When hit by a magic-type ability, absorbs 50% of the damage and adds it to its next Maw Bite. Stacking.
  3. **Regurgitate** — Pos 1–2 → Hero 1–3 (all). Releases all absorbed spell energy as Magic damage (variable — equal to total absorbed). Resets absorption. 3-round cooldown.
- **Dungeon Mechanic:** Hard-counters magic-heavy parties. At Floor 2, Devour Spell also heals the Devourer for absorbed damage (Mana Bleed fuels it). Forces heroes to use physical damage or face escalating Regurgitate bursts.
- **Corpse:** Standard. On death, releases any stored absorbed energy as Magic damage (low) to random hero.

---

### 10. Echo Remnant
- **Role:** Special/Gimmick
- **Tier:** Floor 3 only
- **Position:** Varies (matches echoed hero's preferred position)
- **Visual:** A shimmering, translucent copy of a hero previously used in the dungeon, rendered in inverted colors — blue becomes orange, red becomes cyan. Its features are recognizable but subtly wrong — proportions slightly off, movements mirrored. Static-like artifacts flicker across its form.
- **Stats:** Mirrors the echoed hero's base stats at 75% values. HP Medium-High, other stats vary.
- **Resistances:** Mirrors the echoed hero's resistances (inverted — strengths become weaknesses and vice versa).
- **Abilities:** Gains 2–3 abilities from the echoed hero's kit (simplified versions). Examples:
  - **Echo of Knight:** Slash + Magic damage, Guard, Stun strike.
  - **Echo of Pyromancer:** Fire + Magic AoE, self-buff, fire bolt.
  - **Echo of Cleric:** Heals allies, Magic damage, removes debuffs from allies.
  - **Echo of Rogue:** Stealth, backstab (bonus damage from pos 3–4 to hero pos 3–4), Poison.
  - **Echo of Berserker:** Frenzy at low HP, double attack, Bleed application.
- **Dungeon Mechanic:** The core Floor 3 mechanic. Echoes are corrupted copies of heroes the player used on Floors 1–2. This means your party composition on earlier floors directly determines what enemies you face on Floor 3. Players who relied heavily on one strategy will face their own tools turned against them. Echo Remnants have inverted resistances — if the original hero was strong against Fire, the Echo is weak to it.
- **Corpse:** Standard. Corpse retains a faint echo — Necromancer heroes who raise it get a weakened ally version for 2 turns.

---

### 11. Null Weaver
- **Role:** Support / Special hybrid
- **Tier:** Floor 2+
- **Position:** 3–4
- **Visual:** A spider-like creature made of pure void, weaving strands of null-energy between its legs. It hangs suspended in the air, and the space around it seems to darken and flatten, losing depth. Its web is made of visible absence — black lines that erase what they touch.
- **Stats:** HP Low-Medium (16) · Speed Medium (5) · Dodge Medium (20) · Accuracy Medium (75)
- **Resistances:** Immune to Magic, Immune to Poison. Weak to Slash (+50%), Weak to Fire (+50%).
- **Abilities:**
  1. **Null Thread** — Pos 3–4 → Hero 1–4 (any). No damage. Creates a Null Tether — target's healing is reduced by 50% and buffs last 1 turn less. Lasts 3 turns.
  2. **Void Web** — Pos 3–4 → Hero 1–2 (both). Immobilizes both targets for 1 turn. Applies -20% Dodge.
  3. **Unravel** — Pos 3–4 → Hero 1–4 (any). Removes ALL positive buffs from target. Stress damage (6).
- **Dungeon Mechanic:** Floor 2: Null Thread also makes affected heroes' abilities cost +50% more HP (Mana Bleed amplifier). Floor 3: Unravel can steal a buff and apply it to an Echo Remnant. Anti-support enemy that shuts down buff-based strategies.
- **Corpse:** Standard.

---

### 12. Abyssal Maw
- **Role:** Stress Dealer / Special hybrid
- **Tier:** Floor 3 only
- **Position:** 2–3
- **Visual:** A tear in reality itself — a ragged hole in space with jagged edges like broken glass, through which an endless void is visible. Occasionally, enormous teeth or eyes are visible in the void beyond. The edges of the tear pulse and contract like a breathing wound.
- **Stats:** HP Medium (24) · Speed Medium (4) · Dodge Low (5) · Accuracy Medium (undodgeable abilities)
- **Resistances:** Immune to Magic, Resistant to all elements (50%). Weak to Blunt (+50%), Weak to Slash (+25%).
- **Abilities:**
  1. **Existential Dread** — Pos 2–3 → All heroes. Undodgeable. No damage. Stress damage (10 to all). Arcane Swelling +3.
  2. **Consume** — Pos 2–3 → Hero 1. Magic damage (high). If target is on Death's Door, instantly kills them (pulled into the void). Undodgeable.
  3. **Spawn Echo** *(4-round cooldown)* — Pos 2–3 → Empty ally position. Creates a random Echo Remnant from the player's previously used heroes.
- **Dungeon Mechanic:** The ultimate Floor 3 threat. Existential Dread spikes both stress AND Arcane Swelling. Consume executes Death's Door heroes. Spawn Echo generates Corrupted Echoes without needing them in the encounter composition. Must be highest priority kill — but it has moderate HP and resistance to most elements.
- **Corpse:** No corpse — the tear in reality seals when destroyed, but the sealed area destabilizes: Arcane Swelling +5 on death.

---

## Arcane Maw — Enemy Compositions

### 1. "The Mirror War"
- **Enemies:** Echo Remnant (pos varies), Echo Remnant (pos varies), Void Channeler (pos 3–4)
- **Why it's dangerous:** Two Echoes of the player's own heroes, supported by a Void Channeler that heals them and can Reconstruct them as different echo types on death. Players fight their own strategies. The Channeler's Void Anchor isolates heroes from healing.
- **Tier:** Floor 3

### 2. "The Dampening Field"
- **Enemies:** Arcane Sentinel (pos 1), Arcane Devourer (pos 2), Spell-Wraith (pos 3), Thought Parasite (pos 4)
- **Why it's dangerous:** The Sentinel dampens magic damage, the Devourer absorbs and reflects magic attacks, the Spell-Wraith dispels buffs and reflects spells, and the Thought Parasite stresses while stealthed. Magic-heavy parties are completely neutralized. Requires physical damage focus.
- **Tier:** Floor 2+

### 3. "Existential Crisis"
- **Enemies:** Abyssal Maw (pos 2), Void Husk (pos 1), Thought Parasite (pos 3), Null Weaver (pos 4)
- **Why it's dangerous:** Maximum stress pressure — the Maw deals 10 stress to all per turn, the Parasite adds 8 more, while the Null Weaver shuts down buffing and healing. The Void Husk tanks the front while applying random debuffs. The Maw executes heroes on Death's Door. Affliction spirals are nearly guaranteed if not addressed immediately.
- **Tier:** Floor 3

### 4. "The Spell Storm"
- **Enemies:** Glitch Walker (pos varies), Glitch Walker (pos varies), Reality Fragment (pos 3), Spell-Wraith (pos 4)
- **Why it's dangerous:** Two Glitch Walkers teleporting everywhere, swapping hero positions, and forcing heroes to act last. The Reality Fragment's Refracted Blast hits with random elements. The Spell-Wraith strips buffs. On Floor 1, Spell Warp mutations make every action unpredictable. Chaotic, disorienting encounter.
- **Tier:** All floors

### 5. "The Devouring Wall"
- **Enemies:** Spellscar Brute (pos 1), Arcane Devourer (pos 2), Void Channeler (pos 3), Reality Fragment (pos 4)
- **Why it's dangerous:** The Brute and Devourer form a wall that punishes magic use (Mana Feast heals the Brute, Devour Spell charges the Devourer). The Channeler heals and drains heroes. The Reality Fragment redirects attacks and splits on death. Requires pure physical party — but the Brute's Spell Shatter delays physical attackers too.
- **Tier:** Floor 2+

### 6. "The Echo Engine"
- **Enemies:** Abyssal Maw (pos 2), Null Weaver (pos 3), Void Channeler (pos 4)
- **Why it's dangerous:** The Maw spawns Echo Remnants every 4 turns, creating an ever-growing enemy force. The Null Weaver strips hero buffs and reduces healing. The Channeler heals the Maw and can Reconstruct fallen Echoes as different templates. If the Maw isn't killed quickly, the field fills with Corrupted Echoes of the player's own heroes. A race against time.
- **Tier:** Floor 3
