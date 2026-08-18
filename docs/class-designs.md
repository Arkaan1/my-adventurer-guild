# Class Design Document — Dark Fantasy Roguelike

> Reference spec for implementation. 11 classes, 7 abilities each (equip 4 per mission).

---

## Stat Scale Reference

| Stat | Low | Medium | High |
|------|-----|--------|------|
| HP | 20–24 | 25–30 | 31–40 |
| Dodge | 0–8 | 9–16 | 17–25 |
| Speed | 1–3 | 4–5 | 6–8 |
| Accuracy | 75–80 | 81–87 | 88–95 |
| Crit | 2–3% | 4–5% | 6–8% |
| Damage | 4–6 | 7–9 | 10–12 |

Damage shorthand used in abilities:

| Label | Range |
|-------|-------|
| Negligible | 1–3 |
| Low | 3–5 |
| Medium | 5–8 |
| High | 8–12 |
| Very High | 11–15 |

Heal shorthand:

| Label | Range |
|-------|-------|
| Light | 2–4 |
| Moderate | 5–8 |
| Strong | 8–12 |

---

## 1. Knight

**Role:** Tank / Frontline  
**Preferred Position:** 1–2  
**Damage Types:** Slash, Blunt, Ice

### Passive — Iron Bulwark

Reduces all damage taken by 15% while in position 1. When Guarding an ally, 50% of redirected damage is also reduced. The Knight is immovable — forced-movement effects move them 1 fewer position (minimum 0).

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 38 | 5 | 2 | 85 | 3% | 5–9 |

Stress Resist: High

### Abilities

#### 1. Shield Bash
- **Positions:** 1–2 → Enemy 1–2
- **Type:** Blunt
- **Damage:** Medium (5–8)
- **Effects:** 40% stun (1 round)
- **Cooldown:** —
- *A concussive blow that buckles knees and rattles skulls.*

#### 2. Stalwart Guard
- **Positions:** 1–2 → Any ally
- **Type:** —
- **Damage:** —
- **Effects:** Guard target for 3 rounds (redirects attacks to Knight). Knight gains +15% PROT for duration.
- **Cooldown:** —
- *The Knight steps between death and its quarry.*

#### 3. Rampart Push
- **Positions:** 1 → Enemy 1–2
- **Type:** Blunt + Ice
- **Damage:** Low (3–5)
- **Effects:** Pushes target back 1 position. −3 Speed debuff, 2 rounds (frost impact). If target cannot be pushed (wall), +50% damage instead.
- **Cooldown:** —
- *A frost-rimed shield crashes forward. The enemy slides back on frozen ground.*

#### 4. Rallying Cry
- **Positions:** 1–3 → All allies
- **Type:** —
- **Damage:** —
- **Effects:** Stress heal 3–5 to all allies. +10 ACC buff to all allies, 2 rounds. Self: cannot attack next round (recovery).
- **Cooldown:** 4
- *A voice like iron, steadying the line when terror gnaws.*

#### 5. Punishing Blow
- **Positions:** 1–2 → Enemy 1–2
- **Type:** Slash
- **Damage:** High (8–11)
- **Effects:** Self: −10 Dodge for 2 rounds (overcommit).
- **Cooldown:** —
- *An overhead strike that sacrifices footing for force.*

#### 6. Hold the Line
- **Positions:** 1 → Self
- **Type:** Ice
- **Damage:** —
- **Effects:** Taunt: all enemies must target Knight for 2 rounds. +30% PROT for duration. Frost Aura: enemies that attack the Knight suffer −3 Speed for 1 round. Self: −5 Speed for duration (planted stance).
- **Cooldown:** 4
- *Frost crawls from the Knight's boots. The ground hardens. Nothing gets past.*

#### 7. Oath of Sacrifice
- **Positions:** 1–2 → Any ally
- **Type:** —
- **Damage:** —
- **Effects:** Heal ally for 20% of Knight's max HP. Self: takes 15% max HP as damage (cannot be reduced). +5 stress to self.
- **Cooldown:** 3
- *Blood freely given is the strongest covenant.*

### Intended Weaknesses
- Extremely slow — always acts last, enemies can pile damage before the Knight responds.
- Negligible damage output; cannot carry fights alone.
- Useless from positions 3–4 (only Rallying Cry works from 3).
- Vulnerable to Bleed/Poison — large HP pool means more ticks to suffer.
- No ranged capability; backline enemies are untouchable.
- Taunt forces all incoming damage, making the Knight collapse if unsupported.

### Key Synergies
- **+ Duelist:** Guard the glass cannon so they can Riposte freely. Knight absorbs hits, Duelist counter-attacks.
- **+ Ranger:** Knight keeps threats off the Ranger; Ranger's Mark + any DPS capitalizes on the space the Knight creates.
- **+ Cleric:** Consecrated Ground on pos 1–2 + Knight tanking = sustained frontline that doesn't fold.

---

## 2. Berserker

**Role:** Melee DPS  
**Preferred Position:** 1–2  
**Damage Types:** Slash, Bleed, Fire

### Passive — Blood Fury

+10% damage for every 25% HP missing (max +40% at Death's Door). At Death's Door, also gain +5% crit. This passive makes the Berserker more dangerous the closer they are to death.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 35 | 5 | 5 | 80 | 5% | 7–12 |

Stress Resist: Low

### Abilities

#### 1. Reckless Cleave
- **Positions:** 1–2 → Enemy 1–2
- **Type:** Slash
- **Damage:** High (8–12)
- **Effects:** Self: takes 2 damage (cannot be reduced). Wild swing.
- **Cooldown:** —
- *The blade carves wide, heedless of what it costs the arm that swings it.*

#### 2. Howl of Madness
- **Positions:** 1–3 → All enemies
- **Type:** —
- **Damage:** —
- **Effects:** −10 ACC debuff to all enemies, 2 rounds. All allies (including self) gain +8 stress. If Berserker is below 50% HP, also applies −3 Speed debuff to all enemies.
- **Cooldown:** 3
- *A sound not meant for human throats. Enemies falter. Allies question their company.*

#### 3. Bloodletting Strike
- **Positions:** 1–2 → Enemy 1–3
- **Type:** Slash
- **Damage:** Medium (5–7)
- **Effects:** 80% bleed (3 dmg/round, 3 rounds). Slightly longer reach than typical front abilities.
- **Cooldown:** —
- *A deliberate cut that parts flesh along the seam.*

#### 4. Frenzy
- **Positions:** 1–2 → Self
- **Type:** Fire
- **Damage:** —
- **Effects:** +25% damage, +3 Speed, −15 Dodge. Duration: 3 rounds. While active, all Berserker attacks gain Fire type and 30% chance to apply burn (2 dmg/round, 2 rounds). If already below 50% HP when cast, also gain +5% crit.
- **Cooldown:** 4
- *Rage ignites. The blade glows. Thought dissolves into smoke and killing.*

#### 5. Savage Rush
- **Positions:** 2–3 → Enemy 1–2
- **Type:** Slash + Fire
- **Damage:** High (8–11)
- **Effects:** Moves self forward 1–2 positions (to reach pos 1). 40% burn (2 dmg/round, 2 rounds). If already at pos 1, deals +20% bonus damage instead.
- **Cooldown:** —
- *A burning trail marks the charge. The Berserker arrives wreathed in heat and fury.*

#### 6. Gut Rend
- **Positions:** 1 → Enemy 1
- **Type:** Slash
- **Damage:** Very High (11–15)
- **Effects:** 100% bleed (2 dmg/round, 3 rounds). Self: takes 3 damage (cannot be reduced). Position-locked for maximum brutality.
- **Cooldown:** —
- *The Berserker opens the enemy from navel to spine, grinning through their own blood.*

#### 7. Defy Death
- **Positions:** 1–2 → Self
- **Type:** —
- **Damage:** —
- **Effects:** Heal 20% max HP. +15 stress to self. If used at Death's Door, heal 30% instead but +25 stress.
- **Cooldown:** 5
- *Not yet. Not yet. NOT YET.*

### Intended Weaknesses
- Self-damage on core abilities makes them dependent on healers.
- Stress generation (Howl, Defy Death) can spiral the party toward afflictions.
- Low accuracy — can whiff critical turns.
- No defensive tools. No dodge, no PROT, no guard.
- Low stress resist — ironically, the Berserker is one of the first to crack.
- Zero backline threat. Enemies in pos 3–4 are unreachable.

### Key Synergies
- **+ Knight:** Guard absorbs damage that would kill the Berserker; the Berserker stays at low HP in the Blood Fury sweet spot.
- **+ Cleric:** Constant healing offsets self-damage; Absolution manages the stress the Berserker generates.
- **+ Cryomancer:** Freeze target → Berserker's physical hit triggers Shatter for massive burst. Speed debuffs let the Berserker act first.

---

## 3. Duelist

**Role:** Counter / Dodge DPS  
**Preferred Position:** 1–2  
**Damage Types:** Pierce, Bleed, Wind

### Passive — En Garde

After dodging an attack, gain +5% crit and +5 ACC until end of next action. Stacks up to 3 times (resets after attacking or being hit). Rewards positioning and Dodge investment.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 22 | 25 | 7 | 90 | 8% | 5–9 |

Stress Resist: Medium

### Abilities

#### 1. Precise Thrust
- **Positions:** 1–2 → Enemy 1–2
- **Type:** Pierce
- **Damage:** Medium (5–8)
- **Effects:** +5% crit bonus (inherent). Reliable bread-and-butter.
- **Cooldown:** —
- *A needle finding the gap between ribs.*

#### 2. Riposte
- **Positions:** 1–2 → Self
- **Type:** —
- **Damage:** —
- **Effects:** 3 rounds: when attacked (hit or miss), counter-attack with Pierce damage (medium, 4–7). Each riposte has 50% chance to apply bleed (2 dmg/round, 3 rounds). Riposte does not trigger on AoE attacks.
- **Cooldown:** —
- *Inviting the blow is the first half of the lesson. The second half draws blood.*

#### 3. Dueling Stance
- **Positions:** 1–2 → Self
- **Type:** —
- **Damage:** —
- **Effects:** +20 Dodge, +10% crit. Only effective against single-target attacks from enemy positions 1–2. 3 rounds. Self: −5 ACC (tunnel vision).
- **Cooldown:** 4
- *Every tell is a sentence; every opening, a paragraph the Duelist has already read.*

#### 4. Lunge
- **Positions:** 2–3 → Enemy 1–2
- **Type:** Pierce + Wind
- **Damage:** High (8–11)
- **Effects:** +10% crit bonus. Moves self forward 1 position. Wind-propelled: −5 Dodge debuff on target, 1 round (gale displaces their guard). Can be used from pos 3 to reach the front.
- **Cooldown:** —
- *Wind gathers at the Duelist's back and hurls them forward — a gust with a blade at its tip.*

#### 5. Feinting Retreat
- **Positions:** 1–2 → Enemy 1–2
- **Type:** Pierce + Wind
- **Damage:** Low (3–5)
- **Effects:** Moves self back 1 position. +15 Dodge for 1 round. Target: −5 ACC debuff, 1 round (wind gust in their face). Enables Lunge next turn.
- **Cooldown:** —
- *A trailing gust blinds the pursuer. The Duelist yields a step — and the enemy learns too late why.*

#### 6. Bleeding Flourish
- **Positions:** 1–2 → Enemy 1–3
- **Type:** Pierce
- **Damage:** Medium (5–7)
- **Effects:** 100% bleed (2 dmg/round, 3 rounds). Extended reach (can hit pos 3).
- **Cooldown:** —
- *A whip-crack slash that opens three wounds before the eye can follow one.*

#### 7. Heart Piercer
- **Positions:** 1 → Enemy 1
- **Type:** Pierce
- **Damage:** Very High (11–14)
- **Effects:** +15% crit. If target is Marked: guaranteed crit. Position-locked, single-target assassination.
- **Cooldown:** 3
- *All flourish is stripped away. One point. One death.*

### Intended Weaknesses
- Lowest HP in the frontline; a single crit or AoE can drop them.
- Riposte doesn't trigger on AoE — mass-attack enemies neutralize the Duelist's core mechanic.
- Stun completely shuts down Riposte and dodge-based defense.
- Dueling Stance is useless against ranged/backline attackers.
- Needs specific position cycling (retreat → lunge) to maximize damage, making them vulnerable to forced movement.

### Key Synergies
- **+ Knight:** Stalwart Guard lets the Duelist sit behind the Knight and Riposte safely; Knight absorbs what gets through.
- **+ Ranger:** Hunter's Mark → Heart Piercer = guaranteed crit for devastating single-target burst.
- **+ Cryomancer:** Flash Freeze → Duelist physical hit triggers Shatter bonus. Frozen enemies can't attack, giving the Duelist free En Garde stacking.

---

## 4. Ranger

**Role:** Ranged Physical DPS  
**Preferred Position:** 3–4  
**Damage Types:** Pierce, Poison, Wind

### Passive — Hunter's Focus

+10% damage against Marked targets. Attacks against Marked targets ignore 20% of the target's Dodge. The Ranger is the premier Mark exploiter.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 25 | 15 | 6 | 95 | 5% | 5–10 |

Stress Resist: Medium

### Abilities

#### 1. Aimed Shot
- **Positions:** 3–4 → Enemy any
- **Type:** Pierce
- **Damage:** Medium (6–9)
- **Effects:** Highest base ACC of any ability (+5 inherent ACC bonus). Can target any position.
- **Cooldown:** —
- *Breath held, world narrowed to a single point. The arrow knows.*

#### 2. Hunter's Mark
- **Positions:** 2–4 → Enemy any
- **Type:** —
- **Damage:** —
- **Effects:** Mark target for 3 rounds (+15% damage from all sources, target's Dodge reduced by 10). Costs action but enables team burst.
- **Cooldown:** —
- *The Ranger's eye finds the prey. The party's blades follow.*

#### 3. Poison Dart
- **Positions:** 3–4 → Enemy 3–4
- **Type:** Pierce
- **Damage:** Low (3–5)
- **Effects:** 100% poison (3 dmg/round, 3 rounds). Hits the backline.
- **Cooldown:** —
- *A small sting now. An agonizing death in three breaths.*

#### 4. Suppressing Fire
- **Positions:** 3–4 → Enemy 1–3
- **Type:** Pierce + Wind
- **Damage:** Low (3–4)
- **Effects:** −15 ACC debuff, −3 Speed debuff, 2 rounds. Pushes target back 1 position (wind-driven volley). Control over damage.
- **Cooldown:** —
- *Wind-carried arrows that pin the enemy back, step by staggering step.*

#### 5. Snipe
- **Positions:** 4 → Enemy 3–4
- **Type:** Pierce
- **Damage:** Very High (11–14)
- **Effects:** +10% crit. Position-locked to pos 4. Targets only backline. Backline-killing specialist.
- **Cooldown:** 3
- *At this distance, the healer never sees it coming.*

#### 6. Caltrops
- **Positions:** 2–3 → Ground zone (enemy pos 1–2)
- **Type:** —
- **Damage:** —
- **Effects:** 2 rounds: enemies currently in or moved into pos 1–2 suffer 80% bleed (2 dmg/round, 3 rounds). Also −3 Speed to affected enemies. Usable from mid-positions.
- **Cooldown:** 3
- *The floor becomes a second enemy.*

#### 7. Flare Shot
- **Positions:** 3–4 → Enemy any
- **Type:** Pierce + Wind
- **Damage:** Low (2–4)
- **Effects:** Removes Stealth from target (wind strips concealment). All allies gain +25 ACC vs target for 1 round. If target was Stealthed, deals +100% damage.
- **Cooldown:** —
- *A gale-driven flare that tears away every shadow and secret.*

### Intended Weaknesses
- Low HP, fragile. If pulled or pushed to front rank, nearly defenseless.
- Mark setup costs a full turn of damage.
- Snipe is position-locked and targets only backline — inflexible in some fights.
- No self-heal, no stress relief, no stun.
- Caltrops only affect pos 1–2, useless against ranged-heavy enemy comps.
- Moderate damage without Mark — needs team coordination to shine.

### Key Synergies
- **+ Duelist:** Mark → Heart Piercer guaranteed crit is devastating single-target burst.
- **+ Knight:** Knight holds the frontline so the Ranger operates from safety in pos 3–4.
- **+ Stormcaller:** Cyclone shuffles enemies; Gale Force pushes threats back. Both benefit from Ranger's Mark.

---

## 5. Rogue

**Role:** Stealth / Assassin  
**Preferred Position:** 2–4 (flexible)  
**Damage Types:** Pierce, Poison

### Passive — Shadow Strike

Attacks from Stealth deal +30% damage and gain +10% crit. After breaking Stealth with an attack, gain +3 Speed for 1 round (fade momentum). The Rogue's damage is mediocre without Stealth; with it, they're lethal.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 20 | 20 | 8 | 85 | 7% | 4–8 |

Stress Resist: Medium

### Abilities

#### 1. Backstab
- **Positions:** 1–2 → Enemy 1–2
- **Type:** Pierce
- **Damage:** Medium (5–8), High from Stealth (7–11)
- **Effects:** +5% crit inherent. Must be in melee range. Primary Stealth-break attack.
- **Cooldown:** —
- *The knife finds the kidney before the scream finds the throat.*

#### 2. Shadowstep
- **Positions:** 2–4 → Self
- **Type:** —
- **Damage:** —
- **Effects:** Enter Stealth. Move self to any position. Repositioning + Stealth setup in one action.
- **Cooldown:** 3
- *Where was the Rogue? Where is the Rogue? Neither question has a safe answer.*

#### 3. Poisoned Blade
- **Positions:** 1–3 → Enemy 1–2
- **Type:** Pierce
- **Damage:** Low (3–5)
- **Effects:** 100% poison (3 dmg/round, 3 rounds). Does not require Stealth. Flexible position range.
- **Cooldown:** —
- *The cut is shallow. The death is not.*

#### 4. Disembowel
- **Positions:** 1–2 → Enemy 1
- **Type:** Pierce
- **Damage:** Very High (10–14 from Stealth with Shadow Strike)
- **Effects:** Requires Stealth (breaks Stealth). +15% crit. The Rogue's highest-damage ability.
- **Cooldown:** —
- *They fold open like a letter no one wanted to read.*

#### 5. Smoke Bomb
- **Positions:** 2–4 → Self + adjacent ally positions
- **Type:** —
- **Damage:** —
- **Effects:** Self and allies in adjacent positions gain +15 Dodge, 2 rounds. All enemies: −10 ACC, 2 rounds. Defensive utility.
- **Cooldown:** 4
- *The world chokes on gray. Only the Rogue knows which way is forward.*

#### 6. Garrote
- **Positions:** 1–2 → Enemy 1
- **Type:** Pierce
- **Damage:** Medium (5–7)
- **Effects:** Requires Stealth (breaks Stealth). 100% stun (1 round). The Rogue's only stun — gated behind Stealth.
- **Cooldown:** —
- *A wire around the neck. A whisper in the ear: "Hush."*

#### 7. Dirty Tricks
- **Positions:** 2–3 → Enemy any
- **Type:** —
- **Damage:** Negligible (1–3)
- **Effects:** Shuffle target 1–2 positions randomly. −20 ACC debuff (2 rounds). 50% poison (2 dmg/round, 2 rounds). Disruption over damage.
- **Cooldown:** —
- *Sand in the eyes, a boot to the knee, and suddenly the enemy's plan is garbage.*

### Intended Weaknesses
- Lowest HP in the game. A single focused hit can kill.
- Stealth-dependent — without it, damage is mediocre and best tools (Disembowel, Garrote) are locked.
- Shadowstep cooldown means if the Rogue's Stealth is broken early, they're exposed for multiple rounds.
- No AoE whatsoever. Terrible against swarm encounters.
- Setup-intensive: Shadowstep → position → Stealth attack costs a full round before damage.

### Key Synergies
- **+ Stormcaller:** Cyclone shuffles enemies into reachable positions; Gale Force pushes priority targets to pos 1 for Disembowel.
- **+ Ranger:** Hunter's Mark amplifies the Rogue's Stealth burst. Flare Shot removes enemy Stealth that might counter the Rogue.
- **+ Cryomancer:** Frozen targets can't dodge Backstab/Disembowel. Speed debuffs ensure the Rogue acts first.

---

## 6. Pyromancer

**Role:** Elemental AoE Mage  
**Preferred Position:** 3–4  
**Damage Types:** Fire, Magic

### Passive — Pyromaniac

Enemies currently affected by a Burn DoT take +15% fire damage from all sources. If 3+ enemies are burning simultaneously, Pyromancer gains +5% crit on all abilities. Fire breeds fire.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 22 | 5 | 4 | 82 | 4% | 6–11 |

Stress Resist: Low

### Abilities

#### 1. Fireball
- **Positions:** 3–4 → Enemy 2–3 (AoE: hits both positions)
- **Type:** Fire
- **Damage:** Medium per target (5–7)
- **Effects:** 60% burn DoT (2 dmg/round, 3 rounds) per target. **Drawback:** 15% chance to hit ally in pos 2 for low fire damage (2–3) if Pyromancer is in pos 3 (proximity splash).
- **Cooldown:** —
- *A sphere of hungering flame that doesn't ask permission.*

#### 2. Immolate
- **Positions:** 3–4 → Enemy 1–2
- **Type:** Fire
- **Damage:** High (8–12)
- **Effects:** 80% burn DoT (3 dmg/round, 3 rounds). Single-target nuke.
- **Cooldown:** 3
- *The target becomes a torch. The Pyromancer watches with professional interest.*

#### 3. Wall of Flame
- **Positions:** 3–4 → Ground zone (enemy pos 1–2)
- **Type:** Fire
- **Damage:** Low initial (2–3)
- **Effects:** Creates burning zone for 2 rounds: enemies in pos 1–2 take 3 fire dmg/round. Enemies pushed into the zone take immediate 4 damage. Area denial.
- **Cooldown:** 3
- *A curtain of fire drawn across the vanguard. Cross at your peril.*

#### 4. Backdraft
- **Positions:** 3–4 → All enemies
- **Type:** Fire
- **Damage:** Low (3–5 per target)
- **Effects:** 40% burn DoT (2 dmg/round, 2 rounds) per target. Full party AoE. **Drawback:** +8 stress to all allies (walls of flame are psychologically unpleasant).
- **Cooldown:** 4
- *The room breathes in — then screams.*

#### 5. Cauterize
- **Positions:** 2–4 → Any ally
- **Type:** Fire
- **Damage:** —
- **Effects:** Heal 4–6 HP. Removes all Bleed effects from target. **Drawback:** Target takes 2 fire damage and +5 stress (burned wounds, sealed screaming). Net positive but painful.
- **Cooldown:** —
- *"Hold still. This will help. Eventually."*

#### 6. Infernal Focus
- **Positions:** 3–4 → Self
- **Type:** —
- **Damage:** —
- **Effects:** +30% fire damage, +10% crit on fire abilities. 3 rounds. **Drawback:** Self takes 3 fire damage at end of each round (burning from within). High risk/reward self-buff.
- **Cooldown:** 4
- *The fire inside and the fire outside become the same fire.*

#### 7. Detonate Corpse
- **Positions:** 3–4 → Any corpse
- **Type:** Fire
- **Damage:** Medium-High AoE (6–9 to enemies adjacent to corpse)
- **Effects:** 60% burn DoT (2 dmg/round, 2 rounds) to affected enemies. Corpse is consumed. Synergizes with any source of corpses.
- **Cooldown:** —
- *Dead flesh is just fuel in another form.*

### Intended Weaknesses
- Friendly fire risk — Fireball can burn allies, Backdraft stresses the party.
- Slow. Can't react to threats quickly.
- Self-damage via Infernal Focus and poor HP makes the Pyromancer fragile when buffed.
- No stun, no crowd control — pure damage class with no fallback.
- Useless from pos 1–2. Getting pulled forward is catastrophic.
- Below-average ACC — can miss at critical moments.

### Key Synergies
- **+ Necromancer:** Raise Dead creates corpses in useful positions → Detonate Corpse. Curse of Decay (poison) + fire = Alchemist's Reactive Compounds if Alchemist is present.
- **+ Stormcaller:** Gale Force pushes enemies into Wall of Flame. Lightning + Fire elemental interactions (TBD).
- **+ Alchemist:** Reactive Compounds passive triggers when poison + fire overlap. Pyromancer provides fire, Alchemist provides poison → bonus ticking damage.

---

## 7. Stormcaller

**Role:** Burst / Stun / Forced Movement Mage  
**Preferred Position:** 3–4  
**Damage Types:** Lightning, Wind

### Passive — Static Charge

Each Lightning ability used builds 1 Static Charge (max 3). At 3 charges, the next Lightning ability deals +50% damage and gains +20% stun chance. All 3 charges are consumed on discharge. Encourages rhythmic play: build → build → unleash.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 23 | 10 | 6 | 85 | 6% | 6–10 |

Stress Resist: Medium

### Abilities

#### 1. Lightning Bolt
- **Positions:** 3–4 → Enemy any
- **Type:** Lightning
- **Damage:** High (8–11)
- **Effects:** 30% stun (1 round). Builds 1 Static Charge. Reliable single-target.
- **Cooldown:** —
- *A white lance from nothing. The air splits. The target doesn't.*

#### 2. Chain Lightning
- **Positions:** 3–4 → Enemy any (chains to 1 adjacent enemy)
- **Type:** Lightning
- **Damage:** Medium to primary (6–8), Low to chain target (3–5)
- **Effects:** 20% stun on each target. Builds 1 Static Charge. Efficient multi-hit.
- **Cooldown:** —
- *The arc leaps and learns: flesh conducts better than air.*

#### 3. Gale Force
- **Positions:** 3–4 → Enemy 1–3
- **Type:** Wind
- **Damage:** Low (3–5)
- **Effects:** Pushes target back 2 positions. −5 Speed debuff, 2 rounds. Position disruption.
- **Cooldown:** —
- *A wall of wind that rearranges the battlefield to the Stormcaller's liking.*

#### 4. Tempest Shield
- **Positions:** 2–4 → Any ally
- **Type:** Wind
- **Damage:** —
- **Effects:** +20 Dodge, 2 rounds. When protected ally is attacked: 30% chance attacker is stunned (1 round, lightning feedback). Defensive utility with offensive upside.
- **Cooldown:** 3
- *Wind and lightning coil around the ward, daring the enemy to reach through.*

#### 5. Thunderclap
- **Positions:** 3–4 → Enemy 1–2 (AoE: hits both positions)
- **Type:** Lightning
- **Damage:** Medium per target (5–7)
- **Effects:** 50% stun per target (1 round). Builds 1 Static Charge. **Drawback:** Self: −10 ACC for 1 round (deafened by own thunder).
- **Cooldown:** —
- *Thunder compressed into a fist. Even the caster reels.*

#### 6. Cyclone
- **Positions:** 3–4 → All enemies
- **Type:** Wind
- **Damage:** Low (2–4 per target)
- **Effects:** Shuffles all enemy positions randomly. −5 Dodge debuff to all enemies, 1 round (disoriented). **Drawback:** Also shuffles all ally positions by 1 randomly (turbulence).
- **Cooldown:** 4
- *The battlefield becomes a coin toss. The Stormcaller always calls heads.*

#### 7. Ride the Lightning
- **Positions:** 2–4 → Enemy 1–2
- **Type:** Lightning
- **Damage:** Very High (11–14)
- **Effects:** Moves self to pos 1. 40% stun. Builds 1 Static Charge. **Drawback:** Stormcaller is now in pos 1 — a mage in melee range. Must be repositioned next turn or face destruction.
- **Cooldown:** 3
- *For one incandescent instant, the Stormcaller IS the lightning. Then — vulnerability.*

### Intended Weaknesses
- Static Charge requires setup — first 2 lightning casts are normal, only the 3rd pops off.
- Ride the Lightning is the highest-damage ability but dumps a squishy mage into pos 1.
- Cyclone disrupts ally positions too — can ruin carefully placed teammates.
- Thunderclap's self-ACC debuff means follow-up attacks can miss.
- Wind abilities deal negligible damage; the Stormcaller must choose between damage (lightning) and control (wind).
- No healing, no DoTs — purely burst and disruption.

### Key Synergies
- **+ Rogue:** Cyclone shuffles enemies; Gale Force pushes a priority target to pos 1 for Rogue's Disembowel/Garrote. Rogue's speed lets them capitalize immediately.
- **+ Cryomancer:** Speed debuffs stack. Lightning + Ice elemental combo (TBD). Flash Freeze + Static-Charged Lightning Bolt = massive burst on frozen target.
- **+ Knight:** After Ride the Lightning, Knight can Guard the Stormcaller in pos 1 until they reposition. Hold the Line covers the Stormcaller's retreat.

---

## 8. Cryomancer

**Role:** Control / Debuff Mage  
**Preferred Position:** 3–4  
**Damage Types:** Ice, Wind

### Passive — Bitter Cold

Enemies hit by any Ice ability suffer −3 Speed (stacks with other speed debuffs, stacks up to 2 times from this passive). Enemies who are Frozen (stunned by an Ice ability) take +50% damage from the next Physical attack that hits them (Shatter). Shatter consumes the Freeze.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 24 | 8 | 3 | 83 | 3% | 5–9 |

Stress Resist: Medium

### Abilities

#### 1. Frost Bolt
- **Positions:** 3–4 → Enemy any
- **Type:** Ice
- **Damage:** Medium (5–8)
- **Effects:** Triggers Bitter Cold (−3 Speed). Reliable workhorse.
- **Cooldown:** —
- *Cold that seeps past armor, past skin, into the marrow.*

#### 2. Flash Freeze
- **Positions:** 3–4 → Enemy any
- **Type:** Ice
- **Damage:** Low (3–5)
- **Effects:** 60% Freeze on primary target (stun, 1 round). 30% Freeze on one adjacent enemy. Triggers Bitter Cold. The Shatter setup.
- **Cooldown:** 3
- *Ice locks joints, seals eyelids, stops hearts — for one merciful moment.*

#### 3. Blizzard
- **Positions:** 4 → All enemies
- **Type:** Ice
- **Damage:** Low (3–4 per target)
- **Effects:** −5 Speed debuff to all enemies, 2 rounds. −10 ACC debuff to all enemies, 2 rounds. Triggers Bitter Cold. **Drawback:** +6 stress to all allies (biting cold is indiscriminate). Position-locked to 4.
- **Cooldown:** 4
- *The dungeon becomes a grave of white. Friend and foe alike suffer.*

#### 4. Ice Wall
- **Positions:** 3–4 → Ground zone (any position 1–3)
- **Type:** Ice
- **Damage:** —
- **Effects:** Creates ice barrier in target position. Absorbs 15 damage before breaking. Duration 3 rounds if not broken. Blocks all movement through that position (enemies AND allies). Area denial and protection.
- **Cooldown:** 4
- *A glacial slab erupts from the stone floor. Nothing passes.*

#### 5. Glacial Spike
- **Positions:** 3–4 → Enemy 1–2
- **Type:** Ice
- **Damage:** High (8–11)
- **Effects:** If target is Frozen: triggers Shatter (+50% physical damage equivalent bonus, sourced as Ice). +5% crit. The Cryomancer's own Shatter trigger.
- **Cooldown:** —
- *The ice entombing them becomes shrapnel. From within.*

#### 6. Frostbite
- **Positions:** 3–4 → Enemy any
- **Type:** Ice
- **Damage:** Low (2–4)
- **Effects:** 100% −5 Speed debuff, 3 rounds. 80% −15 Dodge debuff, 3 rounds. Triggers Bitter Cold. Debuff specialist ability.
- **Cooldown:** —
- *Fingers blacken. Reactions slow. The prey is already frozen in all the ways that matter.*

#### 7. Howling Wind
- **Positions:** 3–4 → Enemy 1–3
- **Type:** Wind
- **Damage:** Medium (5–7)
- **Effects:** Pushes target back 1 position. 40% −10 ACC debuff, 2 rounds. Wind option for when Ice isn't needed.
- **Cooldown:** —
- *The gale screams down the corridor, hurling bodies against stone.*

### Intended Weaknesses
- Extremely slow — by the time the Cryomancer acts, enemies may have already struck.
- Poor burst damage alone; needs physical allies to exploit Shatter.
- Blizzard causes party stress.
- Ice Wall blocks allies too — misplacement can trap your own frontline.
- No healing, no stress relief. Pure control.
- Low crit, low base damage. If enemies resist Freeze, the Cryomancer's value plummets.

### Key Synergies
- **+ Berserker:** Flash Freeze → Berserker's Reckless Cleave/Gut Rend triggers Shatter for enormous physical burst. Blood Fury amplifies it further.
- **+ Duelist:** Freeze → Duelist physical hit triggers Shatter. Frozen enemies can't attack, letting the Duelist stack En Garde dodges risk-free.
- **+ Stormcaller:** Speed debuffs from both classes stack, making enemies act last. Wind movement combos (Howling Wind + Gale Force). Lightning + Ice elemental combo (TBD).

---

## 9. Alchemist

**Role:** Support / DoT Hybrid  
**Preferred Position:** 2–3  
**Damage Types:** Poison, Fire, Ice

### Passive — Reactive Compounds

When an enemy is simultaneously affected by Poison and Burn DoTs (from any source), they take 2 bonus damage per round (chemical reaction). When affected by both Poison and any Ice effect, poison duration extends by 1 round. The Alchemist's passive rewards multi-element team compositions.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 26 | 10 | 5 | 82 | 3% | 4–8 |

Stress Resist: Medium

### Abilities

#### 1. Healing Draught
- **Positions:** 2–3 → Any ally
- **Type:** —
- **Damage:** —
- **Effects:** Heal 5–8 HP. Removes Poison and Bleed from target. Workhorse heal with cleanse.
- **Cooldown:** —
- *Tastes like copper and regret, but the bleeding stops.*

#### 2. Toxic Cloud
- **Positions:** 2–3 → Enemy 2–3 (AoE: hits both positions)
- **Type:** Poison
- **Damage:** Low (2–4 per target)
- **Effects:** 80% poison (3 dmg/round, 3 rounds) per target. Mid-rank AoE DoT.
- **Cooldown:** —
- *A green mist that clings to lungs and corrodes from the inside.*

#### 3. Incendiary Flask
- **Positions:** 2–3 → Enemy 1–2
- **Type:** Fire
- **Damage:** Medium (5–7)
- **Effects:** 60% burn DoT (2 dmg/round, 2 rounds). Creates fire puddle: enemies in target position take 1 fire dmg/round for 2 rounds. Enables Reactive Compounds with own Toxic Cloud.
- **Cooldown:** —
- *Glass shatters. Flame blooms. Chemistry is the cruelest teacher.*

#### 4. Fortifying Elixir
- **Positions:** 2–3 → Any ally
- **Type:** —
- **Damage:** —
- **Effects:** +15% PROT, +10 stress resist, 3 rounds. Defensive support option.
- **Cooldown:** —
- *Muscles harden. Fear recedes. The elixir's grip is temporary, but so is everything.*

#### 5. Acid Splash
- **Positions:** 2–3 → Enemy 1–3
- **Type:** Poison + Ice
- **Damage:** Medium (5–7)
- **Effects:** −15% PROT debuff, 3 rounds. −3 Speed debuff, 2 rounds (freezing corrosive). Armor shredding + slow for team follow-up.
- **Cooldown:** —
- *Cryogenic acid — it freezes as it dissolves. The target slows, then crumbles.*

#### 6. Volatile Mixture
- **Positions:** 2–3 → Enemy any
- **Type:** Fire + Poison
- **Damage:** High (7–10)
- **Effects:** 60% poison (2 dmg/round, 2 rounds). 40% burn (2 dmg/round, 2 rounds). **Drawback:** 15% chance to splash ally adjacent to target for low fire damage (2–3). Unreliable but powerful.
- **Cooldown:** 3
- *Equal parts genius and recklessness. The Alchemist calls it "progress."*

#### 7. Stimulant Injection
- **Positions:** 2–3 → Any ally
- **Type:** —
- **Damage:** —
- **Effects:** +3 Speed, +10 ACC, +10% damage, 2 rounds. **Drawback:** Target gains +5 stress (chemical jitters). Target takes 1 damage at end of each buffed round (metabolic cost).
- **Cooldown:** 4
- *The body surges. The mind screams. For two rounds, the soldier becomes something more — and less.*

### Intended Weaknesses
- Low direct damage — relies on DoTs, which take time and don't work on DoT-immune enemies.
- Mid-position (2–3) makes the Alchemist vulnerable to both front and back attacks.
- Healing is weaker than the Cleric's and has no stress component.
- No stun, no dodge buff. Limited defensive reactions to threats.
- Volatile Mixture can friendly-fire.
- Stimulant Injection causes stress and damage to the buffed ally.

### Key Synergies
- **+ Pyromancer:** Both apply Burn; Alchemist's poison triggers Reactive Compounds for bonus ticking damage. Double fire also feeds Pyromaniac passive.
- **+ Necromancer:** Curse of Decay (poison) + Alchemist's fire abilities = Reactive Compounds. Healing Draught offsets Necromancer's stress-inducing gameplay.
- **+ Berserker:** Stimulant Injection + Frenzy on a low-HP Berserker = absurd damage output (at the cost of the Berserker's sanity and survival).

---

## 10. Cleric

**Role:** Healer / Support  
**Preferred Position:** 3–4  
**Damage Types:** Blunt, Magic, Fire, Lightning

### Passive — Divine Resolve

All healing abilities also reduce target's stress by 3 (built-in). At the start of each round, if any ally is at Death's Door, Cleric gains +20% healing power until end of round (triage instinct).

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 28 | 5 | 3 | 80 | 2% | 4–7 |

Stress Resist: High

### Abilities

#### 1. Healing Light
- **Positions:** 3–4 → Any ally
- **Type:** —
- **Damage:** —
- **Effects:** Heal 6–10 HP. (Also −3 stress via Divine Resolve.) Core single-target heal.
- **Cooldown:** —
- *Warm light finds the wound and makes it remember what wholeness felt like.*

#### 2. Sanctuary
- **Positions:** 3–4 → All allies
- **Type:** —
- **Damage:** —
- **Effects:** Heal 2–4 HP each. (Also −3 stress each via Divine Resolve.) Party-wide sustain.
- **Cooldown:** 3
- *A hymn without words, heard in the bones. The bleeding slows. The shaking stops.*

#### 3. Holy Smite
- **Positions:** 3–4 → Enemy 1–2
- **Type:** Magic + Blunt + Fire
- **Damage:** Medium (5–8)
- **Effects:** +25% damage vs Undead enemy type. 30% burn DoT (2 dmg/round, 2 rounds). Sacred flame.
- **Cooldown:** —
- *Holy fire descends. The divine has no patience for the unburied.*

#### 4. Radiant Ward
- **Positions:** 3–4 → Any ally
- **Type:** —
- **Damage:** —
- **Effects:** +20 Dodge, +15% PROT, 2 rounds. Strong single-target defensive buff.
- **Cooldown:** 3
- *A nimbus of sacred light clings to the warded, turning blade and bolt aside.*

#### 5. Absolution
- **Positions:** 3–4 → Any ally
- **Type:** —
- **Damage:** —
- **Effects:** Stress heal 15–25. The best single-target stress heal in the game.
- **Cooldown:** 4
- *Guilt, grief, terror — the Cleric names them, and in the naming, diminishes them.*

#### 6. Judgment
- **Positions:** 3–4 → Enemy any
- **Type:** Magic + Lightning
- **Damage:** Low-Medium (4–7)
- **Effects:** If target is Marked: heal lowest-HP ally for 50% of damage dealt, and 20% stun (divine retribution). Turns offense into healing and control when conditions are met.
- **Cooldown:** —
- *Lightning falls where the Cleric points. The enemy's pain becomes another's salve.*

#### 7. Consecrated Ground
- **Positions:** 3–4 → Ground zone (ally pos 1–2)
- **Type:** —
- **Damage:** —
- **Effects:** 3 rounds: allies in pos 1–2 heal 3 HP/round and gain +10 stress resist. Zone-based frontline sustain.
- **Cooldown:** 4
- *The stones glow faintly. Those who stand upon them remember why they fight.*

### Intended Weaknesses
- Very slow — by the time the Cleric acts, allies may already be dead.
- Lowest damage output of any class. Cannot meaningfully contribute to kill pressure.
- Useless if pushed to front positions (no abilities work from pos 1–2 except... nothing).
- No offensive debuffs. No stun. Cannot prevent incoming damage, only react to it.
- Single-target healing forces triage: saving one ally means watching another suffer.
- Burst damage encounters overwhelm the Cleric — they can't heal fast enough if the party takes massive simultaneous hits.

### Key Synergies
- **+ Knight:** Consecrated Ground on pos 1–2 + Knight's Hold the Line = an immovable frontline. Healing Light keeps the tank alive indefinitely.
- **+ Berserker:** Healing Light offsets Berserker's self-damage. Absolution manages the stress from Howl of Madness and Defy Death. Enables Blood Fury's low-HP sweet spot safely.
- **+ Ranger:** Judgment + Hunter's Mark = offensive healing. Ranger marks, Cleric hits the mark for damage + heals lowest ally — efficient dual-purpose turns.

---

## 11. Necromancer

**Role:** Summoner / Debuffer / Corpse Manipulator  
**Preferred Position:** 2–3  
**Damage Types:** Magic, Poison, Ice

### Passive — Death's Tithe

Whenever an enemy dies (from any source), Necromancer gains +10% damage for 2 rounds (stacks up to 3 times, +30% max). **Drawback:** Dark Aura — allies in positions adjacent to the Necromancer gain +5 stress per round. (Necromancer in pos 2 = allies in pos 1 and 3 stressed. Necromancer in pos 3 = allies in pos 2 and 4 stressed.) Forces the party to consider positioning cost.

### Base Stats (Level 1)

| HP | Dodge | Speed | Accuracy | Crit | Damage |
|----|-------|-------|----------|------|--------|
| 20 | 10 | 5 | 85 | 4% | 5–10 |

Stress Resist: High (the Necromancer is comfortable with darkness)

### Abilities

#### 1. Raise Dead
- **Positions:** 2–3 → Any corpse
- **Type:** Magic
- **Damage:** —
- **Effects:** Summons a Skeleton Thrall in the corpse's position (10 HP, 4–6 Slash damage, 75 ACC, Speed 4, Dodge 0). The Thrall occupies a party/enemy position as appropriate. **Drawback:** +8 stress to all allies (watching the dead rise is upsetting). Thrall persists until killed or end of combat.
- **Cooldown:** 4
- *Bones reassemble. Tendons tighten. The dead answer a call they cannot refuse.*

#### 2. Drain Life
- **Positions:** 2–3 → Enemy 1–3
- **Type:** Magic + Ice
- **Damage:** Medium (5–8)
- **Effects:** Heals Necromancer for 50% of damage dealt. −3 Speed debuff, 2 rounds (life-chilling touch). Self-sustain.
- **Cooldown:** —
- *Warmth flows one way. The enemy grays and stiffens. The Necromancer blooms.*

#### 3. Curse of Decay
- **Positions:** 2–3 → Enemy any
- **Type:** Magic
- **Damage:** —
- **Effects:** 100% poison (4 dmg/round, 3 rounds). −10 stress resist debuff on target, 3 rounds. Potent DoT + debuff setup.
- **Cooldown:** —
- *The flesh knows what the curse promises. It begins to obey.*

#### 4. Corpse Explosion
- **Positions:** 2–3 → Any corpse
- **Type:** Magic + Poison
- **Damage:** Medium AoE (5–8) to enemies adjacent to corpse
- **Effects:** 60% poison (2 dmg/round, 2 rounds) to affected. Corpse consumed. Punishes enemies for standing near their dead.
- **Cooldown:** —
- *A wet detonation. The dead have one last gift.*

#### 5. Dark Pact
- **Positions:** 2–3 → Self
- **Type:** —
- **Damage:** —
- **Effects:** Sacrifice 20% max HP. Gain +40% damage and +10% crit, 2 rounds. **Drawback:** The HP cost is significant on the Necromancer's already-low HP pool.
- **Cooldown:** 4
- *Power has a price. The Necromancer pays in the only currency the void accepts.*

#### 6. Bone Armor
- **Positions:** 2–3 → Self or any ally
- **Type:** —
- **Damage:** —
- **Effects:** Requires a corpse (consumed). Grants target +25% PROT, 3 rounds. Defensive utility from corpses.
- **Cooldown:** —
- *Ribs and vertebrae slot together like puzzle pieces around the living. Protection from the dead.*

#### 7. Eldritch Grasp
- **Positions:** 2–3 → Enemy 3–4
- **Type:** Magic + Ice
- **Damage:** Medium (5–8)
- **Effects:** Pulls target forward 2 positions. 40% −10 ACC debuff, 2 rounds. 30% Freeze (stun, 1 round) — the spectral cold may lock the target in place after the pull. Drags backline enemies into melee range.
- **Cooldown:** —
- *Frost-rimed hands seize the lurker in the shadows and drag it, rigid and screaming, to the front.*

### Intended Weaknesses
- Dark Aura stresses adjacent allies every round — the Necromancer's mere presence is a cost.
- Lowest HP tied with Rogue. Extremely fragile.
- Corpse-dependent: Raise Dead, Corpse Explosion, and Bone Armor require corpses. In fights with few enemies or enemies that don't leave corpses, half the kit is dead.
- No party healing. No stress relief for allies.
- Dark Pact's self-damage on 20 HP is suicidal without a healer.
- Raise Dead stresses the entire party — repeated summoning can cause affliction spirals.

### Key Synergies
- **+ Pyromancer:** Corpse Explosion + Detonate Corpse = two classes fighting over corpses in the best way. Curse of Decay (poison) + Pyromancer's fire = Alchemist's Reactive Compounds if all three are present.
- **+ Cryomancer:** Eldritch Grasp pulls enemy to front → Flash Freeze → physical ally Shatters. Speed debuffs ensure the pulled enemy acts last.
- **+ Alchemist:** Healing Draught offsets Dark Pact self-damage. Alchemist's stress tools don't prevent but help manage the stress from Dark Aura. Poison stacking (Curse of Decay + Toxic Cloud) is devastating.

---

## Cross-Class Interaction Summary

### Mark Chain
**Ranger** (Hunter's Mark) → **Duelist** (Heart Piercer guaranteed crit) / **Cleric** (Judgment offensive heal) / **Any DPS** (+15% damage)

### Shatter Chain
**Cryomancer** (Flash Freeze) → **Berserker** / **Duelist** / **Knight** (physical hit = +50% Shatter bonus)

### Reactive Compounds Chain
**Alchemist** (passive) + **Pyromancer** (fire) + **Necromancer** or **Alchemist** (poison) = bonus ticking damage on doubly-afflicted enemies

### Corpse Economy
**Necromancer** (Raise Dead, Corpse Explosion, Bone Armor) competes/cooperates with **Pyromancer** (Detonate Corpse) for corpse usage

### Stress Economy
**Berserker** (Howl, Defy Death), **Pyromancer** (Backdraft, Cauterize), **Stormcaller** (Cyclone), **Cryomancer** (Blizzard), **Necromancer** (Raise Dead, Dark Aura), **Alchemist** (Stimulant) all generate stress.  
Only **Cleric** (Absolution, Divine Resolve passive) and **Knight** (Rallying Cry) can relieve it.  
Teams with multiple stress-generators MUST include at least one stress healer or risk affliction cascades.

### Position Disruption
**Stormcaller** (Gale Force, Cyclone, Ride the Lightning) and **Necromancer** (Eldritch Grasp) rearrange the battlefield.  
**Rogue** and **Duelist** capitalize on repositioned enemies.  
**Cryomancer** (Howling Wind) and **Ranger** (Caltrops) zone enemies into unfavorable positions.

---

## Build Tension Examples

These illustrate why the 4-of-7 equip limit creates genuine choices:

**Knight:** Hold the Line + Stalwart Guard both compete for the "tanking" slot — one is self-taunt, the other is redirecting for an ally. Rallying Cry is the only stress heal but costs an attack action. Oath of Sacrifice gives emergency healing but at severe self-cost. Do you build defensive or semi-offensive?

**Berserker:** Frenzy + Gut Rend is maximum damage but requires pos 1 and no defense. Savage Rush is the only ability usable from pos 2–3 but competes with Howl of Madness for non-damage slots. Defy Death is the only self-sustain but adds massive stress. Pure offense or survival insurance?

**Rogue:** Shadowstep + Disembowel is the assassination combo but requires two ability slots for one burst pattern. Smoke Bomb is the only defensive option but the Rogue may not have room for it alongside Garrote (stun), Poisoned Blade (sustained damage), and the core Stealth kit. Burst assassin or utility infiltrator?

**Necromancer:** Raise Dead + Corpse Explosion both want corpses but serve different purposes (board presence vs burst damage). Bone Armor provides rare defensive utility. Dark Pact enables burst but demands a healer. Summoner build, burst build, or control build?

---

## Element Coverage Matrix

| Element | Specialist | Secondary Users |
|---------|-----------|----------------|
| Fire | Pyromancer | Berserker, Alchemist, Cleric |
| Ice | Cryomancer | Knight, Alchemist, Necromancer |
| Lightning | Stormcaller | Cleric |
| Wind | Stormcaller, Cryomancer | Duelist, Ranger |

**No elements:** Rogue (pure mundane skill).

This distribution means:
- Every party of 4 can access at least 2 elements without taking a dedicated mage.
- Fire and Ice have the broadest coverage, making their elemental interactions the most frequently triggered.
- Lightning is rare and concentrated, keeping the Stormcaller's identity sharp while the Cleric provides a secondary source for party flexibility.
- Wind is spread across hybrid classes, making wind interactions common utility rather than nuke potential.
