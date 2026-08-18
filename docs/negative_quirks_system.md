# Negative Quirks System — Design Document

> 46 negative quirks across 8 categories.
> Severity rated: ★ minor nuisance · ★★ meaningful penalty · ★★★ run-threatening liability.
> Quirks marked **[FORCED]** override player control.

---

## 1. Combat Offensive (6)

| Quirk | Effect | Severity |
|---|---|---|
| **Shaking Hands** | −10 ACC | ★ |
| **Weak Grip** | −15% DMG from positions 1–2 | ★★ |
| **Dulled Instinct** | −4% CRIT | ★ |
| **Sluggish** | −2 SPD | ★★ |
| **Hesitant** | −25% DMG on round 1 of every combat | ★★ |
| **Flinching Striker** | −15 ACC against enemies that damaged this hero last round | ★★ |

*Design notes — These stack painfully. A hero with Shaking Hands + Hesitant is nearly dead weight in short fights but functional in long ones. Position-gated penalties (Weak Grip) make roster placement matter.*

---

## 2. Combat Defensive (6)

| Quirk | Effect | Severity |
|---|---|---|
| **Clumsy** | −10 Dodge | ★ |
| **Thin-Skinned** | +100% Bleed/Poison tick damage | ★★ |
| **Brittle** | −15% Max HP | ★★ |
| **Slow Reflexes** | −25% Stun Resist | ★★ |
| **Porous Ward** | −20% Debuff Resist, −20% Move Resist | ★★ |
| **Glass Jaw** | +25% damage taken when hit by a CRIT | ★★ |

*Design notes — Thin-Skinned is the sleeper threat: insignificant until DoT-heavy enemy compositions turn it lethal. Glass Jaw punishes leaving a hero in front-line positions against high-CRIT enemies.*

---

## 3. Elemental Vulnerability (5)

| Quirk | Effect | Severity |
|---|---|---|
| **Frostbitten Soul** | +30% Ice damage taken | ★★ |
| **Ember-Scarred** | +30% Fire damage taken | ★★ |
| **Storm-Touched** | +30% Lightning damage taken | ★★ |
| **Wind-Hollowed** | +30% Wind damage taken | ★★ |
| **Arcane Fracture** | +30% Magic damage taken | ★★ |

*Design notes — Universally ★★ in isolation, but escalate to ★★★ in the matching dungeon type (Frostbitten Soul in Frozen Depths, etc.). Players must roster-check before deploying. Acquired primarily from dungeon events and curio traps matching the element.*

---

## 4. Dungeon-Specific (5)

| Quirk | Effect | Severity |
|---|---|---|
| **Cryophobia** | Frozen Depths only: +25% Stress taken, −5 ACC | ★★ |
| **Vertigo** | Howling Spire only: +25% Stress taken, −10 Dodge | ★★ |
| **Voltaic Dread** | Shattered Conduit only: +25% Stress taken, −15% Stun Resist | ★★ |
| **Pyrophobia** | Ember Sanctum only: +25% Stress taken, −10% Max HP | ★★ |
| **Arcane Sickness** | Arcane Maw only: +25% Stress taken, −2 SPD | ★★ |

*Design notes — Each pairs a stress penalty with a thematically fitting stat penalty. These are ★★ in their dungeon and completely inert elsewhere, creating clear "don't bring this hero here" signals without permanently crippling anyone.*

---

## 5. Stress / Mental (6)

| Quirk | Effect | Severity |
|---|---|---|
| **Nervous** | +15% Stress taken from all sources | ★ |
| **Doom-Drawn** | +15% Affliction chance when stress-testing | ★★ |
| **Faithless** | −15% Virtue chance when stress-testing | ★★ |
| **Contagious Dread** | Party members within 1 position take +10% Stress | ★★ |
| **Black Bile** | +30% Stress taken whenever any ally reaches Death's Door | ★★★ |
| **Night Terrors** | Camping provides 0 stress relief for this hero | ★★ |

*Design notes — Nervous is the gateway quirk: common, tolerable, but quietly amplifies everything else. Contagious Dread and Black Bile create cascading failures — one hero's spiral drags the party. Faithless + Doom-Drawn together virtually guarantees affliction.*

---

## 6. Compulsive Behaviors (8)

All entries in this category are **[FORCED]** — the hero acts autonomously, overriding player input.

| Quirk | Trigger | Forced Behavior | Severity |
|---|---|---|---|
| **Compulsive** | Hero is adjacent to an uninspected curio | Hero interacts with the curio without player input (no supply item can be applied) | ★★★ |
| **Kleptomaniac** | Party collects loot | Hero pockets 15% of gold found before it reaches the party treasury | ★★ |
| **Bloodlust** | Player attempts to retreat from combat | Hero refuses to retreat; party must fight to the end or wait 1 round and retry (50% to override) | ★★★ |
| **Martyr Complex** | Hero is targeted by a healing skill while any ally is below 50% HP | Hero refuses the heal — "Others need it more" | ★★★ |
| **Supply Waster** | Entering a new room (20% chance) | Hero consumes a random supply item from inventory | ★★ |
| **Obstinate** | Player orders hero to move to positions 3–4 | Hero resists (60% chance to refuse); will only occupy positions 1–2 | ★★ |
| **Skulker** | Player orders hero to move to positions 1–2 | Hero resists (60% chance to refuse); will only occupy positions 3–4 | ★★ |
| **Loot Fiend** | Party passes a container-type curio | Hero forces the party to open it, even if it's visibly trapped | ★★ |

*Design notes — This is the pain category. Compulsive is the worst quirk in the game: curios without the correct supply item are a coin flip between treasure and catastrophe. Bloodlust can end runs against overwhelming enemies. Martyr Complex cripples healing economy. These should be rare acquisitions — primarily from affliction episodes and high-Swelling events. Obstinate/Skulker are softer: they constrain formation but don't directly threaten a kill.*

---

## 7. Situational (6)

| Quirk | Condition | Effect | Severity |
|---|---|---|---|
| **Panic Attack** | Hero is below 25% HP | −20 ACC, −15 Dodge, −3 SPD | ★★★ |
| **Swelling Sickness** | Arcane Swelling ≥ 51 (Raging+) | −10 ACC, −10 Dodge | ★★ |
| **Arcane Overload** | Arcane Swelling ≥ 76 (Overwhelming) | +50% Stress taken, −25% Debuff Resist | ★★★ |
| **Hemophilia** | Hero is afflicted with Bleed | Bleed duration +2 rounds | ★★ |
| **Isolation Anxiety** | No ally in an adjacent position | −20% DMG, +15% Stress taken | ★★ |
| **Cowardly** | An ally dies during the quest | −30% DMG, +25% Stress taken for the rest of the quest | ★★★ |

*Design notes — Panic Attack creates a death spiral: the closer a hero gets to Death's Door, the less capable they are of surviving it. Swelling Sickness / Arcane Overload gate deep exploration — parties with these heroes must manage Swelling aggressively or retreat early. Cowardly makes the first death snowball into a wipe.*

---

## 8. Addiction / Dependency (4)

Gained exclusively from guild activity side effects. Hero **must** be sent to their addicted activity between quests, or they suffer a penalty on the next mission.

| Quirk | Required Activity | If Denied | Severity |
|---|---|---|---|
| **Dragon Ale Addiction** | Dragon Ale (Gilded Den) | +25% Stress taken, −5 ACC for entire next quest | ★★ |
| **Sprite Dice Addiction** | Dice with Sprites (Gilded Den) | +25% Stress taken, −2 SPD for entire next quest | ★★ |
| **Pit Fighter's Blood** | Pit Fighting (Gilded Den) | +25% Stress taken, −10% DMG for entire next quest | ★★ |
| **Font Dependency** | Any Enchanted Springs tier (Shallow/Deep/Abyssal) | +25% Stress taken, −15 Dodge for entire next quest | ★★ |

*Design notes — Addictions are the economy drain. The hero is functional if fed, but their preferred activity slot is consumed every cycle, blocking other heroes from using it. Font Dependency is the most flexible (any Springs tier works) but has the harshest withdrawal penalty. These are ★★ individually but become ★★★ at the roster level when multiple heroes compete for the same activity slot.*

---

## Acquisition Sources — Summary

| Source | Typical Quirks Gained |
|---|---|
| Affliction episode | Compulsive behaviors, Stress/Mental |
| Curio trap | Elemental vulnerability, Dungeon-specific |
| Combat near-death (Death's Door survival) | Panic Attack, Cowardly, Black Bile |
| High Arcane Swelling exposure | Swelling Sickness, Arcane Overload, Arcane Fracture |
| Guild activity side effect | Addiction (matching activity) |
| General dungeon stress | Combat offensive/defensive, Situational |

## Severity Distribution

| Rating | Count | % |
|---|---|---|
| ★ Minor | 4 | 9% |
| ★★ Meaningful | 32 | 70% |
| ★★★ Run-threatening | 10 | 21% |

**Total: 46 quirks** — 8 forced behaviors, 38 stat/conditional modifiers.

---

## Design Principles Recap

1. **No dead quirks.** Every quirk has a scenario where it matters.
2. **Compulsive behaviors are rare and dreaded.** Players should feel genuine anxiety when one appears. They are the primary reason the Infirmary exists.
3. **Stacking is the real danger.** Individual ★★ quirks are manageable; two or three on the same hero create emergent crises.
4. **Dungeon-specific and elemental quirks create roster puzzles.** Players must weigh "this hero is strong but cursed for this dungeon" decisions.
5. **Addictions tax the metagame,** not the quest. They compete for limited guild activity slots across the roster, forcing opportunity-cost decisions every week.
