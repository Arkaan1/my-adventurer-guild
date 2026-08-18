# The Frozen Depths — Boss Encounters

---

## 1. Tier 1 Semi-Boss — The Rimestalker

**Tier:** 1

**Visual Description:** A gaunt, translucent ice wraith shaped like a predatory hound — long limbs ending in hooked claws of black ice, a faceless head that splits into a vertical maw lined with frost-crystal teeth. Its body trails a creeping mist that flash-freezes the ground beneath it.

**Size:** 1 (Position 1)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 90 |
| Speed | 6 |
| Dodge | 20% |
| Accuracy | 92% |

**Resistances:**
- Immune: Ice, Bleed
- Resistant: Poison (+40%), Magic (+25%)
- Vulnerable: Fire (-50%), Lightning (-25%)
- Stun Resist: 40%

**Adds:**
- 2× Frost Wisp (Positions 2–3) — Small ice spirits. HP 18. Each turn they pulse passive Frostbite (+3 gauge to all heroes). Can be killed but the Rimestalker resummons one every 3 turns if a slot is open.

**Abilities:**

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Rake of Black Ice** | 1 | Hero 1–2 | Slash + Ice | 8–12 | +8 Frostbite to target |
| **Frost Scent** | 1–2 | Hero with highest Frostbite | — | 0 | Marks target for 2 rounds. Next Rimestalker attack on marked target: guaranteed crit, +15 Frostbite |
| **Howl of the Deep** | 1–2 | All heroes | Stress | 0 | 8–12 Stress. Heroes above 60% Frostbite: +5 additional Stress |
| **Pounce** | 1 | Hero 3–4 | Pierce + Ice | 10–14 | Pulls target to position 1. +10 Frostbite |

**Signature Mechanic — Frost Scent:**
The Rimestalker marks the hero closest to freezing, then its next attack on that hero is an unavoidable critical hit with massive Frostbite application. Creates a recurring dilemma: do you waste a turn cleansing the mark, reposition the marked hero to safety, or accept the hit and manage the consequences?

**Dungeon Mechanic Interaction (Frostbite Gauge):**
The entire encounter is designed to teach Frostbite management. The Rimestalker and its Wisps pile on Frostbite from multiple angles. If any hero reaches 100% Frostbite (frozen), the Rimestalker immediately uses a free bonus action — **Shatter Strike** (20–25 Blunt damage, can kill from Death's Door) — against that hero. Players must learn to rotate positions, use fire abilities, and prioritize Wisp kills to control gauge buildup.

**Intended Strategy:**
Kill or manage Frost Wisps to reduce passive Frostbite pressure. When Frost Scent marks a hero, either cleanse the mark, Guard that hero, or move them to a position the Rimestalker can't reach with its crit follow-up. Fire damage is king — Pyromancer or Berserker with fire skills melt this fight. Heroes with self-Frostbite-reduction or movement abilities (Duelist, Rogue) dodge the predator loop.

**What It Punishes:**
- **Static positioning:** Frost Scent + Pounce destroy parties that don't shuffle.
- **Ignoring adds:** Wisps ramp Frostbite to lethal thresholds.
- **No fire:** Without fire damage, the fight becomes a slow freeze.
- **Low stress management:** Howl of the Deep stacks fast if Frostbite is already high.

---

## 2. Tier 1 Boss — Glaethur, the Hungering Cold

**Tier:** 1

**Visual Description:** A towering frost beast — part bear, part something older. Its matted white fur is crusted with glacial ice that forms jagged armor plates across its shoulders and spine. Its lower jaw unhinges impossibly wide, revealing a gullet that radiates supernatural cold. Pale blue eyes glow with predatory cunning far beyond animal intelligence. When it roars, the cavern temperature plummets and frost races across every surface.

**Size:** 2 (Positions 1–2)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 155 |
| Speed | 5 |
| Dodge | 12% |
| Accuracy | 95% |

**Resistances:**
- Immune: Ice
- Resistant: Blunt (+30%), Bleed (+50%)
- Vulnerable: Fire (-50%), Lightning (-25%)
- Stun Resist: 60%

**Adds:**
- **Starting:** 2× Frost Cub (Positions 3–4) — HP 22 each. One uses **Gnaw** (6–8 Slash, hero 1–2), the other uses **Keening Cry** (buffs Glaethur's Speed +2 for 1 turn). If both Cubs die, Glaethur enters a minor frenzy (+15% damage for 2 turns).
- **Mid-fight (Phase 2):** Glaethur howls to summon 1× Ice Wraith (Position 3 or 4, HP 20) every 3rd turn if a slot is open.

**Phase 1 — The Hunt (100%–50% HP):**

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Glacial Slam** | 1–2 | Hero 1–2 | Blunt + Ice | 12–16 | +10 Frostbite. 30% chance Stun (1 round) |
| **Freezing Breath** | 1–2 | Hero 1–3 (AoE) | Ice | 6–9 each | +12 Frostbite to all hit |
| **Glacial Maw** | 1–2 | Any hero with Frostbite ≥70% | — | — | *See signature mechanic* |
| **Territorial Roar** | 1–2 | All heroes | Stress | 0 | 10–15 Stress. Pushes hero in pos 1 back to pos 2 |

**Phase 2 — Frenzy (Below 50% HP):**
*Trigger:* Crossing 50% HP. Glaethur rears up, ice erupts from its body.
*Changes:* Speed +3, Accuracy +5%, gains a passive aura — **Creeping Cold**: all heroes gain +4 Frostbite at the start of each round (stacks with other sources).

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Glacial Slam** | 1–2 | Hero 1–2 | Blunt + Ice | 15–20 | +12 Frostbite. 40% Stun |
| **Avalanche Charge** | 1–2 | Hero 1–3 (line) | Blunt + Ice | 10–14 each | Shuffles all hero positions randomly. +8 Frostbite each |
| **Glacial Maw** | 1–2 | Any hero with Frostbite ≥60% (lowered threshold) | — | — | *See signature mechanic* |
| **Howl of Starvation** | 1–2 | All heroes | Stress + Ice | 4–6 | 15–20 Stress. +6 Frostbite |

**Signature Mechanic — Glacial Maw (Devour):**
Glaethur can swallow any hero whose Frostbite gauge is above a threshold (70% in Phase 1, 60% in Phase 2). The swallowed hero is removed from the battlefield and placed inside Glaethur. Each turn they take 8–10 Ice damage and 10 Stress, and they cannot act. To free them, the party must deal 30 damage to Glaethur in a single round (representing forcing its jaws open). If the hero is not freed within 3 turns, they are killed outright — no Death's Door, dead. Only one hero can be devoured at a time.

**Dungeon Mechanic Interaction (Frostbite Gauge):**
Glaethur is the Frostbite mastery check. Phase 1 teaches that Frostbite above 70% means death via Devour. Phase 2 lowers the threshold and adds passive Frostbite ramp via Creeping Cold, compressing the safe window. The fight demands constant Frostbite mitigation through fire damage, movement, or class abilities while maintaining enough DPS to pass the Devour rescue check.

**Intended Strategy:**
- **Phase 1:** Kill one Cub early (the Keening Cry buffer) but consider leaving the Gnaw Cub alive to avoid Glaethur's frenzy buff. Focus fire on Glaethur while keeping all heroes below 70% Frostbite. Pyromancer or fire-capable classes are essential. Use stuns when possible — 60% resist is beatable.
- **Phase 2:** This is a DPS race against Creeping Cold. The party must burn Glaethur down before Frostbite gauges spiral. Save burst for freeing devoured heroes. Positioning matters — Avalanche Charge scrambles formation, so classes that function in any position (Berserker, Cleric) are valuable.

**What It Punishes:**
- **Tank+heal stalling:** Phase 2 Creeping Cold ensures Frostbite will eventually freeze and kill everyone. You must deal damage.
- **Pure DPS rush:** Phase 1 Cubs and Territorial Roar disrupt. Devour removes your DPS hero if you ignore Frostbite.
- **No fire:** Without fire to manage Frostbite, Glacial Maw is nearly unavoidable in Phase 2.
- **Rigid formation:** Avalanche Charge scrambles positions; parties that can only function in one arrangement collapse.

**Guaranteed Loot:**
- **Glaethur's Fang** (Trinket) — +15% damage vs enemies with Permafrost Armor. Wearer gains +10 Frostbite resistance.
- Rare crafting material: **Primordial Frost Core** — used for ice-resistant equipment.

---

## 3. Tier 2 Semi-Boss — The Frostbound Sentinel

**Tier:** 2

**Visual Description:** A towering undead knight entombed in ancient plate armor fused with glacial ice. Its helm is cracked open, revealing a skull with pale blue flame where eyes should be. One arm ends in a massive ice-encrusted mace; the other grips a tower shield that is more glacier than metal — constantly reforming with fresh frost.

**Size:** 1 (Position 1)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 130 |
| Speed | 3 |
| Dodge | 5% |
| Accuracy | 95% |
| Permafrost Armor | 40 (regenerates 10/turn) |

**Resistances:**
- Immune: Ice, Poison, Bleed
- Resistant: Slash (+30%), Pierce (+30%), Magic (+20%)
- Vulnerable: Fire (-50%), Blunt (-25%)
- Stun Resist: 70%

**Adds:**
- 1× Frozen Squire (Position 2) — HP 28. Uses **Frost Mend** (restores 15 Permafrost Armor to Sentinel per turn) and **Ice Spike** (6–8 Ice damage, hero 3–4, +5 Frostbite). If the Squire dies, it leaves a Corpse in position 2. The Sentinel can use **Raise Squire** (3-turn cooldown) to revive it at half HP.

**Abilities:**

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Permafrost Crush** | 1 | Hero 1–2 | Blunt + Ice | 12–16 | +8 Frostbite. If Permafrost Armor is above 30: +25% damage |
| **Glacial Bulwark** | 1 | Self | — | 0 | +20 Permafrost Armor. Gains Guard (absorbs next hit targeting positions 2–3) |
| **Frozen Mandate** | 1–2 | Hero 1–3 | Ice + Stress | 5–8 | 12–16 Stress. Debuffs target's Speed –3 for 2 turns |
| **Raise Squire** | 1 | Squire Corpse | — | 0 | Revives Frozen Squire at 14 HP. 3-turn cooldown |

**Signature Mechanic — Undying Vigil:**
If the Sentinel receives no direct damage during an entire round (all attacks miss, are absorbed by armor, or target the Squire instead), its Permafrost Armor fully regenerates to 40 at the start of its next turn, regardless of current value. This forces the party to hit the Sentinel every single round, even if focusing the Squire.

**Dungeon Mechanic Interaction (Permafrost Armor):**
This fight teaches the Permafrost Armor system. The Sentinel has 40 armor that regenerates 10/turn passively (plus 15/turn from the Squire, plus full regen from Undying Vigil). Fire damage bypasses armor efficiently; physical damage chips slowly. Players must internalize the priority: strip armor → deal HP damage, and learn that fire is the armor-breaking tool.

**Intended Strategy:**
Split attention: one or two heroes keep fire pressure on the Sentinel to crack its armor each round (preventing Undying Vigil), while others kill the Squire to stop the 15/turn armor repair. Once the Squire is dead, focus all fire damage on the Sentinel. Be ready when the Sentinel uses Raise Squire — either burst the revived Squire immediately or accept the armor pressure. Blunt damage (Knight, Cleric) helps once armor is down. Avoid relying on Slash/Pierce — they bounce off the resistances.

**What It Punishes:**
- **Pure physical teams:** Slash and Pierce resist + Permafrost Armor = almost no damage.
- **Ignoring the Squire:** 15 armor/turn + Undying Vigil makes the Sentinel functionally invincible.
- **Slow/passive play:** Undying Vigil punishes any round where you don't connect.
- **Backline-only targeting:** Squire is position 2, Sentinel is position 1 — you must hit the front.

---

## 4. Tier 2 Boss — Vorath, the Living Glacier

**Tier:** 2

**Visual Description:** Not a creature encased in ice — Vorath *is* ice. A massive humanoid form of compressed glacial ice, veined with deep blue fractures that pulse with arcane cold. Its torso is a geode of frozen crystal, and where its face should be there is only a smooth glacial surface that reflects a warped, mocking image of whoever looks at it. Its arms end in asymmetric formations — one a broad shield-wall of ice, the other a jagged lance. When it moves, the cavern groans and cracks spread across the floor.

**Size:** 2 (Positions 1–2)

**Base Stats (Phase 1):**
| Stat | Value |
|------|-------|
| HP | 200 |
| Speed | 3 |
| Dodge | 5% |
| Accuracy | 98% |
| Permafrost Armor | 60 (regenerates 8/turn) |

**Resistances:**
- Immune: Ice, Bleed, Poison
- Resistant: Slash (+40%), Pierce (+40%), Magic (+20%), Stun (+80%)
- Vulnerable: Fire (-60%), Lightning (-30%)

**Adds:**
- **Starting:** 2× Ice Pylon (Positions 3–4) — HP 25 each, Permafrost Armor 15. Immobile. Each Pylon grants Vorath +5% damage reduction while alive. They use **Frost Pulse** (4–6 Ice, AoE all heroes, +5 Frostbite each).
- **Phase 2 summon:** Every 4th turn, Vorath creates 1× Glacial Shard (Position 3 or 4, HP 15) that self-destructs after 2 turns for 12–16 Ice AoE damage + 15 Frostbite to all heroes unless killed first.

**Phase 1 — The Immovable (100%–40% HP):**

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Tectonic Grind** | 1–2 | All heroes | — | 0 | Randomly shuffles all hero positions. +6 Frostbite each. 8 Stress each |
| **Glacial Lance** | 1–2 | Hero 1–2 | Pierce + Ice | 14–18 | +10 Frostbite. Ignores Guard |
| **Ice Wall** | 1–2 | Self | — | 0 | +25 Permafrost Armor. Vorath cannot be moved or stunned for 2 turns |
| **Resonance Pulse** | 1–2 | Hero 3–4 | Ice + Magic | 8–12 | +8 Frostbite. -15% healing received for 2 turns |

**Phase 2 — The Shattered (Below 40% HP):**
*Trigger:* At 40% HP, Vorath fractures violently. Its massive form cracks and re-forms into a leaner, jagged silhouette. Shards of its old body scatter as Glacial Shards. Permafrost Armor shatters (reset to 0, no longer regenerates passively).
*Changes:* Speed +5 (to 8), Dodge +20% (to 25%), loses Permafrost Armor regeneration but gains +30% damage. Size remains 2.

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Shrapnel Burst** | 1–2 | All heroes | Pierce + Ice | 8–12 each | +10 Frostbite each. 25% chance Bleed (3/turn, 3 turns) |
| **Glacial Lance** | 1–2 | Hero 1–3 | Pierce + Ice | 16–22 | +12 Frostbite. Ignores Guard |
| **Tectonic Grind** | 1–2 | All heroes | — | 0 | Same as Phase 1 |
| **Permafrost Tomb** | 1–2 | Hero with highest Frostbite | Ice | 10–14 | If target Frostbite ≥80%: Frozen solid (Stun 2 turns, cannot be healed, takes double damage from next hit) |
| **Fracture Spike** | 1–2 | Hero 1 | Blunt + Ice | 20–26 | Knockback: pushes target to position 4. 15 Stress |

**Signature Mechanic — Tectonic Grind:**
A position scramble that forces the entire party into random positions. This isn't just inconvenient — it separates tanks from their Guard targets, pushes healers to the front, and strands melee DPS in the back. Combined with Vorath's other abilities that target specific positions, the scramble turns every round into a positioning puzzle.

**Dungeon Mechanic Interaction (Frostbite + Permafrost):**
Phase 1 is a Permafrost Armor puzzle: 60 armor + 8/turn regen + Ice Wall requires sustained fire damage and Pylon management. Phase 2 strips the armor but introduces Permafrost Tomb — a direct Frostbite weaponization that punishes accumulated gauge. The fight transitions from "break the armor" to "survive the speed" while managing Frostbite under increasing AoE pressure.

**Intended Strategy:**
- **Phase 1:** Slow and methodical. Kill one Ice Pylon to reduce damage reduction, then focus fire on Vorath with fire damage to break armor. Save stuns/debuffs — Vorath has 80% stun resist but speed debuffs work. After Tectonic Grind, spend 1 turn repositioning before resuming DPS. Lightning secondary damage helps.
- **Phase 2:** Shift to survival + burst. Kill Glacial Shards immediately (they're ticking bombs). Keep Frostbite below 80% on all heroes or Permafrost Tomb removes them. Vorath is now fast but has no armor — raw DPS lands. Duelist and Rogue shine here with dodge and speed. Don't try to tank Fracture Spike in position 1 — use movement abilities to vacate.

**What It Punishes:**
- **DPS rush:** Phase 1 armor absorbs everything without fire. You waste burst that you'll need in Phase 2.
- **Tank+heal stalling:** Phase 2 speed and AoE overwhelm static defense. Glacial Shard detonations force proactive play.
- **Rigid positioning:** Tectonic Grind in every phase. If your comp needs specific positions, bring movement skills.
- **Single-target focus:** Ignoring Pylons (Phase 1) or Shards (Phase 2) causes cascading damage.
- **No fire in Phase 1 / no burst in Phase 2:** The phase transition demands different strategies.

**Guaranteed Loot:**
- **Shard of Vorath** (Trinket) — Wearer's attacks deal +20% damage to Permafrost Armor. -5 Frostbite to wearer at start of each round.
- Rare crafting material: **Living Ice Fragment** — used for weapons with innate ice-armor-piercing.

---

## 5. Tier 3 Semi-Boss — The Crystalblood Revenant

**Tier:** 3

**Visual Description:** Once a warrior, now a frozen horror. Its body is desiccated and frost-blackened, but every vein is visible — filled not with blood but with luminous blue crystal that pulses like a heartbeat. Where its wounds have opened, jagged crystal formations jut outward. It moves with unsettling precision, each motion causing its crystal veins to chime like breaking glass.

**Size:** 1 (Position 1)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 170 |
| Speed | 7 |
| Dodge | 22% |
| Accuracy | 100% |

**Resistances:**
- Immune: Ice, Bleed
- Resistant: Poison (+50%), Pierce (+25%)
- Vulnerable: Fire (-40%), Blunt (-30%), Lightning (-20%)
- Stun Resist: 55%

**Adds:**
- 2× Frozen Husk (Positions 2–3) — HP 24 each. They use **Crystal Spray** (5–7 Pierce, hero 1–3, applies 1-turn Bleed 4/turn) and **Frost Groan** (6 Stress to all heroes). On death, a Frozen Husk detonates: 6 Ice damage and +8 Frostbite to hero in position 1.

**Abilities:**

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Crystalline Hemorrhage** | 1 | Hero 1–2 | Pierce + Ice | 10–14 | Applies Bleed (5/turn, 3 turns). Under T3 Frozen Blood: this Bleed freezes — Stun 1 turn per tick instead of HP damage |
| **Shardstorm** | 1–2 | Hero 2–4 (AoE) | Pierce | 6–9 each | Applies Bleed (3/turn, 2 turns) to all hit. +5 Frostbite each |
| **Crystalline Transfusion** | 1 | Self | — | 0 | Heals 10 HP per hero currently Bleeding (or frozen-by-bleed). If 3+ heroes are bleeding: also gains +3 Speed for 2 turns |
| **Resonant Shatter** | 1–2 | Any Stunned hero | Ice + Blunt | 18–24 | Bonus ability: only usable against Stunned (frozen-by-bleed) targets. Removes the Stun but deals heavy burst damage. 20 Stress |
| **Glacial Vein Pulse** | 1–2 | All heroes | Ice + Stress | 4–6 | 10–14 Stress. +6 Frostbite to all |

**Signature Mechanic — Crystalline Hemorrhage → Resonant Shatter Combo:**
Under the T3 Frozen Blood mechanic, the Revenant's bleeds don't tick damage — they freeze heroes (Stun). It then follows up with Resonant Shatter on the stunned target for devastating burst damage. The loop: apply bleed → bleed freezes hero → Shatter the frozen hero. Cleansing the bleed prevents the freeze. Letting the freeze happen and surviving the Shatter is possible but costly.

**Dungeon Mechanic Interaction (Frozen Blood):**
This fight is designed to teach Frozen Blood. Every bleed the Revenant applies becomes a stun under T3 rules. Healing is halved (T3), so you can't outheal the Shatter burst. Frostbite (T1) is maintained via Glacial Vein Pulse and Husk detonations. The Revenant's self-heal (Crystalline Transfusion) means that leaving bleeds on heroes actively heals the boss. All three mechanics interact: Frostbite softens heroes, Frozen Blood turns bleeds into CC, and halved healing makes recovery brutal.

**Intended Strategy:**
Bring bleed cleanse or bleed resistance. Cleric and Alchemist are strong here — Cleric for cleanse, Alchemist for poison (it doesn't freeze under Frozen Blood, only bleed does) and antidotes. Kill Frozen Husks carefully — their death explosion hits position 1, so don't stack a fragile hero there. Focus DPS on the Revenant between its bleed cycles. Stun it to prevent Resonant Shatter follow-ups. Fire and Blunt damage are the efficient damage types.

**What It Punishes:**
- **Bleed-heavy teams (Berserker, Duelist, Ranger):** Their bleed abilities are irrelevant (Revenant is immune), and the Revenant's bleeds are far more dangerous under Frozen Blood.
- **Heal-dependent teams:** Halved healing (T3) makes recovering from Shatter bursts very difficult.
- **No cleanse:** Without bleed removal, the freeze-Shatter loop is nearly inescapable.
- **Ignoring adds:** Husks apply additional bleeds, feeding the Revenant's heal and the freeze chain.

---

## 6. Tier 3 Boss — Skarneth, the Pale Surgeon

**Tier:** 3

**Visual Description:** A tall, impossibly thin figure wrapped in frost-stiffened surgical robes, stained with frozen blue-black blood. Its hands are bare — long, skeletal fingers tipped with scalpel-sharp ice crystals that it flexes constantly. Its face is a featureless mask of smooth ice with two dark pits where eyes should be, and a thin crack of a mouth that never opens. From its back extend four articulated limbs of black ice, each ending in a different surgical instrument — saw, clamp, needle, probe. It does not walk; it glides, leaving a trail of frozen blood on the ground.

**Size:** 1 (Position 2)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 260 |
| Speed | 7 |
| Dodge | 18% |
| Accuracy | 105% |
| Permafrost Armor | 30 (regenerates 5/turn) |

**Resistances:**
- Immune: Ice, Poison
- Resistant: Bleed (+60%), Magic (+30%), Pierce (+20%)
- Vulnerable: Fire (-50%), Blunt (-30%)
- Stun Resist: 65%

**Adds:**
- **Starting:** 1× Surgical Implement (Position 1) — HP 30. Acts as a Guard for Skarneth. Uses **Clamp** (targets hero 1, -25% damage dealt for 2 turns) and **Probe** (hero 1–2, 5–8 Pierce, applies Bleed 4/turn for 2 turns → freezes under Frozen Blood).
- **Phase 2 summon:** The Operating Table (Position 3 or 4) — HP 40, Permafrost Armor 20. *See signature mechanic.* Summoned once per Phase 2 trigger.

**Phase 1 — Diagnosis (100%–50% HP):**
Skarneth probes the party, applying debuffs and bleeds, identifying the weakest hero.

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Incision** | 1–2 | Hero 1–2 | Slash + Ice | 12–16 | Bleed (5/turn, 3 turns → freezes under Frozen Blood). +8 Frostbite |
| **Anesthetic Mist** | 2–3 | Hero 1–3 (AoE) | Ice | 4–7 each | -20% damage dealt, -15 Dodge for 2 turns. +6 Frostbite each |
| **Trepanation** | 2 | Hero 3–4 | Pierce + Stress | 8–12 | 20–25 Stress. Debuffs target: -10% healing received for 3 turns |
| **Cold Reading** | 2–3 | Lowest HP hero | — | 0 | Marks target as "Patient" for 3 turns. Patient takes +25% damage from Skarneth. If Patient reaches 0 HP (Death's Door), triggers Phase 2 immediately |

**Phase 2 — Surgery (Below 50% HP or Patient reaches Death's Door):**
*Trigger:* Either Skarneth drops below 50% HP, or a Patient-marked hero hits Death's Door.
*Changes:* Speed +2, gains access to Surgical Extraction. Summons the Operating Table.

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Incision** | 1–2 | Hero 1–3 | Slash + Ice | 14–20 | Same as Phase 1 but wider range and higher damage |
| **Surgical Extraction** | 2 | Any hero with Frostbite ≥60% OR any Stunned hero | — | — | *See signature mechanic* |
| **Anesthetic Mist** | 2–3 | All heroes | Ice | 5–8 each | Same debuffs as Phase 1 but hits all 4 |
| **Vital Harvest** | 2 | Operating Table (if occupied) | — | 0 | Drains the extracted hero: deals 12–15 Magic damage to them, heals Skarneth for 20 HP. 15 Stress to entire party |
| **Flatline Pulse** | 1–3 | All heroes | Ice + Stress | 6–10 | 15–20 Stress. +10 Frostbite to all. Heroes on Death's Door: Death Blow check at -10% penalty |

**Signature Mechanic — Surgical Extraction:**
Skarneth can remove a hero from the battlefield and place them on the Operating Table (a destructible add in position 3 or 4). The extracted hero is incapacitated and takes 8 damage + 10 Stress per turn. Skarneth can also use **Vital Harvest** to drain them for healing. To free the hero, the party must destroy the Operating Table (40 HP + 20 Permafrost Armor). If the table is not destroyed within 4 turns, the hero is killed — no Death's Door. Skarneth can only extract one hero at a time.

**Dungeon Mechanic Interaction (All Three Tiers):**
- **Frostbite:** Skarneth's abilities apply heavy Frostbite. Extraction threshold is Frostbite-gated (≥60%), making gauge management critical.
- **Permafrost Armor:** Both Skarneth and the Operating Table have Permafrost Armor. Fire is needed to crack both efficiently.
- **Frozen Blood:** Skarneth's bleeds freeze heroes under T3 rules, creating easy Extraction targets (stunned heroes are valid targets). The heal reduction makes recovering from Extraction damage very difficult.

**Intended Strategy:**
- **Phase 1:** Kill the Surgical Implement quickly to remove its Guard and debuffs. Focus fire on Skarneth with fire + blunt damage. Cleanse bleeds immediately — Frozen Blood will stun heroes, and stunned heroes are Extraction targets in Phase 2. Keep all heroes below 60% Frostbite. Don't let a Patient-marked hero reach Death's Door unless you're ready for Phase 2.
- **Phase 2:** The Operating Table is the priority when it appears. Fire damage to crack its Permafrost Armor, then burst it down. Keep DPS on Skarneth between Extraction cycles. Bring bleed cleanse and stress heal — Vital Harvest + Flatline Pulse create a stress spiral. Stun Skarneth to delay Extraction.

**What It Punishes:**
- **Tank+heal stalling:** Healing is halved (T3), Vital Harvest heals Skarneth, and Flatline Pulse punishes Death's Door heroes. You cannot outlast this fight.
- **Pure DPS ignoring mechanics:** Extraction removes your damage dealer. If you don't manage Frostbite and bleeds, you hand Skarneth easy targets.
- **No bleed cleanse:** Frozen Blood turns every bleed into a stun, and stunned heroes get Extracted.
- **Single carry hero:** Cold Reading marks one hero, and Extraction removes one hero. If your comp depends on one key hero, Skarneth will find them.

**Guaranteed Loot:**
- **The Pale Scalpel** (Trinket) — +20% damage vs Stunned enemies. +15% Bleed resist. Wearer's heals are not affected by the halved-healing reduction of Frozen Blood (unique exception).
- Rare crafting material: **Surgical Ice Crystal** — used for precision weapons with anti-armor properties.

---

## 7. Final Boss — Ithrevax, Heart of the Eternal Winter

**Visual Description:** The heart of the glacier is alive. Ithrevax is a colossal entity of living ice — not a creature frozen in ice, but the cold itself given form and hunger. Its body is a towering mass of translucent glacial crystal, vaguely humanoid from the waist up, but its lower half is fused with the cavern floor — a root system of ice that extends in every direction. Within its torso, visible through the ice, are dozens of frozen figures — adventurers, beasts, even other monsters — all perfectly preserved, their faces locked in silent screams. Its head is a crown of jagged ice spires, and at its center burns a single point of absolute darkness — not an eye, but a void where warmth goes to die.

**Size:** 3 (Positions 1–3)

**Lore Snippet:** Ithrevax is not a monster that moved into the glacier — it is the glacier. Millennia ago, a catastrophic arcane event froze an entity of pure elemental hunger mid-manifestation, and the Frozen Depths grew around it like a wound scabbing over. Every frozen horror in these caverns is an echo of its dreaming will. Now, disturbed by the delving, it wakes — and it is very, very hungry.

---

### Phase 1 — The Thaw (100%–65% HP)

**Phase Name:** The Thaw
**Trigger:** Combat start.
**Visual Change:** Ithrevax is partially embedded in the cavern wall, only its upper body free. Cracks of blue light spread across the ice as it strains to pull itself loose. The frozen figures inside it begin to twitch.
**Stat Changes:**

| Stat | Value |
|------|-------|
| HP | 420 (total across all phases) |
| Speed | 4 |
| Dodge | 8% |
| Accuracy | 102% |
| Permafrost Armor | 50 (regenerates 10/turn) |

**Resistances (all phases unless noted):**
- Immune: Ice, Poison
- Resistant: Bleed (+70%), Slash (+30%), Pierce (+30%), Magic (+20%), Stun (+75%)
- Vulnerable: Fire (-60%), Lightning (-30%)

**Starting Adds:** 1× Frozen Echo (Position 4) — HP 30. A ghostly copy of a frozen adventurer inside Ithrevax. Uses random hero-class abilities at reduced power (8–10 damage, basic versions). When killed, Ithrevax can resummon a different Echo on its next turn.

**Abilities:**

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Glacial Grasp** | 1–3 | Hero 1–2 | Blunt + Ice | 12–16 | +12 Frostbite. Pulls target to position 1 |
| **Breath of Ages** | 1–3 | All heroes | Ice | 6–10 each | +8 Frostbite each. 8–12 Stress each. Applies -10% Speed for 2 turns |
| **Frozen Choir** | 1–3 | All heroes | Stress | 0 | 18–24 Stress. The frozen figures inside Ithrevax scream. Heroes above 100 Stress: Affliction check at -10% penalty |
| **Entomb** | 1–3 | Hero 3–4 | Ice + Magic | 10–14 | +15 Frostbite. If target Frostbite ≥ 80%: encased in ice pillar (Stun 2 turns, takes 6 Ice/turn, must be freed by ally attacking the pillar for 15 damage) |

**Phase-Specific Mechanic — Frozen Echoes:**
Ithrevax summons Frozen Echoes — ghostly copies of adventurers trapped within it that mimic hero abilities. They cycle through different "classes" each time they're resummooned, forcing the party to adapt. The Echo acts as both a damage source and a distraction: ignoring it means taking hits from behind, but over-focusing it means Ithrevax's armor regenerates.

---

### Phase 2 — The Emergence (65%–30% HP)

**Phase Name:** The Emergence
**Trigger:** 65% HP.
**Visual Change:** Ithrevax tears free from the cavern wall with a sound like a continent cracking. Its full form is revealed — lower body a mass of root-like ice tendrils that anchor into the floor. The chamber temperature drops violently. Frost races across hero armor and skin.
**Stat Changes:** Speed +3 (to 7), Dodge +10% (to 18%), Permafrost Armor resets to 40 (regen reduced to 5/turn). Gains passive aura: **Absolute Chill** — all heroes gain +5 Frostbite per round. All healing reduced by an additional 25% (stacks with Frozen Blood's 50% = 75% total healing reduction).

**Adds:** The Frozen Echo is replaced by 2× Permafrost Root (Positions 4, spawning in open slots) — HP 20, Permafrost Armor 15. Immobile. Each living Root reduces all fire damage Ithrevax takes by 20%. They use **Frost Spike** (6–9 Ice, hero 1–2, +8 Frostbite) and regenerate 5 HP/turn.

**Abilities:**

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Tectonic Upheaval** | 1–3 | All heroes | Blunt + Ice | 10–14 each | Shuffles all hero positions randomly. +10 Frostbite each |
| **Glacial Impalement** | 1–3 | Hero 1–2 | Pierce + Ice | 18–24 | +12 Frostbite. Bleed (6/turn, 3 turns → Stun under Frozen Blood). Ignores Guard |
| **Frozen Choir** | 1–3 | All heroes | Stress | 0 | 22–28 Stress. Same as Phase 1 but stronger |
| **Winter's Claim** | 1–3 | Hero with highest Frostbite | Ice + Magic | 14–18 | If target Frostbite ≥ 70%: Frozen solid (Stun 2 turns, -50% damage reduction on them, cannot be healed). 20 Stress |
| **Entropic Cold** | 1–3 | — | — | — | *See overarching signature mechanic* |

**Phase-Specific Mechanic — Permafrost Roots:**
The Roots serve a dual purpose: they reduce fire damage to Ithrevax (the party's primary damage type) and they apply Frostbite. They must be destroyed to maintain fire effectiveness, but they have their own Permafrost Armor. This creates a resource-splitting problem: spend fire on Roots (which resist fire via their own armor) or on Ithrevax (whose fire reduction makes it less efficient while Roots live).

---

### Phase 3 — Absolute Zero (Below 30% HP)

**Phase Name:** Absolute Zero
**Trigger:** 30% HP.
**Visual Change:** Ithrevax's crystal body turns from translucent blue to black ice. The void at its crown expands, becoming a swirling vortex of darkness and frost. The frozen figures inside it shatter, and their fragments orbit Ithrevax like a halo of frozen death. The entire cavern begins to collapse inward — ice falls from the ceiling, the floor cracks and refreezes. This is no longer a fight. This is a catastrophe.
**Stat Changes:** Speed +2 (to 9), Dodge returns to 8%, Permafrost Armor is gone permanently. All damage dealt +40%. Absolute Chill increases to +8 Frostbite/round. Healing reduction remains at 75%.

**Adds:** No persistent adds. Instead, every 2nd turn, a **Shard Storm** occurs: 3 frozen figure fragments (untargetable) strike random heroes for 5–8 Ice damage each + 6 Frostbite. This is environmental, not an attack — it cannot be dodged or guarded.

**Abilities:**

| Ability | Positions | Targets | Type | Damage | Effects |
|---------|-----------|---------|------|--------|---------|
| **Annihilation Lance** | 1–3 | Hero 1 (line, hits 1–2) | Ice + Magic | 22–30 (pos 1), 14–18 (pos 2) | +15 Frostbite to both. Knockback: pos 1 → pos 2, pos 2 → pos 3. Death's Door check at -15% if target already on Door |
| **Cataclysm** | 1–3 | All heroes | Ice + Blunt | 12–18 each | +12 Frostbite each. Destroys all buffs on all heroes. 15 Stress each |
| **Frozen Choir** | 1–3 | All heroes | Stress | 0 | 25–35 Stress. Heroes at Affliction: take 5 additional damage |
| **Entropy's Embrace** | 1–3 | Any hero with Frostbite ≥60% | Ice + Magic | 20–28 | Target is frozen and shattered simultaneously. If target is on Death's Door: instant kill. If not: reduces to 1 HP + Death's Door. 30 Stress to entire party |
| **Entropic Cold** | 1–3 | — | — | — | *See overarching signature mechanic (intensified)* |

**Phase-Specific Mechanic — Cascading Collapse:**
The fight is now a hard DPS race. Every turn, the arena deteriorates — Shard Storm is unavoidable environmental damage, Absolute Chill ramps Frostbite relentlessly, and Entropy's Embrace threatens instant kills. There is no stabilizing. The party must burn Ithrevax's remaining ~126 HP before the cascading effects overwhelm them. Every turn spent healing or repositioning instead of dealing damage brings the party closer to wipe.

---

### Overarching Signature Mechanic — Entropic Cold

Active in Phases 2 and 3. At the end of each round, Ithrevax designates one hero position (randomly, never the same twice in a row) as a **Frozen Ground** zone. At the start of the *next* round, any hero standing in that position suffers: +20 Frostbite, cannot be healed that turn, and takes 8 Ice damage. The zone is announced visually (frost spirals on that position) giving the party one turn to move the hero out.

In Phase 2, one zone per round.
In Phase 3, two zones per round (two positions frozen simultaneously).

This forces constant repositioning — the party can never settle into a static formation. Combined with Tectonic Upheaval (random shuffle), it creates a persistent spatial puzzle layered on top of the DPS/survival demands.

---

### Dungeon Mechanic Interaction — Weaponized Winter

Ithrevax integrates all three tier mechanics as weapons:

- **Frostbite Gauge (T1):** Absolute Chill aura provides constant passive Frostbite ramp. Multiple abilities apply large Frostbite spikes. Frozen Ground zones add burst Frostbite. Heroes who reach 100% Frostbite are frozen — and Ithrevax's Entropy's Embrace (Phase 3) or Winter's Claim (Phase 2) will kill or cripple them.

- **Permafrost Armor (T2):** Phase 1 has heavy armor (50, regenerating 10/turn). Phase 2 has lighter armor but introduces Roots that reduce fire effectiveness. Phase 3 strips all armor — the trade-off is raw damage output. The armor phases force the party to bring fire, then punish them for relying on it exclusively (Root fire reduction).

- **Frozen Blood (T3):** Glacial Impalement (Phase 2) applies bleed that freezes heroes. Healing reduction stacks to 75% in Phases 2–3. The bleed-to-stun conversion feeds into Winter's Claim and Entropy's Embrace targeting. Parties that planned around healing must adapt radically.

---

### Enrage Condition

If the fight exceeds **18 total rounds**, Ithrevax enrages: **Eternal Winter**. All heroes instantly gain +40 Frostbite. Ithrevax gains +50% damage and acts twice per round. Any hero with Frostbite above 80% at the end of any subsequent round is instantly killed. This is effectively a wipe timer — the fight must be resolved within 18 rounds.

---

### Intended Strategy

**Phase 1 (The Thaw):**
Crack the Permafrost Armor with fire, then deal HP damage. Manage the Frozen Echo — kill it when it's a dangerous "class," tolerate it when it's not. Keep all heroes below 80% Frostbite to avoid Entomb. Use stress heals to counter Frozen Choir. This phase is the most forgiving — use it to establish rhythm and deal ~35% of total HP (147 damage). Save cooldowns for Phase 2.

**Phase 2 (The Emergence):**
Kill Permafrost Roots immediately — they reduce fire damage to Ithrevax by 20% each, and fire is your primary damage type. Once Roots are down, pour fire + lightning into Ithrevax. Cleanse bleeds from Glacial Impalement before they freeze heroes. Start tracking Entropic Cold zones and repositioning proactively. Stress management becomes critical — Frozen Choir at 22–28 stress per cast will trigger Afflictions fast. Deal ~35% HP (147 damage) before Phase 3. The healing reduction (75%) means you're fighting on thin margins — every hit matters, and recovery is slow.

**Phase 3 (Absolute Zero):**
Pure DPS race. Ithrevax has no armor and ~126 HP remaining, but deals devastating damage and ramps Frostbite to lethal levels. Ignore everything except dealing damage. Use all saved burst abilities, damage buffs, and trinket effects. Two Entropic Cold zones per round means 2 of 4 positions may be unsafe — the party is constantly shuffling. Accept that heroes will hit Death's Door; the question is whether you kill Ithrevax before Entropy's Embrace kills them. Stun attempts are valuable despite 75% resist — one successful stun in this phase can save the run.

**Comp Considerations:**
- Fire damage is mandatory. Pyromancer is near-essential; Berserker or Alchemist with fire secondary helps.
- Bleed cleanse is critical for Phase 2 (Frozen Blood conversion). Cleric or Alchemist.
- Stress healing extends the runway. Cleric, Necromancer (if stress-heal capable), or stress-resist trinkets.
- Position flexibility is non-negotiable. Avoid comps where more than one hero is position-locked.
- A tank (Knight) helps absorb Annihilation Lance and Glacial Impalement, but pure tank+heal stalling is impossible due to enrage and healing reduction.

---

### What It Punishes

- **Tank+heal stalling:** 75% healing reduction in Phases 2–3, Vital Harvest equivalent (Frozen Choir stress pressure), and 18-round enrage timer. You cannot turtle.
- **Pure DPS rush:** Phase 1 armor absorbs unprepped burst. Phase 2 Roots reduce fire effectiveness. Rushing without managing Frostbite hands Ithrevax easy kills via Winter's Claim and Entropy's Embrace.
- **Backline-only targeting:** Ithrevax occupies positions 1–3. Its adds are in position 4. Entomb and Glacial Grasp yank backline heroes to the front. Annihilation Lance punishes position 1 stacking.
- **Rigid positioning:** Entropic Cold + Tectonic Upheaval force constant movement. Two frozen zones in Phase 3 make half the positions unsafe each round.
- **Single class dependency:** Frozen Echo mimics hero abilities. Permafrost Roots counter fire. Frozen Blood punishes bleed. No single class solves every phase.
- **Ignoring stress:** Frozen Choir scales from 18–24 (Phase 1) to 25–35 (Phase 3). Without stress management, Afflictions cascade before Phase 3, and afflicted heroes take bonus damage from Phase 3 Frozen Choir.

---

### Guaranteed Loot

- **Heart of Ithrevax** (Legendary Trinket) — The void-core of the glacier, compressed into a fist-sized sphere of black ice that never melts. Grants: +25% damage dealt. Wearer is immune to Frostbite. At the start of each combat, all enemies gain -15% Ice resistance. **Curse:** Wearer takes +15% Stress from all sources. Cannot be unequipped during an expedition — only removed at the hamlet.

- **Mantle of the Eternal Winter** (Legendary Trinket) — A cloak woven from the frost-breath of Ithrevax, shimmering with trapped starlight. Grants: +30% healing dealt (partially offsets Frozen Blood in future T3 runs). Wearer gains +20 Frostbite resistance. When wearer heals an ally, that ally loses 5 Frostbite. **Curse:** Wearer's damage dealt is reduced by 15%.

- **Unique crafting material: Void Ice** — enough for one weapon or one armor piece. Weapons: attacks apply 10 Frostbite to enemies. Armor: wearer is immune to Frozen Blood's bleed-to-stun conversion.

- **The Frozen Depths Completion Trophy** — unlocks the dungeon's lore codex entry and a cosmetic hamlet decoration (a shard of Ithrevax displayed in the trophy hall).
