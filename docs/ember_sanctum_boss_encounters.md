# The Ember Sanctum — Boss Encounters

---

## 1. Tier 1 Semi-Boss: Cindervow Deacon

**Tier:** 1

**Visual Description:**
A gaunt figure draped in layered robes of ash-stained linen, arms wrapped in smoldering chains that serve as both vestment and weapon. A mask of fused obsidian with ember-lit eye slits hides their face. Smoke trails from every gesture, and their voice reverberates like a furnace draft.

**Size:** 1 position (position 2)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 85 |
| Speed | 5 |
| Dodge | 10 |
| Accuracy | 85 |

**Resistances:**
- Fire: Immune
- Ice: Vulnerable (−30%)
- Bleed: 40%
- Poison: 20%
- Stun: 30%
- Move: 20%

**Adds:**
- 2× Ember Acolyte (positions 3 and 4) — low HP cultists that deal minor fire damage and contribute +3 Heat Gauge per turn each.

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Searing Sermon | 1–2 | 1–3 (single) | Fire 6–9 | +5 Heat Gauge to party. +8 stress to target. |
| 2 | Chain Lash | 1–2 | 1–2 (single) | Slash/Fire 8–12 | Pulls target forward 1 position (40% chance). |
| 3 | Incite Fervor | 1–2 | Self + allies | — | All allies gain +25% DMG for 2 turns. +10 Heat Gauge to party. |
| 4 | Pyre's Judgment | 1–2 | 1–4 (single) | Fire 5–8 | If party Heat Gauge > 50: damage doubled. |

**Signature Mechanic — Heat Catalyst:**
Every 3rd turn, the Deacon forces a +15 Heat Gauge spike to the entire party regardless of other actions. This is a free action appended to their normal turn. The fight has a hard clock — every three rounds the pressure ratchets and cannot be mitigated, only outpaced.

**Dungeon Mechanic Interaction:**
Directly accelerates Heat Gauge through Searing Sermon, Incite Fervor, and Heat Catalyst. The Ember Acolytes each add passive Heat Gauge per turn. A slow party facing all three enemies will hit dangerous Heat thresholds within 5–6 rounds.

**Intended Strategy:**
Kill Ember Acolytes first to stop their passive Heat Gauge contribution and reduce incoming fire damage volume. Then burst the Deacon with ice damage before Heat Catalyst cycles overwhelm the party. Stress healing is valuable — Searing Sermon's stress pressure is constant. Positional awareness matters to avoid Chain Lash pulls disrupting your formation.

**What It Punishes:**
- **Stalling / tank+heal:** Heat Gauge doesn't care about damage mitigation. Time kills you.
- **Ignoring adds:** Acolytes accelerate Heat Gauge passively and benefit from Incite Fervor's damage buff.
- **Fire-heavy parties:** Boss is immune, acolytes resist fire.
- **Static front line:** Chain Lash disrupts positioning.

---

## 2. Tier 1 Boss: The Emberbrand Hierophant

**Tier:** 1

**Visual Description:**
A towering figure in layered ceremonial robes of woven ash-cloth embroidered with golden fire motifs. One arm has been replaced by a living torch — flesh consumed and rebuilt as bound flame that flickers with unnatural intelligence. A crown of fused iron thorns glows white-hot atop his shaved, scarred scalp. His voice echoes as if spoken from inside a furnace, each word carrying the weight of fanatical conviction.

**Size:** 2 positions (positions 1–2)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 160 |
| Speed | 6 |
| Dodge | 12 |
| Accuracy | 90 |

**Resistances:**
- Fire: Immune
- Ice: Vulnerable (−25%)
- Bleed: 30%
- Poison: 50%
- Stun: 50%
- Move: 40%

**Adds:**
- Starting: 1× Branded Zealot (position 3), 1× Ember Acolyte (position 4).
- Mid-fight summon: 1× Ember Acolyte when Phase 2 triggers.

### Phase 1 — "The Sermon of Ash" (100%–50% HP)

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Immolating Decree | 1–2 | 1–4 (AoE, 2 targets) | Fire 7–11 | +8 Heat Gauge per target hit. +6 stress per target. |
| 2 | Torch Arm Slam | 1–2 | 1–2 (single) | Blunt/Fire 10–16 | 35% stun chance. |
| 3 | Litany of Ash | 1–2 | Self + all allies | — | Heals all adds 15% max HP. All allies gain +15% fire damage for 3 turns. |
| 4 | Consecrate Ground | 1–2 | Hero positions 1–2 | — | Marks those positions as "burning ground" for 2 turns. Heroes standing there take 3 Fire DMG and +3 Heat Gauge per turn start. |

### Phase 2 — "The Pyre Ascends" (below 50% HP)

**Trigger:** The Hierophant screams a prayer, his flame arm erupts into a pillar of fire. The room brightens. He gains +20% damage, +2 Speed. Litany of Ash is replaced by two new abilities. 1× Ember Acolyte is summoned.

**New/Changed Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 5 | Pyre Cascade | 1–2 | ALL heroes | Fire 5–8 | +10 Heat Gauge to party. +10 stress to all. 2-turn cooldown. |
| 6 | Brand of the Faithful | 1–2 | 3–4 (single) | Fire 4–7 | Target is compelled to Guard the Hierophant for 1 turn (forced devotion). Cannot be resisted. |

**Signature Mechanic — Consecrate Ground:**
Marks hero-side positions 1–2 as burning ground for 2 turns. Heroes in those positions take fire damage and Heat Gauge increases at the start of each turn. Forces the party to shuffle positioning — standing still is death, but moving disrupts your formation. Reapplied every 4–5 turns in Phase 1.

**Dungeon Mechanic Interaction:**
Heat Gauge is the primary pressure. Immolating Decree, Consecrate Ground, and Pyre Cascade all contribute. Phase 2's Pyre Cascade creates party-wide Heat spikes that make the fight a DPS race once it triggers. The Heat Gauge has likely been climbing through the dungeon already — this fight can push it to dangerous levels.

**Intended Strategy:**
- **Phase 1:** Clear adds — the Branded Zealot first (higher threat), then the Ember Acolyte. Manage positions around Consecrate Ground: when positions 1–2 are burning, shuffle heroes back and use ranged attacks. Steady damage with ice. Don't overcommit to the Hierophant while adds are buffed by Litany of Ash.
- **Phase 2:** All-in DPS race. Heat Gauge becomes unsustainable. Focus the Hierophant. Brand of the Faithful will force a backline hero to guard — accept the loss of action or stun the compelled hero to break it. Kill fast.

**What It Punishes:**
- **Static positioning:** Consecrate Ground makes standing in positions 1–2 suicidal.
- **Slow attrition:** Heat Gauge spirals in Phase 2 — Pyre Cascade ensures you can't turtle.
- **Ignoring adds:** Litany of Ash heals them and buffs their fire damage.
- **Pure backline focus:** Torch Arm Slam punishes melee heroes, and Brand of the Faithful turns your own heroes against you.

**Guaranteed Loot:**
- **Hierophant's Ashen Mantle** (trinket): +15% Fire resistance. Stress damage from fire sources reduced by 10%.

---

## 3. Tier 2 Semi-Boss: The Branded Immolator

**Tier:** 2

**Visual Description:**
A massively scarred human whose every inch of exposed skin is covered in layered Ember Marks that glow like molten circuit traces. They wield two red-hot branding irons with practiced precision. Their eyes are pure white — burned blind by self-inflicted ritual. They fight by heat-sense, tracking the warmth of living bodies with unsettling accuracy.

**Size:** 1 position (position 1)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 110 |
| Speed | 7 |
| Dodge | 15 |
| Accuracy | 88 |

**Resistances:**
- Fire: Immune
- Ice: Vulnerable (−25%)
- Bleed: 50% (cauterized flesh)
- Poison: 30%
- Stun: 40%
- Move: 30%

**Adds:**
- 1× Brand Acolyte (position 3) — can apply Ember Marks with its basic attack.

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Brand | 1–2 | 1–3 (single) | Fire 5–8 | Applies 1 Ember Mark stack to target. |
| 2 | Double Brand | 1 | 1–2 (single) | Fire 8–14 | Applies 2 Ember Mark stacks. Only usable from position 1. |
| 3 | Heat Sense | 1–2 | Self | — | +20 Accuracy, +10% CRIT for 2 turns. Used reactively when debuffed or after a miss. |
| 4 | Combustion Lunge | 1–2 | 1–4 (single) | Fire 6–10 | Moves self to position 1, pushes target back 1. Always targets the hero with the most Ember Marks. |

**Signature Mechanic — Mark Hunter:**
The Immolator always prioritizes attacking the hero with the most Ember Mark stacks. Each Ember Mark on the target grants the Immolator +8% damage against that target. This creates a spiraling threat — the more a hero is marked, the harder they get hit, and the more marks they receive.

**Dungeon Mechanic Interaction:**
Ember Marks are the T2 mechanic. This fight stacks them fast through Brand, Double Brand, and the Brand Acolyte's attacks. Since Ember Marks are only cleansable at rest rooms, every stack applied here persists into future encounters, making heroes take bonus fire damage from all sources going forward.

**Intended Strategy:**
Spread Ember Mark application across multiple heroes rather than letting one frontliner absorb everything. Use Guard on different heroes to redirect attacks, or use positioning and forced movement to prevent the Immolator from fixating. Kill the Brand Acolyte early to cut mark application rate in half. Exploit ice vulnerability heavily. The fight is short if you burst correctly, long and punishing if you don't.

**What It Punishes:**
- **Single dedicated tank:** Absorbs all marks, spirals into lethal damage via Mark Hunter.
- **Ignoring the Brand Acolyte:** Two sources of Ember Marks double the accumulation rate.
- **Fire damage parties:** Boss is immune.
- **Slow play:** Every turn adds more Ember Marks that persist beyond this fight.

---

## 4. Tier 2 Boss: The Crucible Matriarch

**Tier:** 2

**Visual Description:**
An imposing woman in ceremonial armor of blackite and gold, fused to her body at the joints where flesh and metal have become one. She wields a massive crucible-staff — a ritual implement from which molten metal drips in a constant, hissing stream. Half her face has melted into a permanent rictus, one eye replaced by a smoldering coal. Ember Marks writhe across her armor like living tattoos, occasionally flaring bright enough to leave afterimages. Her voice sounds like bubbling slag.

**Size:** 2 positions (positions 1–2)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 200 |
| Speed | 6 |
| Dodge | 10 |
| Accuracy | 92 |

**Resistances:**
- Fire: Immune
- Ice: Vulnerable (−20%)
- Bleed: 40%
- Poison: 50%
- Stun: 60%
- Move: 60%

**Adds:**
- Starting: 1× Branded Zealot (position 3), 1× Brand Acolyte (position 4).
- Mid-fight summon: 1× Molten Fanatic when Phase 2 triggers.

### Phase 1 — "The Branding Rite" (100%–40% HP)

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Crucible Pour | 1–2 | 1–3 (AoE, 2 targets) | Fire 8–12 | Applies 1 Ember Mark to each target hit. +5 Heat Gauge to party. |
| 2 | Matriarch's Decree | 1–2 | 1–4 (single) | Fire 6–10 | Always targets hero with most Ember Marks. Damage multiplied by ×1.5 per Ember Mark stack on target. |
| 3 | Ritual Warding | 1–2 | Self | — | 30% damage reduction for 1 turn. Heals 10% max HP. |
| 4 | Brand Surge | 1–2 | ALL heroes | — (no damage) | Applies 1 additional Ember Mark to every hero who is already marked. +15 stress to all. |

### Phase 2 — "The Crucible Overflows" (below 40% HP)

**Trigger:** The crucible-staff erupts, molten metal pools across the floor. The Matriarch's remaining human features melt away. She gains +15% damage and loses Ritual Warding. 1× Molten Fanatic is summoned to position 3 or 4.

**New/Changed Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 5 | Molten Baptism | 1–2 | 2–4 (single) | Fire 10–15 | Applies 2 Ember Marks. +10 stress. Preferentially targets unmarked heroes. 3-turn cooldown. |
| 6 | The Crucible's Verdict | 1–2 | 1–4 (single) | Fire 15–22 | Always targets hero with the MOST Ember Marks. If this kills the target, all surviving heroes gain +30 stress. |

**Signature Mechanic — The Crucible's Verdict:**
A devastating single-target nuke that always finds the most-marked hero. It creates a mounting dilemma: your most-marked hero becomes a liability. Do you pour healing into them, sacrificing offensive tempo? Sacrifice them to prevent the stress cascade? Or try to equalize marks across your party so no single hero becomes the Verdict's obvious victim?

**Dungeon Mechanic Interaction:**
Ember Marks stack relentlessly through Crucible Pour, Brand Surge (which only targets already-marked heroes, creating runaway accumulation), and the Brand Acolyte. Heat Gauge climbs from Crucible Pour and the ambient dungeon pressure. Heroes leaving this fight will carry significant mark stacks into all remaining encounters — the Matriarch's true damage extends beyond her own fight.

**Intended Strategy:**
- **Phase 1:** Kill the Brand Acolyte immediately to reduce mark application. The Branded Zealot is lower priority but should die before Phase 2. Distribute damage and marks across the party — don't let one hero accumulate. When Ritual Warding is active, focus adds or reposition rather than wasting damage. Ice damage is essential. Track Brand Surge timing (no damage, but the mark escalation is the real threat).
- **Phase 2:** DPS race. The Crucible's Verdict will start executing heroes. The Molten Fanatic adds chaos but the Matriarch must die fast. If one hero has 3+ Ember Marks, they need immediate protection or acceptance as a sacrifice. Burst with everything.

**What It Punishes:**
- **Single tank:** Accumulates all marks → becomes Verdict fodder.
- **Slow attrition:** Marks stack infinitely. Every turn makes the next one worse.
- **Ignoring adds:** Brand Acolyte doubles mark throughput. Branded Zealot deals bonus damage to marked heroes.
- **Uncoordinated parties:** If you can't distribute marks or don't track who's most marked, Verdict will catch you off-guard.

**Guaranteed Loot:**
- **Crucible-Slag Ring** (trinket): −1 Ember Mark per rest (stacks with rest room cleanse). +10% fire damage dealt.

---

## 5. Tier 3 Semi-Boss: Molten Revenant

**Tier:** 3

**Visual Description:**
A towering construct of cooled and molten lava, vaguely humanoid but wrong in its proportions — arms too long, torso too thick. Cracks in its basalt shell reveal churning magma within, pulsing like a slow heartbeat. Smaller slag parasites cling to its body like barnacles, occasionally breaking free with wet, hissing sounds.

**Size:** 2 positions (positions 1–2)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 140 |
| Speed | 4 |
| Dodge | 5 |
| Accuracy | 85 |

**Resistances:**
- Fire: Immune
- Ice: Vulnerable (−30%)
- Blunt: Vulnerable (−15%)
- Pierce: 30%
- Bleed: Immune (no blood)
- Poison: Immune (inorganic)
- Stun: 50%
- Move: 80%

**Adds:**
- 2× Slag Parasite (positions 3 and 4). Each has **Molten Core**: on death, explodes dealing Fire 6–10 to heroes in positions 1–3 and applying −15% fire resistance debuff for 3 turns to those hit.

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Magma Slam | 1–2 | 1–2 (single) | Blunt/Fire 12–18 | Knockback 1 position. |
| 2 | Eruption | 1–2 | 2–4 (AoE, all) | Fire 6–9 | +8 Heat Gauge to party. Applies 1 Ember Mark to 1 random target. |
| 3 | Shed Slag | 1–2 | — | — | Summons 1× Slag Parasite to position 3 or 4 (if open). 3-turn cooldown. |
| 4 | Molten Shell | 1–2 | Self | — | 40% damage reduction for 2 turns. First used when below 60% HP; may reuse. |

**Signature Mechanic — Shed Slag:**
The Revenant continuously produces Slag Parasites via Shed Slag. These parasites are individually weak but carry Molten Core — killing them causes an explosion that damages nearby heroes and debuffs their fire resistance. The Revenant creates a perpetual dilemma: parasites left alive contribute damage and occupy positions, but killing them punishes poor timing and positioning.

**Dungeon Mechanic Interaction:**
Molten Core is the T3 mechanic, and this fight is the proving ground. Slag Parasite explosions deal fire damage (amplified by any existing Ember Marks from T2) and apply fire resistance debuffs (making all subsequent fire damage worse). Heat Gauge continues rising from Eruption. The three mechanics layer: Heat Gauge creates urgency, Ember Marks amplify fire damage, and Molten Core explosions punish reckless killing.

**Intended Strategy:**
Kill Slag Parasites only when your heroes aren't in positions adjacent to the explosion zone (positions 1–3). Use forced movement to push parasites to position 4, then kill them from ranged positions. Alternatively, use ranged attacks from position 4 to kill parasites while staying out of explosion range. Focus the Revenant during Molten Shell downtime with ice and blunt damage. Don't let parasites accumulate past 2 — position management becomes impossible.

**What It Punishes:**
- **Indiscriminate AoE:** Kills parasites at the wrong time, triggering Molten Core explosions when heroes are adjacent.
- **Ignoring parasites:** They pile up and the Revenant becomes unkillable behind a wall of bodies.
- **Melee-heavy compositions:** Always adjacent to explosion zones.
- **Rushing without kill-order awareness:** The fire resistance debuff from explosions compounds — sloppy kills make every subsequent hit deadlier.

---

## 6. Tier 3 Boss: The Pyreclad Warden

**Tier:** 3

**Visual Description:**
A massive armored figure whose full plate has fused with volcanic rock and cooled lava, creating an imposing silhouette of black stone and glowing seams. Molten metal flows through the armor's joints like luminous blood. One arm ends in a volcanic great-hammer of fused basalt and iron, the other bears a shield of cooled obsidian that regenerates from a magma vent in its forearm. The ground cracks and glows orange beneath each step. Faint, agonized screams echo from within the sealed helmet — the souls of those it consumed to fuel its furnace-heart.

**Size:** 2 positions (positions 1–2)

**Base Stats:**
| Stat | Value |
|------|-------|
| HP | 260 |
| Speed | 5 |
| Dodge | 8 |
| Accuracy | 90 |

**Resistances:**
- Fire: Immune
- Ice: Vulnerable (−20%)
- Blunt: Vulnerable (−10%)
- Bleed: 60%
- Poison: 40%
- Stun: 65%
- Move: 70%

**Adds:**
- Starting: 1× Slag Sentinel (position 3, has Molten Core — explodes on death for Fire 8–12 + −15% fire resist debuff to positions 1–3), 1× Pyre Cultist (position 4, heals Warden 8% HP per turn).
- Mid-fight summons: 1× Slag Sentinel at 50% HP transition and 25% HP transition.

### Phase 1 — "The Warden Stands" (100%–50% HP)

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Volcanic Hammer | 1–2 | 1–2 (single) | Blunt/Fire 14–20 | 30% stun chance. +5 Heat Gauge to party. |
| 2 | Obsidian Guard | 1–2 | Self | — | Absorbs the next hit (up to 25 damage). Reflects 5 Fire DMG to the attacker. |
| 3 | Magma Geyser | 1–2 | 2–4 (AoE, all) | Fire 7–11 | +8 Heat Gauge to party. Applies 1 Ember Mark to 1 random target. |
| 4 | Warden's Command | 1–2 | Hero pos 1–3 | Fire 8–12 | Forces 1 Slag Sentinel to self-destruct (triggers Molten Core). Applies −15% fire resist debuff to heroes hit. Summons a fresh Slag Sentinel next turn. |

### Phase 2 — "Magma Heart Exposed" (below 50% HP)

**Trigger:** The obsidian shield shatters explosively (Fire 4–6 to all heroes). Lava pours from the exposed arm. The Warden gains +20% damage but loses 15% damage reduction and can no longer use Obsidian Guard. Summons 1× Slag Sentinel.

**New/Changed Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 5 | Heart Eruption | 1–2 | ALL heroes | Fire 8–14 | +12 Heat Gauge to party. Applies 2 Ember Marks to ALL heroes. 3-turn cooldown. |
| 6 | Consume | 1–2 | 1 (single) | Blunt/Fire 18–25 | Heals Warden for 100% of damage dealt. Only usable if no Slag Sentinels are alive on the field. |

**Signature Mechanic — Warden's Command:**
The Warden can deliberately detonate its own Slag Sentinels as a weaponized attack. This inverts the Molten Core puzzle — you want to kill the adds on your terms, but the boss can kill them on *its* terms instead, turning careful positioning into wasted effort. In Phase 2, this creates a secondary dilemma: if all Slag Sentinels die (whether by your hand or the Warden's), Consume becomes available — a devastating self-heal that can undo your progress.

**Dungeon Mechanic Interaction:**
All three tier mechanics converge. Heat Gauge rises from Volcanic Hammer, Magma Geyser, and Heart Eruption. Ember Marks accumulate from Magma Geyser and Heart Eruption (the latter applying marks to the *entire* party). Molten Core is weaponized through both player kills and Warden's Command. The fight is a pressure cooker where every mechanic amplifies the others: Ember Marks make Molten Core explosions deadlier, which lowers fire resist, which makes Heat Gauge damage worse.

**Intended Strategy:**
- **Phase 1:** Kill the Pyre Cultist first — its 8% HP heal per turn is unsustainable to out-damage. Manage the Slag Sentinel carefully: don't kill it when heroes are in positions 1–3, but be aware the Warden may detonate it via Warden's Command anyway. Position accordingly. Steady ice/blunt damage to the Warden. Use Obsidian Guard's cooldown as your damage window. Track Magma Geyser timing to manage Heat Gauge and Ember Marks.
- **Phase 2:** Keep at least one Slag Sentinel alive at all times to prevent Consume. This is the central tension — you need to manage an explosive liability to deny the boss its strongest self-sustain. Burst the Warden with ice damage. Heart Eruption's party-wide Ember Marks make every subsequent fire hit devastating — speed is essential.

**What It Punishes:**
- **Ignoring adds:** Pyre Cultist heals indefinitely. Slag Sentinels get weaponized by Warden's Command.
- **Static positioning:** Magma Geyser and Molten Core explosions demand constant reshuffling.
- **Tunnel-visioning the boss:** Add management is non-optional; ignoring Slag Sentinels enables Consume.
- **Slow play:** Heat Gauge + Ember Marks + fire resist debuffs create compounding damage that becomes lethal by round 8–10.
- **Killing all adds in Phase 2:** Unlocks Consume, which can full-heal the Warden off a single frontliner.

**Guaranteed Loot:**
- **Pyreclad Gauntlet** (trinket): +20% Blunt damage. Melee attacks deal +3 Fire damage. +10% stress taken from fire sources.

---

## 7. Final Boss: Ignis Primeval, the Living Pyre

**Visual Description:**
A colossal entity of pure flame imprisoned within a cage of volcanic rock and ancient binding chains of cold iron. Three faces rotate slowly on a central column of fire — the **Zealot** (a screaming human visage, mouth stretched impossibly wide), the **Beast** (a draconic skull wreathed in plasma), and the **Void** (a hollow absence of light that drinks in flame, an inverse fire that chills the soul). The chamber itself is an extension of the boss — walls pulse with heat in rhythm with its heartbeat, the floor is cracked magma lattice that shifts between solid and molten. As phases progress, the binding chains shatter one by one, and the entity's true form expands to fill the space with unbearable radiance.

**Size:** 3 positions (positions 1–3)

**Lore Snippet:**
Before the cult, before the temple, there was only the fire beneath the mountain. Ignis Primeval is not a god the cult created — it is the reason the cult exists. Generations of zealots fed it souls and suffering until the chains that bind it to the mountain's heart grew thin, and the boundary between prisoner and prison dissolved entirely.

---

### Phase 1 — "The Bound Pyre" (100%–65% HP)

**Visual Change:** Ignis is partially restrained. Chains glow with containment runes. Only the Zealot face is active — it screams commands. The chamber is hot but navigable.

**Stat Changes:** Base stats.
| Stat | Value |
|------|-------|
| HP | 480 |
| Speed | 5 |
| Dodge | 8 |
| Accuracy | 90 |

**Resistances:**
- Fire: Immune
- Ice: Vulnerable (−25%)
- Blunt: Vulnerable (−10%)
- Bleed: 60%
- Poison: 60%
- Stun: 75%
- Move: Immune

**Starting Adds:**
- 1× Pyreguard Champion (position 4) — elite cultist, moderate HP, deals Fire/Slash, Guards Ignis.

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Zealot's Wail | 1–3 | ALL heroes | — (stress only) | +12 stress to all heroes. +5 Heat Gauge. Heroes with Ember Marks take +4 additional stress per mark stack. |
| 2 | Chain Whip | 1–3 | 1–2 (single) | Blunt/Fire 10–15 | Knockback 1. Uses a binding chain as a weapon. |
| 3 | Summon the Faithful | 1–3 | — | — | Summons 1× Ember Zealot to position 4 (if open). 4-turn cooldown. |
| 4 | Pyre Pulse | 1–3 | 1–4 (AoE, all) | Fire 5–8 | +8 Heat Gauge to party. 3-turn cooldown. |

**Phase-Specific Mechanic — Chain Integrity:**
Ignis begins with 3 chains. Each chain grants 10% damage reduction. One chain breaks at each phase transition (automatic). However, heroes can also attack chains directly (separate target, 30 HP each, only damaged by Ice or Blunt) to break them early — each broken chain removes 10% damage reduction but also causes Ignis to deal +10% damage. Breaking chains early speeds up the fight but increases pressure. Chains broken in Phase 1 carry through.

---

### Phase 2 — "The Beast Unbound" (65%–30% HP)

**Trigger:** The second chain shatters. The Beast face rotates forward, snarling. Ignis's form swells — more flame, less rock. The floor becomes partially molten: hero positions 1–2 become "magma tiles" that deal 4 Fire DMG per turn to heroes standing on them.

**Stat Changes:** +15% damage. +2 Speed. 1 fewer chain (reduced damage reduction).

**New Adds:**
- 1× Slag Colossus (position 4) — has Molten Core. On death, explodes for Fire 10–14 to hero positions 1–4 and applies −20% fire resist debuff for 3 turns.

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Draconic Breath | 1–3 | 1–4 (AoE, all) | Fire 8–13 | Applies 1 Ember Mark to all heroes hit. +10 Heat Gauge. 3-turn cooldown. |
| 2 | Rending Claw | 1–3 | 1–2 (single) | Slash/Fire 14–20 | Bleed 3/turn for 3 turns. |
| 3 | Molten Surge | 1–3 | — | — | All magma tiles expand: hero position 3 also becomes a magma tile for 2 turns. Existing magma tile damage increases to 6 Fire DMG/turn. 4-turn cooldown. |
| 4 | Devour | 1–3 | 1 (single) | Fire 16–22 | Heals Ignis for 50% of damage dealt. Targets the hero with the lowest current HP. |
| 5 | Ignite Corpse | 1–3 | Any corpse | — | Detonates a hero corpse, dealing Fire 8–12 to heroes adjacent to the corpse's position and applying 1 Ember Mark each. Corpses become fuel. |

**Phase-Specific Mechanic — Magma Tiles:**
Hero-side positions 1–2 (and temporarily 3 during Molten Surge) deal passive fire damage each turn. This forces the party to compress into positions 3–4 or accept constant burn damage. Combined with Rending Claw and Devour targeting the front, this phase punishes both clustering and spreading.

---

### Phase 3 — "Primeval Ascension" (below 30% HP)

**Trigger:** The final chain shatters. The Void face rotates forward. Ignis's form transcends — it becomes a pillar of black-and-gold inverse flame that fills the chamber. All magma tiles activate permanently. The temperature exceeds survivable limits: Heat Gauge increases by +5 passively at the start of every round (in addition to ability effects).

**Stat Changes:** +30% damage (total, from base). +4 Speed (total). No chains remain — 0% chain damage reduction. But gains a new passive: **Primeval Aura** — all fire damage dealt by Ignis ignores 25% of the target's fire resistance.

**Abilities:**

| # | Name | Usable Pos | Target Pos | Damage | Effects |
|---|------|-----------|------------|--------|---------|
| 1 | Void Gaze | 1–3 | 1–4 (single) | Magic 10–16 | +25 stress. If target is at 100+ stress: triggers an immediate Affliction check. Ignores fire resistance (pure Magic). |
| 2 | Annihilation Cascade | 1–3 | ALL heroes | Fire 10–16 | +15 Heat Gauge. Applies 2 Ember Marks to all heroes. 4-turn cooldown. This is the signature "dread" ability. |
| 3 | Primeval Grasp | 1–3 | 1–3 (single) | Fire/Blunt 18–26 | Pulls target to position 1 (magma tile). Target is Immobilized for 1 turn (cannot be moved or move). |
| 4 | Soul Pyre | 1–3 | — | — | Detonates ALL corpses and dead adds simultaneously. Each detonation deals Fire 6–10 to adjacent hero positions and applies 1 Ember Mark. If no valid targets exist, Ignis heals 15% HP instead. |
| 5 | Dying Light | 1–3 | ALL heroes | Fire/Magic 6–10 | Used only below 10% HP. +20 stress to all heroes. +20 Heat Gauge. "The fire will not die alone." |

**Phase-Specific Mechanic — The Void Consumes:**
The Void face enables Soul Pyre — the detonation of corpses and dead adds. Every hero or add that dies becomes ammunition. This creates an agonizing calculus: if a hero dies, their corpse is a bomb. If you killed Slag Colossus earlier, its remains can be detonated again. The battlefield's history becomes a weapon. Heroes must either prevent deaths entirely or manage corpse positions.

---

### Overarching Signature Mechanic — The Three Faces

Each phase is governed by a different face, and each face embodies a different threat axis:
- **The Zealot (Phase 1):** Stress and cultist summoning. The human face weaponizes faith and morale.
- **The Beast (Phase 2):** Physical violence and territorial control. The draconic face weaponizes the arena itself.
- **The Void (Phase 3):** Existential pressure and resource denial. The hollow face weaponizes death and despair.

The transition between faces is not just mechanical but psychological — each phase *feels* different, demanding the party adapt their mindset, not just their tactics.

### Dungeon Mechanic Interaction — All Three Tiers Weaponized

- **Heat Gauge (T1):** Pyre Pulse, Draconic Breath, Annihilation Cascade, and Phase 3's passive +5/round all contribute. By Phase 3, Heat Gauge is a death sentence on a timer.
- **Ember Marks (T2):** Draconic Breath, Annihilation Cascade, Ignite Corpse, and Soul Pyre all apply marks. Zealot's Wail deals bonus stress per Ember Mark stack, creating a stress-mark feedback loop. Primeval Aura in Phase 3 ensures even fire-resistant heroes feel the burn.
- **Molten Core (T3):** The Slag Colossus in Phase 2 carries Molten Core. Ignite Corpse and Soul Pyre extend the explosion mechanic to hero corpses and previously killed adds — the kill-order puzzle becomes a fight-long corpse management challenge.

### Enrage Condition

If the fight lasts longer than **20 rounds total**, Ignis enters **Primeval Rage**:
- All abilities lose their cooldowns.
- Heat Gauge increases by +10 per round passively (up from +5).
- Annihilation Cascade is used every other turn.
- Ignis gains +50% damage.

This is functionally unsurvivable. The fight is designed to last 14–18 rounds with a well-composed party.

### Intended Strategy

- **Phase 1:** Kill the Pyreguard Champion — its Guard protects Ignis from burst. Optionally break 1 remaining chain with ice/blunt attacks to accelerate the fight (tradeoff: Ignis hits harder sooner). Manage stress from Zealot's Wail. Establish your damage rhythm and avoid wasting actions. Every turn matters — the enrage clock is ticking.
- **Phase 2:** The arena becomes hostile. Get heroes off magma tiles when possible — positions 3–4 are safe (until Molten Surge). Handle the Slag Colossus carefully: it must die, but poorly timed death triggers a devastating Molten Core explosion. Kill it when heroes are in positions 3–4. Sustain through Draconic Breath's Ember Marks with whatever fire resistance you have left. Don't let Devour heal Ignis — keep frontline HP topped off or accept the positional loss.
- **Phase 3:** Pure survival DPS race. Heat Gauge climbs automatically. Annihilation Cascade will bury you in Ember Marks. Prioritize damage over healing — you can't outheal this phase, only outrun it. Clear corpses by positioning (or accept Soul Pyre detonations). Void Gaze targets high-stress heroes — stress management from earlier phases determines whether your party can handle this. If a hero is at 100+ stress entering Phase 3, they are a liability. Use everything. Hold nothing back.

### What It Punishes

- **Tank+heal stalling:** Enrage timer. Phase 3's passive Heat Gauge. You cannot turtle.
- **Pure DPS rush:** Phase 1's chains provide damage reduction. Phase 2's Slag Colossus punishes reckless killing. Devour heals Ignis if your frontline is low.
- **Static positioning:** Magma tiles, Primeval Grasp immobilization, and Chain Whip knockback all demand constant movement.
- **Ignoring stress:** Zealot's Wail scales with Ember Marks. Void Gaze forces Affliction checks. A stressed party collapses in Phase 3.
- **Single-class reliance:** Ice is essential but ice-only parties lack the blunt damage for chains and the healing for Phase 3 sustain. Fire classes are nearly useless (immune boss). Stealth is irrelevant (AoE heavy). No single class composition trivializes all three phases.
- **Sloppy corpse management:** Ignite Corpse and Soul Pyre turn dead heroes and adds into weapons against you. A death in Phase 2 becomes a bomb in Phase 3.
- **Entering with high Ember Marks:** Heroes carrying Ember Mark stacks from earlier encounters take escalating damage from every fire ability. The Matriarch's marks haunt you here.

### Guaranteed Loot

- **Heart of the Primeval** (legendary trinket): +25% damage vs. fire-type enemies. The equipped hero is immune to Ember Marks. −15% max HP.
- **Chains of Binding** (legendary trinket): +20% Ice damage. +15% Stun chance. When the equipped hero stuns an enemy, all party members gain +5% damage reduction for 1 turn. −10% Speed.
- **Ashen Crown of the Hierophant** (rare trinket): +20% stress resistance. +10% healing received. Fire resistance +15%.
- **Primeval Cinder** (crafting material): Used to forge a fire-themed legendary weapon at the hub.
