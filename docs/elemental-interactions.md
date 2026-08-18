# Elemental Interaction System

> Dark Fantasy Roguelike — Turn-Based Combat Design Document

---

## Self-Interactions (Element Stacking)

| Element | Stack Behavior | Details |
|---------|---------------|---------|
| **Fire** | **Escalation → Instability** | Stack 1: *Burning* (base DoT). Stack 2: *Inferno* (+40% fire damage to target). Stack 3+: *Wildfire* — damage spikes but fire spreads uncontrollably to a random adjacent unit (ally or enemy). Rewards fire-heavy parties but punishes mindless stacking. In Ember Sanctum, Wildfire threshold drops to stack 2. |
| **Ice** | **Deepening Freeze (Diminishing)** | Stack 1: *Chilled* (−20% SPD). Stack 2: *Frozen* (immobilized, skip turn). Stack 3: *Brittle* (frozen target takes +50% physical damage). Further stacks have no additional effect — the target is already maximally frozen. Ice-heavy parties get reliable CC but no scaling damage. In Frozen Depths, Chilled is applied at half-cost (ambient cold). |
| **Lightning** | **Overcharge (High Risk/Reward)** | Stack 1: normal damage. Stack 2: *Overcharged* (+30% damage, +15% crit). Stack 3+: *Surge* — massive damage but the caster takes 20% recoil and is Dazed for 1 turn. Rewards calculated aggression, punishes spam. In Shattered Conduit, ambient energy means Overcharge triggers at stack 1. |
| **Wind** | **Vortex Formation** | Stack 1: *Gust* (push target 1 tile). Stack 2: *Headwind* (All enemies get −25% ranged accuracy for 2 turns.). Stack 3+: *Maelstrom* — chaotic displacement of ALL units on the field, randomizing positions. Powerful setup tool that becomes a liability if overused. In Howling Spire, wind stacks persist 1 extra turn. |

---

## Elemental Pairs

### 1 · Fire + Ice

*The opposition pair. Annihilation through extremes.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Steam Veil** | Fire and Ice both hit the same target (or any targets) in the same round. No order required. | Rapid evaporation creates a steam cloud. Party gains +15% Evasion for 1 turn. Passive reward for mixed parties. |
| **Major Boost — Thermal Shock** | Target must have *Frozen* or *Chilled* status. Hit with a Fire attack in the **same turn or next turn**. | The temperature shock shatters the target. Deals 80% bonus damage (hybrid Fire/Physical), removes Frozen, and applies *Armor Crack* (−30% DEF, 3 turns). The signature "freeze-then-shatter" combo. |
| **Negative — Neutralization** | Fire hits and then Ice hit the same target without Frozen/Chilled already applied. | Elements cancel. attacks deal −70% damage. Target is left with neither status effect and receives a fire and ice resistance for 2 turns. Wastes two actions for less than one attack's worth of damage. Punishes uncoordinated elemental mixing. |

---

### 2 · Fire + Lightning

*Raw energy convergence. Volatile and explosive.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Superheated Conductor** | Target is *Burning* when hit by Lightning, or vice versa. | Heated matter conducts better. The second attack deals +20% damage. Simple, order-independent synergy. |
| **Major Boost — Plasma Detonation** | Apply *Burning* to a target, then hit it with Lightning within 2 turns while Burning persists. | Fire ignites into a plasma burst. AoE explosion centered on the target (hits adjacent enemies), dealing heavy hybrid Fire+Lightning damage. Clears Burning. Turns a single-target debuff into AoE punishment. |
| **Negative — Flashover** | Both Fire and Lightning used on the **same turn** targeting **different** enemies (split focus). | Uncontrolled energy arcs between the two points. Both casters take 15% of their own spell's damage as recoil. The attacks still land, but careless splitting costs health. |

---

### 3 · Fire + Wind

*Amplification. The most intuitive combo — and the most dangerous if mishandled.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Fanned Flames** | Wind and Fire hit any targets in the same round. | Wind feeds the flames. All *Burning* effects on the field (including pre-existing ones) deal +25% DoT this round. Rewards having both elements in the party. |
| **Major Boost — Firestorm** | Cast Wind on a target or area **first**, then follow with Fire on the same target/area in the same round or next turn. | Wind creates uplift; fire ignites it into a firestorm. AoE Fire damage to all enemies in the zone, applies *Burning* (2 turns), and leaves a *Burning Ground* tile hazard for 3 turns. The "set up the wind, then ignite" fantasy. |
| **Negative — Blowback** | Fire is cast **first**, then Wind is cast in the same round targeting the same area. | Wind redirects the existing flames back toward the party. The Fire caster takes 30% of the original Fire damage. *Burning Ground* appears under a random ally instead of the enemy. Order matters. |

---

### 4 · Ice + Lightning

*Brittle conduction. Precision destruction.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Frost Conductor** | Target has *Chilled* or *Frozen* when hit by Lightning. | Ice crystals and meltwater conduct the charge. Lightning attack gains +1 chain target (bounces to one additional enemy). Passive benefit in mixed parties. |
| **Major Boost — Permafrost Shatter** | Target must be *Frozen* (not just Chilled). Hit with Lightning. | The electrical charge fractures the deep ice from within. Massive single-target burst (+100% Lightning damage), applies *Stunned* (1 turn) and *Armor Crack* (−25% DEF, 2 turns). Removes Frozen. Highest single-target damage combo in the system but requires the full Frozen setup. |
| **Negative — Grounded Freeze** | Lightning is cast **first**, then Ice on the same target in the same round. | Lightning superheats the surface, preventing ice from forming. Ice attack deals −40% damage and fails to apply *Chilled*. The Lightning damage is unaffected but you've wasted the Ice action. Wrong order wastes your freeze. |

---

### 5 · Ice + Wind

*The blizzard pair. Area denial and attrition.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Biting Wind** | Ice and Wind both used in the same round (any targets). | Windchill drops. All enemies gain *Exposure* (−10% all elemental RES, 1 turn). Rewards elemental diversity with a subtle but broadly useful debuff. |
| **Major Boost — Blizzard** | Cast Ice on a target/area, then Wind in the same round or next turn (Ice first). | Wind carries the cold across the battlefield. All enemies take moderate Ice damage, gain *Chilled* (2 turns), and the field gains *Blizzard* terrain (enemies starting turns in the zone take Ice damage and have −20% accuracy, lasts 3 turns). Best sustained AoE control in the system. |
| **Negative — Whiteout** | Both Ice and Wind cast in the same round with Wind **first**. | The blizzard forms before the ice can be directed. *Blizzard* terrain affects **the entire field** — allies included. Party members suffer the same accuracy penalty and Ice DoT. Powerful but indiscriminate. |

---

### 6 · Lightning + Wind

*The storm pair. Chaotic power.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Static Charge** | Lightning and Wind used in the same round (any targets). | Wind-carried ions saturate the air. The next Lightning attack by any party member gains +20% critical hit chance. Stored for up to 2 turns. |
| **Major Boost — Thunderstorm** | Cast Wind to create a wind effect on the field, then Lightning within 2 turns. | Lightning rides the wind currents. Creates a *Thunderstorm* (3 turns): each turn, 2 random enemies are struck by lightning bolts dealing moderate Lightning damage with a 30% Stun chance. Cannot be dispelled — must be waited out. |
| **Negative — Wild Arc** | Lightning is cast during an active *Thunderstorm* or *Cyclone* (Wind stack 2+). | Adding more electricity to an existing storm makes it uncontrollable. Lightning strikes become fully random — allies are valid targets. Each turn of the remaining storm hits 2 random units (any side). High risk if you get greedy. |

---

## Magic (Arcane) Pairs

*Magic is raw arcane energy — a universal amplifier and catalyst. It boosts everything but destabilizes everything too.*

### 7 · Magic + Fire

*Arcane fuel. Fire that cannot be denied.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Arcane Kindle** | Magic and Fire used in the same round (any targets). | Arcane energy feeds the flames. All *Burning* effects applied this round last +1 turn. |
| **Major Boost — Hellfire** | Cast Magic on a target to apply *Arcane Mark*, then hit the marked target with Fire. | Fire is transmuted into arcane flame. The Fire attack ignores Fire resistance entirely and deals +30% damage. *Burning* from Hellfire cannot be cleansed by normal means (only Magic or healing dispels). Anti-tank combo for fire-resistant enemies. |
| **Negative — Mana Combustion** | Fire hits a target that is casting or channeling a Magic ability in the same round (ally or enemy). | Fire ignites raw mana. The Magic caster loses 25% of their max MP and is *Silenced* for 1 turn (cannot use Magic-type abilities). Dangerous in environments with ambient fire. |

---

### 8 · Magic + Ice

*Crystallization. Arcane imprisonment.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Arcane Frost** | Magic and Ice used in the same round. | Arcane energy reinforces the cold. *Chilled* and *Frozen* effects applied this round have +1 turn duration and require one extra dispel to remove. |
| **Major Boost — Crystal Prison** | Target must be *Frozen*. Cast Magic on the Frozen target. | Arcane energy crystallizes the ice into an indestructible prison. Target is *Imprisoned* (cannot act, cannot be targeted, immune to damage) for 2 turns. When the prison shatters, target takes moderate Magic damage and is *Brittle* + *Silenced* (1 turn). Removes the most dangerous enemy from the fight temporarily. |
| **Negative — Thought Freeze** | Magic caster targets a *Frozen* or *Chilled* ally (friendly fire from AoE, or Whiteout). | Arcane energy freezes the ally's mind along with their body. Ally is *Mind Locked* — all ability cooldowns increased by 1 turn and MP regeneration halted for 2 turns. Devastating for caster-heavy parties in Frozen Depths. |

---

### 9 · Magic + Lightning

*Arcane overload. Precision through power.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Arcane Conductor** | Magic and Lightning used in the same round. | Arcane energy widens the conductive path. Lightning attacks this round gain +1 chain target. |
| **Major Boost — Runic Bolts** | Cast Magic to apply *Arcane Mark* on a target, then hit with Lightning. | Lightning is guided by the arcane mark. The attack **cannot miss**, ignores Evasion, and deals +25% damage. If the target has any other debuff, the bolt's chain range extends to all enemies sharing that debuff. Surgical precision combo. |
| **Negative — Arcane Overload** | Lightning and Magic are cast on the **same target** in the **same initiative tick** (simultaneous). | Energies amplify uncontrollably. The target takes +50% damage (bonus), but the resulting energy discharge hits **all adjacent units** (allies included) for 40% of the total damage. A double-edged spike — devastating in tight formations. |

---

### 10 · Magic + Wind

*Ethereal dispersal. Utility and denial.*

| Interaction | Trigger | Effect |
|---|---|---|
| **Minor Boost — Spell Drift** | Magic and Wind used in the same round. | Wind carries arcane resonance. The next single-target Magic spell cast by any party member becomes AoE (small radius). Stored for 2 turns. |
| **Major Boost — Astral Gale** | Cast Wind on the field, then Magic within 1 turn. | Wind becomes infused with disruptive arcane energy. All enemies are hit by a stripping gale: removes 1 buff per enemy and applies *Arcane Exposure* (−20% Magic RES, 2 turns). No damage — pure utility. The anti-buff combo. |
| **Negative — Dispersal** | Magic is cast into an active *Cyclone* or *Maelstrom* (Wind stack 2+). | Wind tears the spell apart before it can form. The Magic attack deals −60% damage and fails to apply any debuffs. Additionally, raw mana particles scatter — all units on the field (both sides) have their elemental resistances scrambled randomly for 1 turn. Chaotic and unreliable. |

---

## Summary Matrix

| Pair | Minor Boost | Major Boost | Negative |
|------|------------|-------------|----------|
| **Fire + Fire** | — | *Inferno* (+40% dmg at stack 2) | *Wildfire* (random spread at stack 3+) |
| **Ice + Ice** | — | *Brittle* (+50% phys dmg at stack 3) | Diminishing returns (no further scaling) |
| **Ltn + Ltn** | — | *Overcharge* (+30% dmg, +15% crit) | *Surge* (recoil + Dazed at stack 3+) |
| **Wind + Wind** | — | *Cyclone* (AoE grouping at stack 2) | *Maelstrom* (random displacement at 3+) |
| **Fire + Ice** | *Steam Veil* (+15% EVA) | *Thermal Shock* (burst + Armor Crack) | *Neutralization* (−50% both, no status) |
| **Fire + Ltn** | *Superheated Conductor* (+20% dmg) | *Plasma Detonation* (AoE burst) | *Flashover* (caster recoil on split focus) |
| **Fire + Wind** | *Fanned Flames* (+25% Burn DoT) | *Firestorm* (AoE + Burning Ground) | *Blowback* (flames redirected to party) |
| **Ice + Ltn** | *Frost Conductor* (+1 chain) | *Permafrost Shatter* (+100% burst + Stun) | *Grounded Freeze* (Ice weakened, no Chill) |
| **Ice + Wind** | *Biting Wind* (−10% all RES) | *Blizzard* (AoE Chill + terrain) | *Whiteout* (blizzard hits allies too) |
| **Ltn + Wind** | *Static Charge* (+20% crit) | *Thunderstorm* (3-turn random strikes) | *Wild Arc* (storm targets allies) |
| **Magic + Fire** | *Arcane Kindle* (+1 Burn turn) | *Hellfire* (ignore Fire RES) | *Mana Combustion* (MP loss + Silence) |
| **Magic + Ice** | *Arcane Frost* (+1 freeze duration) | *Crystal Prison* (2-turn removal) | *Thought Freeze* (cooldown + MP lock) |
| **Magic + Ltn** | *Arcane Conductor* (+1 chain) | *Runic Bolts* (can't miss + bonus) | *Arcane Overload* (AoE friendly fire) |
| **Magic + Wind** | *Spell Drift* (AoE upgrade) | *Astral Gale* (strip buffs + exposure) | *Dispersal* (spell weakened + RES scramble) |

---

## Design Notes

**Dungeon Considerations**

- **Frozen Depths (Ice):** Ice self-stacking is cheaper here (ambient cold). Fire+Ice Thermal Shock is premium — shatter frozen enemies. But Whiteout and Thought Freeze are severe risks since everything is already Chilled.
- **Howling Spire (Wind):** Wind stacks persist longer. Firestorm and Blizzard are easier to set up. But Maelstrom and Dispersal happen more easily due to ambient winds — Magic users beware.
- **Shattered Conduit (Lightning):** Overcharge triggers at stack 1 — every Lightning spell is high-risk/high-reward. Plasma Detonation and Permafrost Shatter are devastating but Wild Arc and Arcane Overload are constant threats.
- **Ember Sanctum (Fire):** Wildfire threshold drops to stack 2. Fanned Flames is always active (ambient fire). Mana Combustion triggers more easily. Fire-heavy parties must be surgical or they'll burn themselves.

**Balance Philosophy**

Each elemental pair occupies a distinct tactical niche:

- *Fire + Ice:* Single-target burst + defense shred
- *Fire + Lightning:* AoE burst damage
- *Fire + Wind:* Sustained AoE + terrain control
- *Ice + Lightning:* Maximum single-target spike + hard CC
- *Ice + Wind:* Area denial + attrition
- *Lightning + Wind:* Sustained multi-target pressure (uncontrollable)
- *Magic + Fire:* Resistance penetration
- *Magic + Ice:* Hard removal / crowd control
- *Magic + Lightning:* Precision / anti-evasion
- *Magic + Wind:* Buff stripping / utility

No pair is strictly superior. Pairs with higher damage ceilings (Ice+Lightning, Fire+Lightning) carry proportionally higher negative interaction risks. Utility pairs (Magic+Wind, Ice+Wind) are safer but deal less raw damage. Every party composition has at least one strong combo and one dangerous pitfall.
