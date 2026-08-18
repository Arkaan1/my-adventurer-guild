# The Arcane Maw — Floor Boss Encounters

---

## Floor 1 Boss: Skeinrend, the Unraveler

### Floor
Floor 1 — Spell Warp

### Visual Description
A towering humanoid silhouette woven entirely from tangled threads of raw arcane energy — luminous filaments of every element knotted into a screaming, shifting mass. Its "face" is a void ringed by fraying strands of light that whip and snap like severed tendons. Where it moves, the air cracks into prismatic fractures, and the geometry of the room bends — doorframes tilt, shadows fall the wrong way, and sounds arrive before their causes. Its arms end not in hands but in unspooling helices of magic that drag along the ground, leaving scorch-frost-spark trails that contradict each other.

### Size
2 positions (occupies positions 1–2)

### Lore Snippet
Before the rift tore open, magic obeyed rules. Skeinrend is what happens when those rules are pulled apart — not broken, but *unraveled*, thread by thread, until cause and effect are suggestions. It does not cast spells. It is what spells become when nothing holds them together.

### Signature Mechanic — Entropy
Skeinrend tracks a unique resource: **Entropy** (0–10). It gains **1 Entropy** each time *any* ability (hero or enemy, including Skeinrend's own) is Spell Warped. At **5 Entropy**, Skeinrend automatically casts **Entropy Discharge** as a free action (all heroes take 8–12 Magic damage + 10 stress), then resets Entropy to 0. If Entropy reaches **10** before a discharge (possible in later phases), the discharge is doubled in damage and stuns 2 random heroes for 1 round.

### Floor Mechanic Interaction — Spell Warp
Skeinrend *is* the Spell Warp. Several of its abilities increase the global Spell Warp chance or guarantee warps on specific heroes. Using magic-heavy teams generates more warps, which feeds Entropy, which triggers Discharge — a punishing feedback loop. But Skeinrend also Spell Warps its *own* abilities occasionally, making its damage somewhat unpredictable. Physical teams generate fewer warps but deal with Skeinrend's high PROT in early phases.

---

### Phase 1 — "The Fraying"
**Trigger:** Start of combat.
**Visual:** Intact silhouette, threads taut and humming, prismatic fractures contained to the floor.
**Stats:** HP 230 | SPD 5 | PROT 30% | Dodge 15 | Bleed Res 80% | Poison Res 65% | Stun Res 55% | Move Res 200% | Debuff Res 40%

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Arcane Lash | 1–2 | Enemy 1–3 (single) | Magic | 10–14 | +15% Spell Warp chance on target for 2 turns |
| Warp Bolt | 1–2 | Enemy 2–4 (single) | Magic | 8–12 | Push target 1 forward, stress +6 |
| Distortion Wave | 1–2 | Enemy 1–4 (all) | Magic | 5–8 | Stress +10, −10 ACC debuff for 2 turns |
| Entropic Ward | 1–2 | Self | — | — | +30% PROT for 1 turn, gains 1 Entropy |

**Phase Mechanic:** Baseline Spell Warp chance on all abilities is the floor's base rate. Skeinrend uses Entropic Ward when Entropy is low — it *wants* to reach 5.

---

### Phase 2 — "Cascading Instability"
**Trigger:** HP drops below 60%.
**Visual:** Threads begin snapping visibly — each broken strand releases a burst of colored light. The void-face widens. The room's geometry destabilizes further: the floor tilts, hero positions visually shift even if mechanically stable.
**Stat Changes:** +15% damage | −10% PROT (now 20%) | +3 SPD (now 8) | Stun Res +20% (now 75%)

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Force Warp | 1–2 | Enemy 1–4 (single) | — | 0 | Target's next ability is **guaranteed** to Spell Warp. Stress +12 |
| Unstable Cleave | 1–2 | Enemy 1–2 (AoE) | Slash + Magic | 13–18 | Crit mod +10% |
| Rift Scream | 1–2 | Enemy 1–4 (all) | — | 0 | Stress +15, −20% damage debuff for 2 turns |
| Consume Entropy | 1–2 | Self | — | — | Consumes all Entropy. Heals 5 HP per stack. +5% damage per stack for 2 turns |

**Phase Mechanic:** Global Spell Warp chance increased by **+15%** for all combatants. Force Warp creates a brutal choice: the targeted hero can either skip their turn or act and guarantee a warp (feeding Entropy + suffering whatever the warp produces).

---

### Phase 3 — "Total Unraveling"
**Trigger:** HP drops below 30%.
**Visual:** Skeinrend's silhouette tears open entirely — it becomes a ragged, screaming wound in the air, a vertical rift pouring unstable light. Threads whip in all directions. The room strobes between biomes of other dungeons — frost, ember, storm — as reality fully destabilizes.
**Stat Changes:** +30% damage | −25% PROT (now 5%) | +5 SPD (now 10) | Stun Res 100% | Debuff Res 70%

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Reality Collapse | 1–2 | Enemy 1–4 (all) | Magic | 12–16 | Stress +18, +25% Spell Warp chance on all heroes for 3 turns |
| Warp Feedback | 1–2 | — | — | — | **PASSIVE.** When any hero ability is Spell Warped, Skeinrend performs a free counter-attack on that hero: Magic 10–14 |
| Arcane Annihilation | 1–2 | Enemy 1–3 (single) | Magic + Lightning | 20–28 | Self-damage 15 HP. Ignores PROT. Can be Spell Warped (targeting itself on warp is possible) |
| Entropic Overload | 1–2 | Enemy 1–4 (all) | Magic | 3/stack | Consumes all Entropy. 3 damage + 5 stress per stack to all heroes. If 7+ stacks: stuns 2 random heroes |

**Phase Mechanic:** Entropy generates at **2× rate** (2 per warp instead of 1). Warp Feedback means every warped hero ability triggers a free boss attack, making magic use extremely dangerous. Skeinrend is now a glass cannon — low PROT, stun-immune, fast, and brutal. The race is on.

---

### Enrage Condition
**Turn 12:** Skeinrend enters permanent Total Unraveling (if not already), Entropy generation triples, and it gains a second action per round. Spell Warp chance becomes 50% base for all abilities in the fight.

### Intended Strategy
- **Phase 1:** Physical-heavy damage to minimize Spell Warps. Tank absorbs Arcane Lash. Manage Entropy — when it nears 5, brace or stun Skeinrend (it can still auto-discharge, but stun prevents Consume Entropy). Steady DPS to push past 60%.
- **Phase 2:** Avoid using abilities on Force Warp targets — skip or use non-damaging buffs/guards. Save stuns for turns where Entropy is high and Consume Entropy is likely. Burst damage when PROT drops.
- **Phase 3:** All-out offense. Skeinrend's PROT is 5%, it's killable, but Warp Feedback punishes magic and Reality Collapse increases warp chance. Stick to physical. Brace for Entropic Overload if stacks are high. Kill it before Turn 12.

### What It Punishes
- **Pure mage comps:** Constant Spell Warps → Entropy feeds → Discharge wipes. Warp Feedback in Phase 3 makes every cast a gamble.
- **Tank-and-stall:** Entropy accumulates regardless. Entropic Ward and Consume Entropy mean Skeinrend heals and powers up during slow fights. Enrage at Turn 12.
- **DPS rush without PROT mitigation:** Phase 1 has 30% PROT. Pure damage without armor penetration or debuffs is slow, gives Skeinrend time to accumulate Entropy.
- **Single-hero carry:** Force Warp can shut down any individual hero for a turn.

### Guaranteed Loot
- **Unraveled Thread** (legendary trinket) — Equip: The hero's abilities have a 15% chance to Spell Warp enemy abilities on hit (+random target, changed damage type). +10% stress taken. *Turn the chaos back on your enemies, but the thread frays both ways.*
- **Skein Fragment** (rare trinket) — +15% Magic damage, −10 dodge. *A knot of stabilized arcane energy, still humming.*
- **Entropic Residue** (crafting material) — Used to upgrade arcane-resistance trinkets.

### Team Composition Considerations
Send a **physical-heavy team**: Knight (tank + slash/blunt), Berserker (high physical DPS), Duelist or Ranger (pierce damage from mid/back), and one flexible support — Alchemist for poison DoT (fewer active casts) or Cleric for clutch heals (accept the warp risk). Avoid sending more than one mage. A Rogue can work if positioned to burst during Phase 3's low-PROT window.

**Strategic dilemma:** Your best physical damage dealers are extremely useful here, but sending them means Floor 3 will echo tanky Knights and high-damage Berserkers against your final team. Consider whether a slightly weaker Floor 1 team is worth easier Echoes later.

---
---

## Floor 2 Boss: Cruciath, the Hollow Tithe

### Floor
Floor 2 — Mana Bleed

### Visual Description
A gaunt, robed figure carved from translucent crystallized void — you can see through its torso to the hollow nothing inside. Its robes are sheets of solidified mana, cracked and leaking pale light. Its head is a featureless oval with a single vertical fissure that opens when it speaks — not a mouth, but a ledger-slit through which whispered numbers pour out. Its hands are open palms facing permanently upward, each containing a slowly rotating orb of compressed vitality — one glowing faintly with stolen life, the other dark and hungry. Where it stands, the ground looks *spent* — grey, drained, flaking.

### Size
2 positions (occupies positions 1–2)

### Lore Snippet
The rift does not give freely. Every spell ever cast through it exacted a price the caster never noticed — a shaved year, a thinned vein, a memory consumed. Cruciath is the collector, the running total, the proof that magic was never free. It does not hate. It simply *charges.*

### Signature Mechanic — The Ledger
Cruciath tracks the **Ledger** — a cumulative count of total HP lost by all heroes to the **Mana Bleed** floor mechanic during this fight. Every point of Mana Bleed self-damage heroes inflict on themselves by using abilities is recorded. At **Ledger thresholds**, Cruciath gains permanent buffs:

| Ledger Total | Effect |
|---|---|
| 30 HP | Cruciath heals 15 HP |
| 60 HP | Cruciath gains +10% damage permanently |
| 90 HP | Cruciath heals 20 HP and gains +1 SPD permanently |
| 120 HP | Cruciath gains Life Steal on all attacks (heals 25% of damage dealt) |
| 150+ HP | Cruciath gains a second action per round |

### Floor Mechanic Interaction — Mana Bleed
Every ability used by heroes costs HP (the floor mechanic). Cruciath is designed to make this cost *worse*. Several of its abilities increase the Mana Bleed HP cost, debuff heroes so they take more self-damage, or heal Cruciath based on hero HP loss. The fight is a war of attrition where every hero action is a resource spent twice — once for the ability's effect, once for the HP it costs. Wasted or low-value actions are lethal.

---

### Phase 1 — "The Accounting"
**Trigger:** Start of combat.
**Visual:** Cruciath stands still, palms open, the bright orb pulsing faintly with each hero action. The ledger-slit murmurs.
**Stats:** HP 200 | SPD 4 | PROT 20% | Dodge 10 | Bleed Res 70% | Poison Res 75% | Stun Res 50% | Move Res 200% | Debuff Res 35%

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Tax | 1–2 | Enemy 1–4 (single) | Magic | 8–11 | Target's next ability costs **double** Mana Bleed HP |
| Hollow Touch | 1–2 | Enemy 1–2 (single) | Magic + Ice | 10–15 | −20% healing received for 3 turns |
| Audit | 1–2 | Enemy 1–4 (all) | — | 0 | Stress +12. Reveals all heroes' current HP (marks lowest HP hero, increasing damage taken by 15% for 2 turns) |
| Interest | 1–2 | Self | — | — | Heals HP equal to current Ledger ÷ 5 (rounded down). Caps at 25 HP healed |

**Phase Mechanic:** Cruciath is passive-aggressive. It debuffs, taxes, and heals while heroes grind themselves down via Mana Bleed. Winning Phase 1 quickly requires concentrated, efficient damage — but every attack costs HP.

---

### Phase 2 — "Collection"
**Trigger:** HP drops below 55%.
**Visual:** The bright orb swells, veined with red. The dark orb begins pulling visibly — hero models lean slightly toward Cruciath. The hollow interior of its torso flickers with silhouettes of spent figures.
**Stat Changes:** +20% damage | +10% PROT (now 30%) | +2 SPD (now 6) | Stun Res +15% (now 65%)

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Foreclose | 1–2 | Enemy 1–3 (single) | Magic + Blunt | 14–20 | If target is below 50% HP: damage +30%. Stress +8 |
| Exsanguinate Mana | 1–2 | Enemy 1–4 (all) | — | 0 | All heroes' Mana Bleed cost increased by +50% for 2 turns |
| Repossess | 1–2 | Enemy 1–4 (single) | Magic | 6–10 | Removes 1 positive buff from target. Cruciath gains that buff for 2 turns |
| Compound Interest | 1–2 | Self + Enemy 1–4 | — | — | Heals Cruciath for 3 HP per hero currently below 50% HP. Each of those heroes takes stress +8 |

**Phase Mechanic:** Cruciath becomes actively punishing. Foreclose executes weakened heroes. Exsanguinate Mana makes every action cost 50% more HP for 2 turns, creating windows where heroes *cannot afford* to act. Repossess steals buffs, punishing pre-buffing strategies.

---

### Phase 3 — "Final Reckoning"
**Trigger:** HP drops below 25%.
**Visual:** Both orbs merge into Cruciath's chest. Its hollow interior fills with churning, stolen vitality. The ledger-slit opens wide — a horizontal gash now — and emits a drone of whispered numbers. Its robes shatter, revealing a skeletal frame of crystallized debt.
**Stat Changes:** +40% damage | PROT drops to 10% | +4 SPD (now 8) | Stun Res 80% | Life Steal 15% on all attacks (stacks with Ledger threshold if reached)

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Total Liquidation | 1–2 | Enemy 1–4 (all) | Magic | 10–14 | Damage is increased by +1 for every 10 Ledger. Stress +12 |
| Balance Due | 1–2 | Enemy 1–4 (single, lowest HP) | Magic + Pierce | 18–26 | Always targets lowest HP hero. Ignores 50% PROT. If target is on Death's Door: +75% deathblow chance |
| Debt Spiral | 1–2 | Enemy 1–4 (all) | — | 0 | Mana Bleed cost permanently increased by +3 HP for the rest of the fight |
| Settle Accounts | 1–2 | Self | — | — | Heals 50% of total Ledger value. **One-time use.** |

**Phase Mechanic:** Cruciath becomes a closer. Total Liquidation scales with the Ledger — if heroes have been spamming abilities, it hits like a truck. Balance Due hunts weakened heroes for kills. Settle Accounts is a massive heal (if Ledger is 100, it heals 50 HP) — it must be stunned or the hero team must burst through it. Cruciath's own PROT drops, but Life Steal sustains it.

---

### Enrage Condition
**Turn 14:** Cruciath gains permanent double Mana Bleed cost on all hero abilities, Life Steal 50%, and a second action per round. Ledger thresholds trigger every 15 HP instead of every 30 HP.

### Intended Strategy
- **Phase 1:** Minimize wasted actions. Use high-damage, low-frequency attacks. DoTs (bleed, poison) are efficient — they deal damage on subsequent turns without additional Mana Bleed cost. Avoid buffing or debuffing unless high-value. Push past 55% before Ledger hits 60.
- **Phase 2:** Manage Exsanguinate Mana windows — during +50% Mana Bleed turns, use guards, passes, or riposte/counter heroes who deal damage passively. Save stuns for Compound Interest (prevents heal + stress). Keep heroes above 50% HP to deny Foreclose bonus and Compound Interest healing.
- **Phase 3:** Burst damage. Cruciath's PROT is 10% — it's hittable, but Life Steal keeps it alive. Stun or interrupt Settle Accounts (one-time 50% Ledger heal). Focus fire before Balance Due picks off weakened heroes. End the fight before Debt Spiral stacks make abilities unusable.

### What It Punishes
- **Ability spam:** Every ability costs HP → feeds Ledger → powers Cruciath. High-action teams will hit Ledger thresholds fast and face a boss with Life Steal and double actions.
- **Heal-focused comps:** Healing abilities also cost HP via Mana Bleed. Hollow Touch reduces healing received. You can't outheal the self-damage.
- **Stalling / defensive play:** Compound Interest punishes low-HP heroes passively. Interest and Settle Accounts heal Cruciath. Enrage at Turn 14.
- **Glass cannon teams:** Foreclose and Balance Due execute low-HP heroes. No survivability = dead heroes = failed run.
- **Buff-stacking:** Repossess steals buffs and gives them to Cruciath.

### Guaranteed Loot
- **The Tithekeeper's Coin** (legendary trinket) — Equip: When this hero uses an ability, there is a 25% chance the ability costs 0 Mana Bleed HP. −5 max HP. *A token of forgiven debt — but the principal remains.*
- **Ledger of Spent Lives** (legendary trinket) — Equip: DoT damage (bleed, poison) dealt by this hero is increased by +30%. −10% direct damage. *Every drip is accounted for, compounded, and collected.*
- **Crystallized Debt** (crafting material) — Used to upgrade life-drain and sustainability trinkets.

### Team Composition Considerations
Send an **efficiency-focused team**: heroes who deal high value per action. Duelist (riposte deals free damage on enemy turns — no Mana Bleed cost), Ranger (high single-target damage per action), Knight (Guard is a single action that prevents multiple hits), and Alchemist or Necromancer (DoTs deal damage over time without repeated ability costs). Avoid Pyromancer (AoE spam is expensive) and Stormcaller (burst combos require multiple actions).

**Strategic dilemma:** DoT specialists and counter-attackers are efficient here but may be needed for Floor 3's versatility requirements. A Duelist used here becomes a dangerous Echo on Floor 3 (high dodge, riposte). Consider whether the efficiency gain is worth the Echo threat.

---
---

## Floor 3 Boss: Aetheris, Heart of the Rift

### Floor
Floor 3 — Echoes (FINAL BOSS)

### Visual Description
Not a creature — a *place* that decided to think. Aetheris is a three-position-wide vertical schism in reality: a pillar of folded space where dozens of translucent realities overlap, each showing a different version of the dungeon, the heroes, the world. At its center, a blinding core pulses like a heartbeat, wrapped in revolving rings of crystallized arcane law — glyphs, equations, geometric impossibilities. Shapes that might be faces press against the interior surface, mouths open in silent calculation. When it acts, the overlapping realities *peel apart* momentarily, and the one it chooses becomes real. It does not speak. It *quotes* — fragments of your heroes' own voice lines, stitched together wrongly.

### Size
3 positions (occupies positions 1–3). Echoes summon into position 4.

### Lore Snippet
The Unraveler was its doubt. The Tithe was its hunger. This is what remains — the rift's answer to the question of whether magic should exist at all. It looked at every hero who ever entered, learned them, and decided: if these are the best the world can offer, the world isn't worth the cost. Prove it wrong.

### Signature Mechanic — Rift Assimilation
Aetheris summons **Echoes** — corrupted copies of heroes used on Floors 1 and 2 — into position 4. Echoes act on their own turns with corrupted versions of their class abilities (same targeting, +20% stress on all abilities, Magic damage added to all attacks). When an Echo is **killed**, Aetheris **absorbs** it, gaining a permanent passive bonus based on the Echo's class archetype:

| Echo Class | Absorption Bonus |
|---|---|
| Knight | +8% PROT |
| Berserker | +10% damage |
| Duelist | +10 Dodge |
| Ranger | +2 SPD |
| Rogue | +15% Crit |
| Pyromancer | All attacks gain AoE splash (30% damage to adjacent target) |
| Stormcaller | +15% Stun chance on all attacks |
| Cryomancer | All attacks apply −1 SPD debuff |
| Alchemist | +10% Poison/Bleed resist, Poison on all attacks (2 dmg/turn, 3 turns) |
| Cleric | Heals 5 HP per turn passively |
| Necromancer | On Echo death, spawns a Void Fragment (1-pos, 15 HP, weak attacks) instead of immediate absorption — absorption happens when Fragment dies |

The **strength** of each Echo scales with the level and gear quality of the corresponding Floor 1/2 hero. Sending a max-level, fully-equipped Knight on Floor 1 produces a much more dangerous Knight Echo than a mid-level one.

### Floor Mechanic Interaction — Echoes
Aetheris is the *source* of the Echo mechanic. While minor Echoes appear as regular enemies throughout Floor 3, Aetheris summons the **elite** versions — full-power corrupted copies with boss-tier HP scaling (40–70 HP each depending on the original hero's strength). It chooses *which* Echo to summon strategically:

- If the hero team has no healer → summons DPS Echoes to overwhelm.
- If the hero team is tanky → summons DoT/debuff Echoes to grind them down.
- Aetheris always summons the **strongest** available Echo first.
- Each Echo can only be summoned once. With 8 heroes across Floors 1–2, up to 8 Echoes are in the pool.

---

### Phase 1 — "Observation"
**Trigger:** Start of combat.
**Visual:** The rift-pillar is mostly still. Its core pulses slowly. One reality-layer peels open to release an Echo. The overlapping faces watch.
**Stats:** HP 300 | SPD 5 | PROT 40% | Dodge 10 | Bleed Res 85% | Poison Res 85% | Stun Res 65% | Move Res 200% | Debuff Res 50%

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Summon Echo | 1–3 | Ally pos 4 | — | — | Summons the strongest available Echo. 3-turn cooldown. If pos 4 is occupied (existing Echo alive), cannot use |
| Arcane Gaze | 1–3 | Enemy 1–4 (single) | Magic | 8–12 | Marks target for 2 turns (+15% damage taken). Stress +8 |
| Reality Layer | 1–3 | Self | — | — | Gains +20% PROT for 2 turns. Shifts current damage resistances randomly (one element becomes weak, another becomes resistant) |
| Rift Pulse | 1–3 | Enemy 1–4 (all) | Magic | 5–8 | Stress +10. If an Echo is alive: Echo gets +15% damage for 1 turn |

**Phase Mechanic:** Aetheris is heavily armored (40% PROT) and largely passive. It hides behind Echoes, buffing them and marking heroes. The Echo is the primary threat. Heroes must choose: focus the Echo (which triggers Absorption when killed, powering up Aetheris) or try to damage Aetheris through 40% PROT while the Echo attacks freely.

**Design intent:** Establish the Assimilation loop. The player must kill the Echo to survive, but doing so visibly strengthens Aetheris. Tension builds.

---

### Phase 2 — "Assimilation"
**Trigger:** HP drops below 60% OR 3 Echoes have been absorbed (whichever comes first).
**Visual:** Absorbed Echoes are visible as ghost-silhouettes orbiting the rift-core, faces screaming. The core pulses faster, brighter. The overlapping realities begin to *argue* — flickering between states. Aetheris's attacks now trail after-images of the absorbed heroes' weapons.
**Stat Changes:** PROT drops to 25% | +20% damage | +3 SPD (now 8) | Stun Res +15% (now 80%) | All Absorption bonuses active

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Accelerated Summoning | 1–3 | Ally pos 4 | — | — | Summons an Echo. **2-turn cooldown** (reduced from 3). Summoned Echo acts immediately (bonus turn) |
| Convergent Strike | 1–3 | Enemy 1–4 (single) | Slash + Magic | 16–22 | Damage type includes the element of the most recently absorbed Echo's class. Stress +10 |
| Unravel Identity | 1–3 | Enemy 1–4 (single) | Magic | 6–10 | Target loses their **class passive** (if any) for 3 turns. 50% chance to inflict a random arcane affliction. Stress +15 |
| Echo Resonance | 1–3 | Enemy 1–4 (all) | Magic | 4–6 per absorbed Echo | Damage = 4–6 multiplied by the number of Echoes absorbed so far. Stress +5 per absorbed Echo |

**Phase Mechanic:** The Assimilation loop accelerates. Echoes arrive faster and act immediately. Echo Resonance scales — if 4 Echoes are absorbed, it deals 16–24 damage to all heroes + 20 stress. Aetheris's PROT drops, creating a window for damage, but its offensive power ramps hard. Unravel Identity strips class passives, which can cripple key heroes (a Knight without Guard synergy, a Duelist without counter).

**Design intent:** The fight intensifies. Heroes are now racing to kill Aetheris before Echo Resonance becomes unsurvivable. But Aetheris keeps summoning Echoes that must be dealt with, each one adding to Resonance's power.

---

### Phase 3 — "Apotheosis"
**Trigger:** HP drops below 30%.
**Visual:** All remaining unsummoned Echoes are **instantly absorbed** in a cascade of screaming light. The rift tears fully open — the pillar becomes a howling vortex. The ghost-silhouettes of every absorbed hero merge into Aetheris's core, forming a composite face that wears every hero's expression at once. The room is no longer a room — the party stands on a platform of crystallized memory over an infinite void. Aetheris speaks for the first and only time, in a voice stitched from every hero's voice actor: *"This is what you sent. This is what you are."*

**Stat Changes:** PROT 15% | +50% damage | +5 SPD (now 10) | Stun Res 100% | Debuff Res 80% | All remaining Absorption bonuses instantly applied | No more Echo summoning

**Abilities:**

| Ability | User Pos | Target Pos | Type | Damage | Effects |
|---|---|---|---|---|---|
| Rift Annihilation | 1–3 | Enemy 1–4 (all) | Magic + random element | 15–22 | Stress +20. Element rotates each use. Ignores 30% PROT |
| Echoed Execution | 1–3 | Enemy 1–4 (single, marked or lowest HP) | All absorbed Echo damage types | 22–32 | Targets marked heroes first, then lowest HP. +25% deathblow chance |
| Collapse Reality | 1–3 | Enemy 1–4 (all) | Magic | 8–12 | Shuffles ALL hero positions randomly. Stress +15. 30% chance each hero is stunned for 1 turn |
| The Final Tithe | 1–3 | Enemy 1–4 (all) | Magic | Total absorbed Echoes × 5 | **Once per fight.** Deals 5 damage per absorbed Echo to all heroes. With 8 Echoes: 40 damage to all. Stress +25. Used when Aetheris drops below 15% HP |

**Phase Mechanic:** No more Echoes. It's just Aetheris with everything it has absorbed, versus whatever your third team can muster. Stun-immune, fast, devastating. The Final Tithe is its ultimate — a last-ditch nuke that scales directly with how many Echoes were absorbed (which is usually all of them by Phase 3). If heroes are weakened when The Final Tithe hits, it's a wipe.

**Design intent:** Pure execution check. There is no more puzzle — only survival and damage. The player's decisions across the entire dungeon (team composition, hero strength, gear distribution) culminate here. A team that arrives healthy with good damage output can win. A team that limped through Floor 3's regular encounters will break.

---

### Enrage Condition
**Turn 16:** Aetheris gains a second action per round, Echo Resonance / Rift Annihilation damage doubles, and The Final Tithe recharges (usable again). At **Turn 20**, Aetheris uses The Final Tithe every turn as a free action.

### Intended Strategy
- **Phase 1:** Kill the first Echo quickly to minimize its damage, accepting the Absorption buff. Use the 3-turn summoning cooldown as a damage window against Aetheris — with no Echo alive and one on cooldown, focus Aetheris through its PROT using debuffs or armor-piercing attacks. Mark removal is valuable against Arcane Gaze.
- **Phase 2:** This is the critical phase. Echo Resonance scales per absorption — try to leave Echoes alive as long as possible while damaging Aetheris, but don't let Echoes overwhelm the party. Stun Echoes instead of killing them when possible (buys time without triggering Absorption). Burst Aetheris through its lower PROT (25%). Healers must keep the team above Death's Door — Unravel Identity can strip critical passives, so have backup plans.
- **Phase 3:** All-out offense. Aetheris is stun-immune but has only 15% PROT. The team must burn through its remaining HP before The Final Tithe triggers at 15%. If The Final Tithe fires, heroes need enough HP to survive (total absorbed Echoes × 5 per hero). Damage buffs, bleeds, poisons — everything goes. Guard the lowest HP hero against Echoed Execution.

### What It Punishes
- **Sending best heroes on Floors 1–2:** Stronger Echoes → more dangerous summons → higher Absorption bonuses → more devastating Echo Resonance and The Final Tithe.
- **Tank-and-stall:** Echo Resonance scales over time. Enrage at Turn 16. The fight gets worse the longer it goes.
- **Mono-strategy teams:** Aetheris gains varied bonuses from Absorption. A team that can only do one thing will eventually face a boss that counters it.
- **Ignoring Echoes:** Leaving Echoes alive means they deal damage + get buffed by Rift Pulse. But killing them powers up Aetheris. There is no free option.
- **Fragile teams:** The Final Tithe, Collapse Reality's shuffle, and Echoed Execution all punish low-HP or poorly-positioned heroes.
- **Debuff-reliant teams:** Phase 3 has 80% Debuff Res and 100% Stun Res. Teams that relied on control throughout the dungeon are in trouble.

### Guaranteed Loot (Campaign Victory Rewards)
- **Heart of the Rift** (legendary trinket) — Equip: All damage dealt by this hero gains +25% bonus Magic damage. +15% stress taken. When this hero kills an enemy, heals 10 HP. *The rift is closed, but its heart still beats in your hand.*
- **Echo's Requiem** (legendary trinket) — Equip: When this hero is hit, 20% chance to nullify the attack entirely and reflect 50% of its damage back. −15 max HP. *The last echo answers only to you.*
- **Aetheris's Crystallized Core** (campaign trophy) — A unique item that unlocks New Game+ modifiers and a cosmetic "Riftwalker" skin set for all hero classes.
- **Fractured Reality Shard** (crafting material, ×3) — Used to craft the highest tier of trinkets in the game.

### Team Composition Considerations
Your Floor 3 team is whoever remains after Floors 1 and 2. This is where the entire dungeon's strategic dilemma resolves. The ideal team needs:

- **Sustained damage:** The fight is long. DoTs, consistent hitters, and heroes who don't rely on burst combos.
- **Survivability without heavy healing:** A Cleric is ideal but may have been used earlier. Off-healers (Alchemist, Necromancer) or self-sustaining heroes (Duelist, Knight) are valuable.
- **Flexibility:** Aetheris adapts based on Absorption. The team needs to handle varied threats — stuns, DoTs, AoE, high single-target damage.
- **Position independence:** Collapse Reality shuffles positions. Heroes who function in multiple positions (Ranger, Alchemist, Cleric) are more resilient than position-locked classes.

**Optimal macro-strategy across all 3 floors:** Send *moderately strong* teams on Floors 1 and 2 — strong enough to win, weak enough to produce manageable Echoes. Save your most versatile, position-flexible heroes for Floor 3. Avoid sending your absolute best-geared or highest-level heroes on early floors unless they're classes whose Echoes are least threatening (e.g., a support Echo is less dangerous than a Berserker Echo).

---
---

## Cross-Boss Thematic Summary

| Aspect | Skeinrend | Cruciath | Aetheris |
|---|---|---|---|
| Rift Aspect | Instability / Chaos | Hunger / Cost | Intelligence / Convergence |
| Floor Mechanic | Spell Warp | Mana Bleed | Echoes |
| Core Puzzle | Minimize warps, manage Entropy | Maximize efficiency, minimize actions | Manage Echo kills vs. Absorption scaling |
| Scaling Threat | Entropy stacks → Discharge | Ledger total → boss buffs/heals | Absorbed Echoes → Echo Resonance / The Final Tithe |
| PROT Curve | 30% → 20% → 5% | 20% → 30% → 10% | 40% → 25% → 15% |
| Enrage Turn | 12 | 14 | 16 |
| Anti-Stall | Entropy + Enrage | Ledger + Enrage | Resonance scaling + Enrage |
| Anti-Rush | Phase 1 PROT, Entropic Ward | Phase 2 PROT spike, Exsanguinate Mana | Phase 1 40% PROT + Echo bodyguard |
