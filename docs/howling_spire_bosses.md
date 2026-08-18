# The Howling Spire — Boss Encounters

---

## 1. Tier 1 Semi-Boss: The Shrieker Matriarch

**Name:** The Shrieker Matriarch
**Tier:** 1

**Visual Description:** A harpy twice the size of her flock, feathers matted with dried blood and storm-charge. Her wings crackle with static, and her screech visibly distorts the air in rippling cones. One eye is milky-white; the other burns with predatory focus.

**Size:** 1 position (pos 2)

**Base Stats:**

| HP | Speed | Dodge | Accuracy |
|----|-------|-------|----------|
| 90 | 6     | 20    | 85       |

**Resistances:**

| Wind   | Bleed  | Stun   | Ice     | Lightning |
|--------|--------|--------|---------|-----------|
| Immune | 40%    | 30%    | -25%    | -15%      |

**Adds:** 2 Harpy Screechers (pos 3, pos 4) — standard harpy enemies with wind-slash attacks and minor stress damage.

**Abilities:**

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Rending Dive | Pos 1–2 | Pos 1–2 | Slash 8–12 | Push target back 1 position. If target already pos 4: +50% damage instead. |
| 2 | Gale Shriek | Pos 1–3 | ALL heroes | Wind 3–5 | Stress 6–8. 40% chance to shuffle 1 random hero 1 position. |
| 3 | Updraft Snatch | Pos 1–2 | Pos 1–3 | Pierce 6–10 | Pull target forward 1 position. Priority: marked heroes. |
| 4 | Rally the Flock | Any | Self | — | +15% Dodge, +10% Damage for 2 turns. Used only when both adds are alive. |

**Signature Mechanic — Flock Synergy:** While at least one add is alive, the Matriarch gains +10 Dodge and her Gale Shriek hits an additional time. Killing both adds removes this bonus but triggers a one-time **Fury Dive** (Slash 12–16 to pos 1–2, ignores Guard).

**Dungeon Mechanic Interaction:** The T1 Gale mechanic fires each round as usual. The Matriarch's position shuffles are *additive* with Gale — heroes can be moved twice in a single round, making positioning extremely volatile.

**Intended Strategy:** Kill one add quickly to halve Gale Shriek's multi-hit, but hold the second add alive briefly to avoid triggering Fury Dive at an inopportune moment. Position tanky heroes in pos 1–2 to absorb Rending Dive. Timing the second add kill for when the party is healthy enough to absorb Fury Dive is the core puzzle.

**What It Punishes:**
- Killing both adds immediately without preparation (Fury Dive punish)
- Backline-heavy parties (Gale Shriek + Gale mechanic shred positioning)
- Ignoring adds entirely (Flock Synergy scaling makes the fight unsustainable)
- Static positioning strategies (double position shuffles per round)

---

## 2. Tier 1 Boss: Zephyroth, Shepherd of Gales

**Name:** Zephyroth, Shepherd of Gales
**Tier:** 1

**Visual Description:** A gaunt storm cultist hovering inches above the ground, robes shredded into whipping tendrils by perpetual wind. His staff is a twisted iron rod topped with a caged vortex of compressed air. His face is hidden behind a featureless mask of hammered bronze, cracks glowing with pale blue light. The air around him hums at a frequency that sets teeth on edge.

**Size:** 1 position (pos 3)

**Base Stats:**

| HP  | Speed | Dodge | Accuracy |
|-----|-------|-------|----------|
| 140 | 7     | 22    | 90       |

**Resistances:**

| Wind   | Magic | Stun  | Poison | Blunt  | Fire   |
|--------|-------|-------|--------|--------|--------|
| Immune | 50%   | 50%   | 30%    | -30%   | -20%   |

**Adds:** 2 Wind Shards (pos 1–2) — floating crystal fragments, HP 25 each, serve as mobile shields. 1 Gale Acolyte (pos 4) — support caster, heals Zephyroth for 10 HP/turn.

### Phase 1 — The Calm Before (100%–50% HP)

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Directing Gust | Pos 2–4 | Pos 1–4 | Wind 6–9 | Swaps two heroes' positions. Accuracy 100. |
| 2 | Siphon Breath | Pos 2–4 | Pos 1–2 | Wind 5–8 | Heals self for 50% of damage dealt. Stress 4. |
| 3 | Shardwall | Any | Wind Shards | — | Grants both Wind Shards Guard for 1 turn (intercept attacks aimed at Zephyroth). 2-turn cooldown. |
| 4 | Gale Conduit (Passive) | — | — | — | Each time the Gale mechanic fires, Zephyroth gains +2 Speed permanently (stacking). |

### Phase 2 — Squall Line (below 50% HP)

**Trigger:** Dropping below 50% HP. Zephyroth shatters remaining Wind Shards (Wind 4–6 to all heroes if any survive). Moves to pos 2.

**Stat Changes:** +15% Dodge, +20% Damage. Speed resets to base +3.

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Directing Gust | Pos 1–3 | ALL heroes | Wind 6–9 | Now shuffles ALL hero positions randomly. |
| 2 | Cyclone Lash | Pos 1–3 | Pos 1–3 | Wind 10–14 | Bleed 2/turn for 3 turns. Replaces Siphon Breath. |
| 3 | Desperate Summon | Any | — | — | Summons 1 Wind Shard to pos 1. 3-turn cooldown. |
| 4 | Eye of the Storm | Any | Self | — | One-time on phase entry. +30% Dodge, all abilities deal +50% Stress for 3 turns. |

**Signature Mechanic — Gale Conduit:** Zephyroth permanently gains Speed every round from the Gale mechanic. By round 5–6 he acts first in every turn. This creates hard urgency — the fight must not drag.

**Dungeon Mechanic Interaction:** Gale fires every round, but Zephyroth's Directing Gust *replaces* the natural Gale on turns he uses it — making repositioning targeted rather than random, which is often worse.

**Intended Strategy:**
- **Phase 1:** Kill the Gale Acolyte first to stop healing. Destroy Wind Shards to neutralize Shardwall. Push consistent DPS to trigger Phase 2 before Gale Conduit stacks make Zephyroth untouchably fast. Blunt damage is key.
- **Phase 2:** Burst damage to finish before Eye of the Storm's stress amplification causes cascading afflictions. Movement-resistant heroes or self-repositioners handle the full-party shuffle.

**What It Punishes:**
- Slow/stalling strategies (Gale Conduit makes him faster forever)
- Ignoring adds (Shardwall + Acolyte healing = unkillable)
- All-ranged parties (front-stacking after shuffles exposes them to Cyclone Lash)
- Low stress-resist parties (Eye of the Storm in Phase 2)

**Guaranteed Loot:** *Stormherder's Bronze Mask* — Trinket. +15% Wind resistance, +10% resistance to forced movement. −5% Bleed resistance.

---

## 3. Tier 2 Semi-Boss: The Wall Warden

**Name:** The Wall Warden
**Tier:** 2

**Visual Description:** A gargoyle carved from storm-blackened granite, crouching on all fours with wings folded into angular shields. Runes pulse along its spine in sync with flickering wind barriers. When it moves, stone grinds against stone with a sound like gnashing teeth.

**Size:** 2 positions (pos 1–2)

**Base Stats:**

| HP  | Speed | Dodge | Accuracy |
|-----|-------|-------|----------|
| 170 | 4     | 10    | 88       |

**Resistances:**

| Blunt | Slash | Wind   | Stun  | Magic  | Lightning |
|-------|-------|--------|-------|--------|-----------|
| 60%   | 40%   | Immune | 60%   | -30%   | -25%      |

**Adds:** 1 Storm Gargoyle (pos 3) — standard tanky gargoyle.

**Abilities:**

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Granite Slam | Pos 1–2 | Pos 1–2 | Blunt 10–15 | 35% Stun chance. |
| 2 | Wing Gust | Pos 1–2 | Pos 2–4 | Wind 5–8 | Push back 1 position. Applies "Windswept": −15% Accuracy for 2 turns. |
| 3 | Erect Barrier | Any | Field | — | Creates a Wind Wall between hero pos 2 and pos 3 for 2 turns. 3-turn cooldown. |
| 4 | Resonance Roar | Pos 1–2 | ALL heroes | Stress 8–12 | No damage. Bypasses Guard. Empowered: only used while a Wind Wall is active. |
| 5 | Fortify | Any | Self | — | +20% PROT, +15% all resistances for 2 turns. Used below 40% HP. |

**Signature Mechanic — Barrier Master:** The Wall Warden places Wind Walls at the predictable 2–3 divide, splitting the party in half. While the barrier is active, Resonance Roar deals bonus stress. The puzzle: either burst through the 2-turn barrier duration or position the party to function while split (healer + DPS on each side).

**Dungeon Mechanic Interaction:** The T2 Wind Wall dungeon mechanic places *additional* random walls on top of the Warden's deliberate placement. In worst cases, the party is split into 3 isolated segments. Heroes with position-independent abilities (self-buffs, heals that target any position) become critical.

**Intended Strategy:** Bring heroes with flexible targeting ranges. Pre-position key damage dealers and your healer on the same side of the likely split. When Erect Barrier fires, use the 2 turns to buff/heal on each side, then burst when it drops. Kill the Storm Gargoyle early — its bulk absorbs hits meant for the Warden. Magic and Lightning bypass the Warden's physical resistances.

**What It Punishes:**
- Melee-only parties (barrier locks them out of half the fight)
- Single-healer reliance (healer trapped on one side of the wall)
- Physical-damage-only teams (high Blunt/Slash resistance)
- Ignoring Resonance Roar (stress spirals fast with barriers up)

---

## 4. Tier 2 Boss: Vaelstrix, the Divided Storm

**Name:** Vaelstrix, the Divided Storm
**Tier:** 2

**Visual Description:** Two wind elementals fused at the torso, spinning in opposite directions — one a screaming cyclone of white wind (Vael), the other a grinding vortex of black grit (Strix). They share a single crackling core of compressed lightning visible through translucent wind-bodies. Vael's face is serene and eyeless; Strix's is a rictus of jagged crystal teeth. The ground beneath them is scored in spiraling grooves.

**Size:** 4 positions total — Strix occupies pos 1–2, Vael occupies pos 3–4. Shared HP pool.

**Base Stats (shared):**

| HP  | Speed (Strix/Vael) | Dodge | Accuracy |
|-----|---------------------|-------|----------|
| 220 | 8 / 6               | 25    | 92       |

**Resistances:**

| Wind   | Ice  | Poison | Fire   | Lightning |
|--------|------|--------|--------|-----------|
| Immune | 50%  | Immune | -25%   | -20%      |

**Adds:** None initially. Phase 2 summons 2 Gale Wisps.

### Phase 1 — Dual Tempest (100%–45% HP)

Strix and Vael act on separate turns based on individual Speed. Shared HP pool — all damage goes to the same bar.

**Strix (pos 1–2) — The Aggressor:**

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Grinding Blast | Pos 1–2 | Pos 1–2 | Blunt/Wind 9–13 | Bleed 2/turn for 3 turns. Push target back 1. |
| 2 | Sand Flail | Pos 1–2 | Pos 1–3 | Pierce/Wind 7–10 | −10% PROT debuff for 2 turns. |
| 3 | Howling Malice | Pos 1–2 | ALL heroes | Stress 6–10 | 30% chance: "Vertigo" — target acts last next round regardless of Speed. |

**Vael (pos 3–4) — The Controller:**

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Zephyr Pulse | Pos 3–4 | ALL heroes | Wind 3–5 | Shuffles all hero positions randomly. |
| 2 | Wind Wall Weave | Pos 3–4 | Field | — | Creates 2 Wind Walls at random hero positions for 1 turn. 2-turn cooldown. |
| 3 | Calm Eye | Pos 3–4 | Self (whole boss) | — | Heals 15 HP, cleanses 1 debuff. 3-turn cooldown. |

### Phase 2 — Convergence (below 45% HP)

**Trigger:** Below 45% HP. Vael and Strix merge into pos 2–3. Shockwave on merge: Wind 8–12 to all heroes + destroys all active Wind Walls. Summons 2 Gale Wisps (pos 1, pos 4).

**Stat Changes:** Single turn at Speed 9. +10% Dodge. Loses Calm Eye.

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Unified Tempest | Pos 2–3 | ALL heroes | Wind 8–12 | Shuffles 2 random heroes. Stress 5. |
| 2 | Grinding Blast | Pos 2–3 | Pos 1–3 | Blunt/Wind 12–17 | Bleed 2/turn for 3 turns. Upgraded from Phase 1. |
| 3 | Core Discharge | Pos 2–3 | Pos 1–4 (random single) | Lightning/Wind 14–18 | Marks target for 2 turns. 2-turn cooldown. |
| 4 | Desperate Weave | Pos 2–3 | Field | — | Creates 1 Wind Wall + summons 1 Gale Wisp if any are dead. 3-turn cooldown. |

**Signature Mechanic — Divided Will:** In Phase 1, players face two entities with separate turns but one HP pool. The strategic question isn't *which half to damage* (same pool) but *which half to stun or debuff* each round. Stun Strix to stop damage/stress; stun Vael to stop shuffles and healing. You can never suppress both.

**Dungeon Mechanic Interaction:** T2 Wind Walls from the dungeon layer on top of Vael's Wind Wall Weave. In Phase 1, the field can hold up to 4 Wind Walls simultaneously. Gale mechanic also fires, compounding Zephyr Pulse shuffles.

**Intended Strategy:**
- **Phase 1:** Stun Strix when stress is high; stun Vael when positioning is critical. Apply DoTs that tick on both halves' turns. Use Fire and Lightning to exploit vulnerabilities. Push steadily — don't stall, as dual-turn chaos compounds over time.
- **Phase 2:** Burst the merged form. Kill Gale Wisps fast (they buff Vaelstrix's Dodge). Save strongest attacks for post-merge. Core Discharge's Mark on your heroes can be leveraged — redirect healing to marked targets.

**What It Punishes:**
- Stall/turtle strategies (dual turns per round compound chaos)
- Single-target-only parties (can't stun both halves effectively)
- Teams without movement flexibility (constant shuffles + walls)
- Pure physical damage (high physical resistance in elemental form)

**Guaranteed Loot:** *Core of the Divided Storm* — Trinket. +20% Wind damage dealt, +10% Speed. When shuffled by an enemy, gain +15% Damage for 1 turn. −10% Max HP.

---

## 5. Tier 3 Semi-Boss: The Squallhunter

**Name:** The Squallhunter
**Tier:** 3

**Visual Description:** An elite harpy fused with raw storm energy — more lightning than flesh. Her talons are elongated bolts of crystallized wind, and her wings trail crackling contrails. She moves in stuttering bursts, vanishing and reappearing between blinks, leaving afterimages of static. A collar of storm-cultist runes circles her throat.

**Size:** 1 position (pos varies — see mechanic)

**Base Stats:**

| HP  | Speed | Dodge | Accuracy |
|-----|-------|-------|----------|
| 210 | 11    | 35    | 95       |

**Resistances:**

| Wind   | Lightning | Pierce | Stun  | Ice    | Blunt  |
|--------|-----------|--------|-------|--------|--------|
| Immune | 60%       | 30%    | 50%   | -30%   | -20%   |

**Adds:** 1 Stormfeather (pos 4) — ranged harpy that applies "Windswept" (−15% Accuracy) to random heroes.

**Abilities:**

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Bolt Dive | Any | Pos 1–2 | Lightning/Pierce 12–16 | Moves Squallhunter to pos 1 after use. 50% Guard bypass. |
| 2 | Tailwind Slash | Pos 1–2 | Pos 1–3 | Slash/Wind 8–12 | Push back 1. Tempest Rage active: +30% damage. |
| 3 | Squall Step (Free) | — | — | — | Free action at start of each round. Moves to any enemy position. Cannot be prevented. |
| 4 | Static Shriek | Any | Pos 3–4 | Lightning 6–10 | Stress 8–12. Applies "Ionized": next enemy attack vs this hero has +20% Crit chance. |
| 5 | Storm Cloak (Passive) | — | — | — | While in pos 3–4: +20% Dodge and ranged attacks suffer additional −15% Accuracy against her. |

**Signature Mechanic — Squall Step:** The Squallhunter freely repositions every round. She dives forward for Bolt Dive, then retreats behind Storm Cloak. The pattern: she favors back→front→back on alternating turns. The puzzle is predicting her position and pre-positioning melee to punish her when she dives forward. Stun or immobilize effects break the cycle and lock her in a vulnerable position.

**Dungeon Mechanic Interaction:** Tempest Rage is active at T3. Storm Cloak *stacks* with Tempest Rage's ranged accuracy penalty, making her nearly unhittable at range when in pos 3–4. Melee attacks — boosted by Tempest Rage — are the reliable answer when she dives forward. Gale and Wind Walls also fire, but Squall Step means the boss ignores her own side's terrain.

**Intended Strategy:** Bring melee-heavy parties that capitalize on Tempest Rage's melee reliability. When the Squallhunter dives to pos 1–2, she's exposed — hit hard with Blunt and Ice. Save stuns for when she's in front positions to lock her there for a full round of punishment. Kill the Stormfeather add early to remove the Accuracy debuff compounding Tempest Rage penalties.

**What It Punishes:**
- Ranged-only parties (Storm Cloak + Tempest Rage = nearly unhittable)
- Slow parties (Speed 11 means she almost always acts first)
- Static positioning (Squall Step + Gale = constant chaos)
- Ignoring the Stormfeather add (stacking Accuracy debuffs cripple the entire team)

---

## 6. Tier 3 Boss: Throne of Gales

**Name:** Throne of Gales
**Tier:** 3

**Visual Description:** Not a creature but a living structure — the shattered throne room at the Spire's summit, where a gargoyle king sits fused to a seat of howling wind. The throne itself is a vortex anchored by crumbling pillars, each channeling a different wind current. The gargoyle's stone body is cracked open along every joint, wind screaming through the gaps like a pipe organ. Its crown is a halo of frozen lightning bolts. The floor beneath the party is open sky — they fight on a platform of compressed air.

**Size:** 2 positions (pos 3–4)

**Base Stats:**

| HP  | Speed | Dodge | Accuracy |
|-----|-------|-------|----------|
| 300 | 5     | 15    | 98       |

**Resistances:**

| Blunt | Slash | Wind   | Stun  | Poison | Fire   | Magic  | Lightning |
|-------|-------|--------|-------|--------|--------|--------|-----------|
| 50%   | 40%   | Immune | 70%   | Immune | -25%   | -20%   | -15%      |

**Adds:** 2 Pillar Anchors (pos 1, pos 2) — destructible objects, HP 40 each, no actions. 1 Gale Knight (pos 1 or 2, shares space with a Pillar) — armored wind cultist.

### Phase 1 — Anchored Storm (100%–40% HP)

While at least 1 Pillar stands, the Throne has +30% PROT and cannot be moved.

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Howling Decree | Pos 3–4 | ALL heroes | Wind 6–9 | Stress 6–8. Shuffles all heroes 1 position in a random direction. |
| 2 | Pillar Surge | Pos 3–4 | Hero in same pos as chosen Pillar | Lightning/Wind 12–16 | Channels through a Pillar. If no hero in that pos, hits random hero. Destroys Wind Walls in target pos. |
| 3 | Coronation Winds | Pos 3–4 | Pos 1–2 | Wind 8–12 | Creates Wind Wall between pos 1 and pos 2 for 2 turns. |
| 4 | Stone Edict | Pos 3–4 | Single hero | — | Marks target for 3 turns + −20% Speed. Gale Knight prioritizes marked targets. |
| 5 | Rebuild (Gale Knight) | — | Destroyed Pillar | — | Gale Knight spends its turn rebuilding a Pillar (restores with 20 HP). |

### Phase 2 — Unshackled Tempest (below 40% HP or both Pillars destroyed)

**Trigger:** Below 40% HP OR both Pillars destroyed. All remaining Pillars/Gale Knight destroyed in a shockwave: Wind/Lightning 10–14 to all heroes. Throne moves to pos 2–3.

**Stat Changes:** Speed → 8. +20% Damage. −30% Dodge. Loses PROT bonus.

| # | Name | Usable From | Targets | Damage | Effects |
|---|------|-------------|---------|--------|---------|
| 1 | Howling Decree | Pos 2–3 | ALL heroes | Wind 6–9 | Now shuffles heroes 2 positions. |
| 2 | Unbound Gale | Pos 2–3 | Random 2 heroes | Wind 14–18 each | Replaces Pillar Surge. |
| 3 | Throne Crush | Pos 2–3 | Pos 1 | Blunt/Wind 18–24 | 50% Stun. Physical slam forward. |
| 4 | Desperate Coronation | Pos 2–3 | Field | — | Creates Wind Walls at 2 random positions + summons 1 Gale Wisp. 4-turn cooldown. |
| 5 | Crumbling Majesty (Passive) | — | — | — | Each round in Phase 2: Throne takes 5 self-damage. After 8 rounds in Phase 2: ENRAGE — all abilities +50% damage, Howling Decree stress doubled. |

**Signature Mechanic — Pillar Network:** The Pillars are the Throne's power conduits. Destroying them removes the +30% PROT but accelerates Phase 2. Leaving them up means enduring Pillar Surge's targeted lightning and the Gale Knight's Rebuild cycle. The puzzle: destroy one Pillar to halve Pillar Surge's options, manage the Gale Knight to prevent Rebuild, and push damage to trigger Phase 2 at a controlled tempo.

**Dungeon Mechanic Interaction:** All T3 mechanics active. Gale compounds Howling Decree shuffles. Dungeon Wind Walls stack with Coronation Winds. Tempest Rage makes the Throne's wind attacks hit harder but also boosts melee against it — exploit this in Phase 2 when it moves forward.

**Intended Strategy:**
- **Phase 1:** Kill the Gale Knight first (prevent Pillar Rebuild loops). Destroy one Pillar to reduce Pillar Surge options. Stack Fire and Magic damage while managing Wind Wall splits with flexible-range heroes. Don't destroy both Pillars prematurely unless ready for Phase 2.
- **Phase 2:** Burst race against the 8-round enrage timer (offset by the Throne's self-damage). The Throne's lower Dodge makes it easier to hit. Position strongest melee in pos 1 to absorb or dodge Throne Crush while the party piles on damage.

**What It Punishes:**
- Rushing Phase 1 (uncontrolled Phase 2 entry)
- Ignoring the Gale Knight (infinite Pillar Rebuilds)
- Ranged-only strategies (Tempest Rage penalties + Wind Walls)
- Poor stress management (Howling Decree is relentless)
- Slow play in Phase 2 (Crumbling Majesty enrage)

**Guaranteed Loot:** *Crown of Frozen Lightning* — Trinket. +25% Stun resistance, +15% Wind resistance. When stunned, release Lightning AoE dealing 4 damage to all enemies. −5 Speed.

---

## 7. Final Boss: Aethon, the Eternal Scream

**Name:** Aethon, the Eternal Scream

**Visual Description:** Aethon is not a creature — it is the storm itself given will. A colossal humanoid silhouette of compressed wind occupies the ruined apex of the Spire, its body a transparent vortex through which debris, broken masonry, and the corpses of past challengers orbit in lazy spirals. Its "face" is a void where sound collapses inward — a visible absence of air that pulls light toward it. Two arms of shearing wind extend from its torso, each tipped with claws of frozen lightning. At its core, barely visible through the maelstrom, hangs a single black feather — ancient, untouched by the wind, perfectly still. The Spire itself resonates with its presence: stones vibrate, the air tastes of copper, and all sound is a half-second delayed, as though reality is buffering.

**Size:** 3 positions (pos 1–3), shifting per phase.

**Lore Snippet:** Before the Spire was ruins, it was a temple — not to a god, but to a sound. The cultists who built it believed a specific frequency could tear open the boundary between the material world and the elemental plane of wind. They succeeded. Aethon is that frequency made manifest: a scream that has echoed for centuries, growing louder, growing *aware*.

---

### Phase 1 — The Gathering Storm

**Trigger:** Fight begins.

**Visual Change:** Aethon is diffuse — a swirling cloud filling the top of the Spire. Shapes coalesce and dissolve within it. The black feather is barely visible, deep within the mass.

**Size:** 3 positions (pos 2–4). Semi-corporeal — occupies the back line.

**Stat Changes:**

| HP (total across all phases) | Speed | Dodge | Accuracy | PROT |
|------------------------------|-------|-------|----------|------|
| 480                          | 7     | 30    | 95       | 15%  |

Phase 1 ends at 70% HP (336 HP remaining).

**Abilities:**

| # | Name | Targets | Damage | Effects |
|---|------|---------|--------|---------|
| 1 | Gale Harvest | ALL heroes | Wind 5–8 | Shuffles all heroes 1 position randomly. Fires the Gale mechanic an *additional* time this round. |
| 2 | Feeding Gust | Pos 1–2 | Wind 8–12 | Pulls target forward 1. Heals Aethon for 50% of damage dealt. |
| 3 | Echoing Wail | ALL heroes | Stress 5–7 | No damage. Applies "Resonance" debuff: Stress damage taken +25% for 2 turns. |
| 4 | Storm Tendril | Pos 1–3 (random single) | Slash/Wind 10–14 | Bleed 2/turn for 3 turns. |
| 5 | Coalesce | Self | — | +10% PROT, +5% Dodge. Used every 3 rounds. Stacks represent Aethon "solidifying." |

**Phase-Specific Mechanic — Double Gale:** The Gale mechanic fires *twice* per round — once normally, once from Gale Harvest. Positioning is in constant flux. Heroes who can self-reposition or are position-independent thrive.

---

### Phase 2 — The Wailing Cage

**Trigger:** Below 70% HP.

**Visual Change:** Aethon compresses into a denser form — a towering pillar of screaming wind with two distinct arms. Wind Walls erupt around the arena in fixed patterns. The black feather moves to the exterior of the vortex, orbiting slowly. The sound is deafening — heroes visibly flinch.

**Size:** 2 positions (pos 2–3). More solid, more dangerous.

**Stat Changes:** Speed → 9. Dodge → 20. PROT → 0 (shed in compression). +25% Damage.

Phase 2 ends at 35% HP (168 HP remaining).

**Abilities:**

| # | Name | Targets | Damage | Effects |
|---|------|---------|--------|---------|
| 1 | Shrieking Cage | ALL heroes | Wind 4–6 | Creates Wind Walls between pos 1–2 AND pos 3–4 simultaneously. 2-turn duration. 3-turn cooldown. |
| 2 | Resonance Spike | Single hero (highest Stress) | Wind/Magic 12–16 | Stress 10–15. If target is above 100 Stress: forces immediate affliction check. |
| 3 | Scything Gale | Pos 1–2 AND pos 3–4 (one hit each side of walls) | Wind 10–14 | Two separate hits, one per "cage" — bypasses the Wind Walls Aethon created. |
| 4 | Feather Ward | Self | — | The black feather orbits faster. For 2 turns, first hit each turn against Aethon is negated. 4-turn cooldown. |
| 5 | Summon Squall | — | — | Summons 1 Storm Remnant (HP 35) to pos 1 or pos 4. Remnants use Stress attacks and apply Windswept (−15% Accuracy). Max 2 active. 3-turn cooldown. |

**Phase-Specific Mechanic — The Wailing Cage:** Shrieking Cage splits the party into two isolated pairs behind Wind Walls. Scything Gale then hits both sides — there is no safe side. Aethon's own attacks bypass its walls. Players must distribute healing and damage capability across both pairs, or use wall-piercing abilities.

---

### Phase 3 — The Eternal Scream

**Trigger:** Below 35% HP.

**Visual Change:** Aethon detonates outward, filling the entire arena with hurricane-force wind. The black feather is now hovering directly in front of the party, still impossibly still, the eye of the storm. Aethon's form is everywhere and nowhere — attacks come from all directions. The Spire itself begins to crumble, stones ripping away into the sky. Heroes' hair, cloaks, and equipment whip violently. The scream is no longer heard — it is *felt*, vibrating in bone and blood.

**Size:** 2 positions (pos 1–2). Aethon has moved to melee range — the storm is on top of them.

**Stat Changes:** Speed → 11. Dodge → 15. Accuracy → 100. All damage +40%.

**Abilities:**

| # | Name | Targets | Damage | Effects |
|---|------|---------|--------|---------|
| 1 | The Scream (Passive) | ALL heroes | — | Every round: Stress 6–8 to ALL heroes. Cannot be blocked, resisted, or reduced. This is the storm itself. |
| 2 | Hurricane Rend | Pos 1–3 (random 2) | Slash/Wind 16–22 each | Bleed 3/turn for 3 turns. Tempest Rage bonus applies: +30% damage. |
| 3 | Void Inhale | ALL heroes | — | Pulls ALL heroes forward 1 position. Heroes in pos 1 take Wind 8–12 instead (crushed against the storm). |
| 4 | Black Feather Toll | Single hero (lowest HP) | Magic 20–25 | Ignores PROT. If target is on Death's Door: instant kill (no Death Blow resist check). 4-turn cooldown. |
| 5 | Dying Gale | ALL heroes | Wind 10–14 | Destroys all Wind Walls. Shuffles all heroes randomly. Used once when entering Phase 3 and then on a 5-turn cooldown. |

**Phase-Specific Mechanic — Inevitable Scream:** The passive Stress ticking every round is unblockable. The fight is now a pure DPS race against stress-induced afflictions, heart attacks, and Black Feather Toll's execution mechanic. Tempest Rage is fully active — melee is boosted, ranged is penalized. The storm demands you face it head-on.

---

### Overarching Signature Mechanic — The Black Feather

The black feather at Aethon's core is the anchor of its existence — the last physical remnant of whatever the cultists sacrificed to birth the storm. It appears mechanically as follows:

- **Phase 1:** The feather is buried deep. Aethon takes 10% reduced damage from all sources (the storm is diffuse, hard to hurt).
- **Phase 2:** The feather is exposed but orbiting. Feather Ward negates the first hit per turn on a cooldown. Players must bait out the Ward with weak attacks before committing heavy hitters.
- **Phase 3:** The feather is still, hovering before the party. Aethon loses all damage reduction. *However*, the feather enables Black Feather Toll — the instant-kill execute on Death's Door targets. The feather is both Aethon's vulnerability and its deadliest weapon.

If a hero lands a critical hit during Phase 3, the feather "flinches" — Black Feather Toll's cooldown resets to full. This is the counterplay: stack Crit chance to suppress the execute.

---

### Dungeon Mechanic Interaction — Weaponized Spire

Aethon uses *all three* dungeon mechanics offensively:

- **Gale (T1):** Fires twice per round in Phase 1 via Gale Harvest. The arena is never still.
- **Wind Walls (T2):** Aethon places them deliberately in Phase 2 via Shrieking Cage, then ignores them with Scything Gale. Dungeon-generated walls also fire, compounding isolation.
- **Tempest Rage (T3):** Fully active in Phase 3. Aethon's wind attacks gain the damage bonus. Ranged heroes suffer accuracy penalties. Melee is boosted — but Aethon is now in melee range and hits like a hurricane.

The intended arc: Phase 1 is a positioning puzzle, Phase 2 is a tactical isolation test, Phase 3 is a brutal melee brawl against a stress clock.

---

### Enrage Condition

If the fight exceeds **20 total rounds** across all phases, Aethon enrages:
- The Scream's passive stress doubles to 12–16/round.
- All damage +50%.
- Black Feather Toll loses its cooldown — usable every round.
- Wind Walls become permanent (never expire).

This ensures stall strategies are impossible. The storm does not tire.

---

### Intended Strategy

**Phase 1 — The Gathering Storm:**
Push DPS steadily to reach 70% before Coalesce stacks too high. Use self-repositioning heroes to handle double-Gale chaos. Apply DoTs — they tick reliably regardless of positioning. Bring at least one stress healer to manage Echoing Wail's Resonance debuff before Phase 2's stress escalation. Avoid committing too many buffs — save resources for later phases.

**Phase 2 — The Wailing Cage:**
Distribute your party so each pair (pos 1–2 and pos 3–4) has at least one damage dealer and one sustain source. Bait Feather Ward with weak attacks, then follow with heavy hitters. Kill Storm Remnants immediately — their Stress attacks compound with Resonance Spike. Target Aethon's 0 PROT aggressively. The Wind Wall splits last 2 turns — plan your burst windows around wall downtime.

**Phase 3 — The Eternal Scream:**
All-in melee burst. Tempest Rage boosts your melee, and Aethon has lost its damage reduction. Stack Crit chance to suppress Black Feather Toll's execute via feather flinches. Keep at least one hero off Death's Door at all times — Black Feather Toll targets lowest HP. Void Inhale pulls everyone forward, so don't over-invest in back-line safety. Stress healing is critical — The Scream's passive ticking is the real kill condition, not Aethon's direct damage.

---

### What It Punishes

- **Tank+heal stalling:** Enrage at 20 rounds. The Scream's unblockable stress makes stalling fatal even before enrage.
- **Pure DPS rush:** Feather Ward in Phase 2 wastes burst damage. Phase transitions don't carry overkill damage.
- **Ranged-only parties:** Tempest Rage in Phase 3 cripples ranged accuracy while boosting Aethon's damage.
- **Single-healer dependence:** Wind Wall splits in Phase 2 isolate half the party from healing.
- **Ignoring stress:** Resonance Spike forces affliction checks. The Scream is unblockable. Cascading afflictions lead to heart attacks.
- **Low-Crit parties in Phase 3:** Black Feather Toll's execute goes unsuppressed, killing Death's Door heroes guaranteed.
- **Static team compositions:** Each phase demands different strengths — positioning flexibility (P1), tactical splitting (P2), melee burst + Crit (P3).

---

### Guaranteed Loot

**Always drops:**
- *The Still Feather* — Legendary trinket. +30% Stress resistance. Immune to forced movement. When at Death's Door: 50% chance to negate killing blows for 1 round (once per battle). −15% Max HP.
- *Stormcore Shard* — Crafting material for legendary wind-element weapons.

**Rare drop (25%):**
- *Echo of the Scream* — Legendary trinket. +25% Crit chance. All attacks gain +3 Wind damage. Each Crit heals 3 Stress. At the start of each round: take 3 unblockable Stress. A deal with the storm — power at the cost of sanity.
