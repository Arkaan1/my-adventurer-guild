# Positive Quirks — Design Document

> 48 positive quirks across 7 categories. Balance target: dungeon-specific and situational quirks are stronger in context than general quirks, creating lock-in tension.

---

## 1. Combat Offensive (9)

| Name | Effect | Rarity | Source Hint |
|---|---|---|---|
| **Keen Edge** | +3% CRT | Common | Combat encounters |
| **Hawk Eye** | +8 ACC | Common | Combat encounters |
| **Slugger** | +10% DMG when in position 1 or 2 | Common | Combat, front-line events |
| **Natural Swing** | +5% CRT when in position 1 | Uncommon | Combat, curio interaction |
| **Sharpshooter** | +10 ACC when in position 3 or 4 | Uncommon | Combat, guild training |
| **Precise** | +5 ACC, +2% CRT | Common | Combat, guild training |
| **Unerring** | +12 ACC | Uncommon | Curio interaction |
| **Quickdraw** | +3 SPD on round 1 of combat | Uncommon | Combat, ambush events |
| **Ruthless** | +15% DMG vs enemies below 25% HP | Uncommon | Boss kill |

---

## 2. Combat Defensive (7)

| Name | Effect | Rarity | Source Hint |
|---|---|---|---|
| **Thick Hide** | +10% max HP | Common | Combat encounters |
| **Fleet of Foot** | +8 Dodge | Common | Combat encounters |
| **Iron Will** | +20% Stun Resist | Common | Guild training, combat |
| **Rooted** | +15% Move Resist, +5% Stun Resist | Common | Combat encounters |
| **Evasive** | +12 Dodge, −5% DMG dealt | Uncommon | Combat, trap survival |
| **Thick Skull** | +25% Stun Resist, +5% max HP | Uncommon | Curio interaction |
| **Hard to Kill** | +15% Death Blow Resist | Rare | Surviving Death's Door |

---

## 3. Elemental Affinity (6)

| Name | Effect | Rarity | Source Hint |
|---|---|---|---|
| **Fireblood** | +15% Fire DMG dealt, +10% Fire Resist | Uncommon | Ember Sanctum curio |
| **Frostborne** | +15% Ice DMG dealt, +10% Ice Resist | Uncommon | Frozen Depths curio |
| **Stormtouched** | +15% Lightning DMG dealt, +10% Lightning Resist | Uncommon | Shattered Conduit curio |
| **Windsworn** | +15% Wind DMG dealt, +10% Wind Resist | Uncommon | Howling Spire curio |
| **Arcane Resonance** | +15% Magic DMG dealt, +10% Magic Resist | Rare | Arcane Maw boss kill |
| **Elemental Intuition** | +8% Resist to all elements | Rare | High-swelling event (76+) |

---

## 4. Dungeon-Specific (5)

| Name | Effect | Rarity | Source Hint |
|---|---|---|---|
| **Depths Delver** | +10% DMG, +15% Ice Resist in The Frozen Depths | Uncommon | Frozen Depths exploration |
| **Spire Climber** | +10% DMG, +15% Wind Resist in The Howling Spire | Uncommon | Howling Spire exploration |
| **Conduit Walker** | +10% DMG, +15% Lightning Resist in The Shattered Conduit | Uncommon | Shattered Conduit exploration |
| **Ember Strider** | +10% DMG, +15% Fire Resist in The Ember Sanctum | Uncommon | Ember Sanctum exploration |
| **Maw Survivor** | +10% DMG, +15% Magic Resist in The Arcane Maw | Rare | Arcane Maw boss kill |

---

## 5. Stress / Mental (7)

| Name | Effect | Rarity | Source Hint |
|---|---|---|---|
| **Tranquil Mind** | −10% Stress taken | Common | Guild rest, meditation event |
| **Stalwart** | +10% Virtue chance | Common | Surviving combat stress events |
| **Steady Nerves** | −15% Stress from Arcane Swelling effects | Uncommon | High-swelling exploration |
| **Inspiring Presence** | Party: −5% Stress taken (excludes self) | Uncommon | Positive resolve event, guild |
| **Gallows Humor** | −20% Stress when at Death's Door | Uncommon | Surviving Death's Door |
| **Resolute** | +15% Virtue chance, −5% Stress taken | Rare | Surviving an affliction |
| **Disciplined** | +15% Debuff Resist, −5% Stress taken | Uncommon | Guild training |

---

## 6. Exploration (6)

| Name | Effect | Rarity | Source Hint |
|---|---|---|---|
| **Wayfinder** | +10% Scouting chance | Common | Exploration events |
| **Trapfinder** | +25% Trap disarm chance | Common | Exploration, trap events |
| **Curio Sage** | Curio interactions: +15% chance of positive outcome | Uncommon | Curio interaction |
| **Scrounger** | +10% gold found from loot | Common | Exploration, combat |
| **Provision Master** | −15% Supply consumption rate | Uncommon | Guild activity, long expeditions |
| **Cartographer** | +15% Scouting chance; scouted rooms also reveal enemy types | Rare | Rare curio, deep exploration |

---

## 7. Situational (8)

| Name | Effect | Rarity | Source Hint |
|---|---|---|---|
| **Cornered Fury** | +15% DMG when below 33% HP | Uncommon | Near-death combat events |
| **Last Stand** | +20 Dodge while at Death's Door | Rare | Surviving multiple Death's Door hits |
| **Swelling Surfer** | +10% DMG, +3 SPD when Arcane Swelling ≥ 51 | Rare | High-swelling event (76+) |
| **Calm Discipline** | +8 ACC, +5 Dodge when Arcane Swelling ≤ 25 | Uncommon | Low-swelling full clears |
| **Lone Wolf** | +10% DMG, +8 Dodge when no other ally occupies an adjacent position | Uncommon | Solo survival combat events |
| **Rearguard** | +15% Healing received when in position 4 | Common | Combat encounters |
| **Bloodlust** | +3% CRT per enemy killed this combat (max +9%) | Rare | Boss kill |
| **Second Wind** | Heal 10% max HP when first dropping below 25% HP (once per combat) | Rare | Near-death event, rare curio |

---

## Balance Notes

### Rarity distribution
| Rarity | Count | Design intent |
|---|---|---|
| Common | 16 | Bread-and-butter quirks. Easy to get, always useful, replaceable. Players rarely lock these. |
| Uncommon | 21 | The interesting decisions. Strong enough to consider locking, niche enough to compete for slots. |
| Rare | 11 | Build-defining. Worth locking immediately. Gated behind specific achievements or dangerous situations. |

### Lock-in tension examples
These are the kinds of decisions the system is designed to produce:

- **Generalist vs. specialist:** *Hawk Eye* (+8 ACC everywhere) vs. *Sharpshooter* (+10 ACC in pos 3–4). The specialist is stronger when it applies but dead weight if the hero gets shuffled forward.
- **Dungeon prep vs. flexibility:** *Ember Strider* (+10% DMG, +15% Fire Resist in Ember Sanctum) is powerful but only in one dungeon. Locking it means committing that hero as your Sanctum specialist. *Precise* (+5 ACC, +2% CRT) works everywhere.
- **Risk-reward:** *Swelling Surfer* and *Bloodlust* reward aggressive play. *Calm Discipline* rewards conservative play. A player can't have both philosophies on the same hero.
- **Defensive gamble:** *Hard to Kill* (+15% Death Blow Resist) and *Last Stand* (+20 Dodge at Death's Door) both help at Death's Door but stack in different ways — one prevents the killing blow, the other prevents being hit at all.
- **Team slot:** *Inspiring Presence* (party stress reduction) is the only quirk that directly buffs allies, making it uniquely valuable but consuming a quirk slot that could boost the hero's own combat stats.

### Stat budget guidelines
| Modifier | Common | Uncommon | Rare |
|---|---|---|---|
| ACC | +5 to +8 | +10 to +12 | — |
| CRT | +2% to +3% | +5% | conditional +3%/kill |
| DMG | — | +10% (conditional) | +10–15% (conditional) |
| Dodge | +5 to +8 | +8 to +12 | +20 (conditional) |
| SPD | — | +2 to +3 (conditional) | +3 (conditional) |
| Resist | +15% to +20% (single) | +15–25% (single or dual) | +8% (all elements) |
| Stress | −10% | −15% (conditional) | −5% + another effect |
| HP | +5% to +10% | +5% (as secondary) | 10% heal (conditional) |
