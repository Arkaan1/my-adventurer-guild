# Afflictions & Virtues — Resolve System Design

## Resolve Check

When a hero reaches **100 stress**, a resolve check occurs:

- **75% → Affliction** (negative)
- **25% → Virtue** (positive)

**Affliction type weighting:**

| Arcane Swelling | Mundane Weight | Arcane Weight |
|---|---|---|
| 0–25 | 90% | 10% |
| 26–50 | 75% | 25% |
| 51–75 | 50% | 50% |
| 76–100 | 25% | 75% |
| The Arcane Maw | 10% | 90% |

Dungeons tagged with "strong magical presence" shift one tier toward Arcane.

At **200 stress** → **Heart Attack** (Death's Door or instant death).

Afflictions/virtues persist until stress drops below **50** or the mission ends.

---

# MUNDANE AFFLICTIONS

---

## 1. Craven

**Category:** Mundane

**Flavor:** *Their nerve has shattered — every shadow hides a killing blow, every sound a death knell.*

**Stat Modifiers:**
- DMG: −15%
- ACC: −10
- SPD: −5

**Stress Radiation:** 3 stress to each ally per turn (whimpering, flinching, muttered prayers).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Refuse to act | 25% | Cowers in place, passes turn. |
| Scramble backward | 20% | Moves to rearmost available position. |
| Flinch from melee | 15% | Refuses to use melee-range abilities this turn, even if in front position. |
| Beg for retreat | 10% | Initiates a retreat check, costing the party the retreat penalty even if overridden. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Refuse room entry | Balks at entering the next room, requiring an extra action to proceed. |
| Drop supplies | Panic-drops 1 random supply item. |
| Refuse scouting | Cannot be sent ahead; will not interact with curios voluntarily. |

### Barks

- *"We shouldn't be here. We should never have come."*
- *"Something moved — did you see it? DID YOU SEE IT?"*
- *"I can't. I can't. Don't make me."*
- *"Just leave me. Save yourselves."*
- *"My hands won't stop shaking..."*

---

## 2. Wrathful

**Category:** Mundane

**Flavor:** *Reason has drowned in red fury — there is only the enemy, and everything is the enemy.*

**Stat Modifiers:**
- DMG: +20%
- CRIT: +5%
- ACC: −15
- Dodge: −10

**Stress Radiation:** 4 stress to each ally per action taken (roaring, threatening, wild swings too close for comfort).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Attack random enemy | 25% | Ignores player target selection, strikes any enemy. |
| Attack ally | 12% | Lashes out at the nearest party member for reduced damage. |
| Charge forward | 20% | Moves to position 1, regardless of party formation. |
| Refuse support | 18% | Will not use healing, buff, or defensive abilities — only attacks. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Smash curios | Destroys interactive objects instead of using them properly, forfeiting rewards and possibly triggering traps. |
| Force march | Kicks open the next door, preventing scouting and potentially triggering ambushes. |

### Barks

- *"I'LL KILL EVERY LAST ONE OF THEM!"*
- *"Get out of my way or join them on the ground!"*
- *"Blood. More blood. It's not ENOUGH."*
- *"Don't touch me. DON'T TOUCH ME."*
- *"Weakness disgusts me. Stand up or lie down forever."*

---

## 3. Despairing

**Category:** Mundane

**Flavor:** *Hope has left them entirely — they move through the dark waiting for the end, welcoming it.*

**Stat Modifiers:**
- DMG: −20%
- Dodge: −10
- SPD: −5

**Stress Radiation:** 5 stress to each ally per turn (the heaviest radiator — despair is deeply contagious). Allies hear quiet sobbing, nihilistic whispers.

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Pass turn | 30% | Stares blankly ahead, does nothing. |
| Refuse healing | 25% | Rejects all incoming heals and stress relief from allies. |
| Self-harm | 10% | Deliberately drops guard, taking 10% max HP self-damage and moving to a worse position. |
| Deathseeking | 8% | If on Death's Door, refuses to retreat or be guarded. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Refuse supplies | Will not eat food or use camping skills on themselves. |
| Sit down | Refuses to move forward; party must spend an extra action to continue. |
| Extinguish light | Snuffs torch or light source, increasing ambush chance for the next room. |

### Barks

- *"What does it matter? We die here or we die there."*
- *"Don't waste the bandage. Save it for someone who cares."*
- *"I can hear the dirt falling on my coffin already."*
- *"There is no dawn after this dark."*
- *"Let it end. Please, just let it end."*

---

## 4. Paranoid

**Category:** Mundane

**Flavor:** *Everyone is suspect — allies are saboteurs, healers are poisoners, and every kindness hides a knife.*

**Stat Modifiers:**
- SPD: +5 (hypervigilant)
- Dodge: +5 (jumping at everything)
- ACC: −10 (distracted by "threats" everywhere)

**Stress Radiation:** 3 stress to each ally per accusation (triggered by actions, not passively — roughly 1–2 accusations per round).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Refuse ally buff/heal | 35% | Rejects any beneficial effect from party members ("Don't touch me — I know what you're doing"). |
| Attack suspected ally | 12% | Strikes an ally they've decided is a traitor, dealing reduced damage. |
| Guard self | 20% | Takes a defensive stance instead of acting, trusting no one to protect them. |
| Break formation | 18% | Moves away from adjacent allies to an isolated position. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Hoard supplies | Takes an extra supply item "for safety," removing it from the shared pool. |
| Refuse shared food | Will not eat communal rations; must be given a separate supply or goes hungry. |
| Accuse at camp | During camping, stresses a random ally by 8–12 with accusations. |

### Barks

- *"I saw you whispering. What are you planning?"*
- *"That 'potion' — you mixed it yourself, didn't you?"*
- *"Stay where I can see your hands. All of you."*
- *"One of you led us into this trap. I'll find out who."*
- *"Trust is a leash. I've slipped mine."*

---

## 5. Unhinged

**Category:** Mundane

**Flavor:** *The mind has cracked open and something feral pours through — logic, self, and sense are gone.*

**Stat Modifiers:**
- ACC: −10
- SPD: −5
- Dodge: −5

**Stress Radiation:** 4 stress to each ally per turn (gibbering, laughing at nothing, sudden screaming).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Random ability, random target | 30% | Uses a random available ability on a random valid target (ally or enemy). |
| Move to random position | 20% | Shuffles to a random party position, disrupting formation. |
| Laugh/scream (waste turn) | 15% | Does nothing but emit a disturbing outburst, adding +2 bonus stress to the party. |
| Attack ally or enemy at random | 15% | Basic attack against any entity on the field. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Compulsive curio use | Interacts with every curio encountered without player input, using no provisioning items. |
| Wander ahead | Moves ahead of the party, potentially triggering traps or ambushes. |
| Drop items | Randomly discards an inventory item. |

### Barks

- *"The walls are laughing! Can't you hear them laughing?"*
- *"I know the answer — the answer is TEETH."*
- *"Which one of you is me? I forgot."*
- *"Shhhh, the floor is listening."*
- *"HA! Do it again! Hit me again! It tickles!"*

---

## 6. Cruel

**Category:** Mundane

**Flavor:** *Pain has become currency, and they intend to spend it — on enemy and ally alike.*

**Stat Modifiers:**
- DMG: +10%
- CRIT: +5%
- SPD: −5

**Stress Radiation:** 5 stress to a targeted ally per action (direct mockery, not ambient — the cruelest affliction socially). One ally is chosen as the primary target for verbal abuse each round.

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Mock an ally | 25% | Targets the lowest-HP or most-stressed ally with verbal abuse: 6–10 direct stress damage to that hero. |
| Attack weakest ally | 12% | Strikes the party member with the lowest current HP for reduced damage. |
| Target weakest enemy | 20% | Ignores player target, attacks the lowest-HP enemy (kill-stealing, ignoring priority targets). |
| Refuse support | 18% | Will not use healing, guarding, or buffing abilities on allies. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Waste supplies | Uses a supply item wastefully (eats extra food, dumps medicine). |
| Sabotage camp | During camping, reduces the effectiveness of one ally's camping skill. |
| Loot hoarding | Takes the best item from a reward before the player can distribute. |

### Barks

- *"Look at you, trembling. Pathetic."*
- *"If you can't take the pain, at least be useful as a shield."*
- *"I wonder — does your blood look different on the inside?"*
- *"Stop crying. It only makes me want to hit you harder."*
- *"The weak get eaten. That's the only truth down here."*

---

# ARCANE AFFLICTIONS

---

## 7. Arcane-Touched

**Category:** Arcane

**Flavor:** *Raw magic bleeds from their skin like heat from a forge — uncontrolled, aimless, and scalding.*

**Stat Modifiers:**
- Dodge: −10 (glowing with visible arcane energy — a beacon)
- ACC: −5
- Magic DMG dealt: +15%

**Stress Radiation:** 3 stress to each ally per turn (crackling energy, unpredictable discharges, the smell of ozone and burnt air).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Arcane discharge | 25% | Emits a random elemental AoE pulse — deals minor elemental damage (Fire/Ice/Lightning, randomly selected) to all adjacent allies and/or self. |
| Ability splash | 20% | Used ability gains random elemental splash, hitting an unintended target for partial damage. |
| Magical feedback | 15% | After using an ability, takes 5–10% max HP self-damage from arcane recoil. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Trigger magical curios | Arcane energy reacts with magical objects in the environment, auto-activating them (positive or negative). |
| Raise swelling | Each room explored increases Arcane Swelling by +3 extra (the hero's leaking magic feeds the dungeon). |

### Barks

- *"It's inside me — crawling under my skin, looking for a way out."*
- *"I can taste the lightning on my tongue."*
- *"Stay back! I can't control it — I can't—"*
- *"The magic doesn't care who it burns."*
- *"My blood is singing. It won't stop singing."*

---

## 8. Void-Stricken

**Category:** Arcane

**Flavor:** *They glimpsed what lies between the stars — a nothing so vast it swallowed part of their mind and kept it.*

**Stat Modifiers:**
- SPD: −10 (disconnected from the flow of time)
- ACC: −5
- Stress Resist: +15 (they've seen the worst; mundane horror barely registers)

**Stress Radiation:** 4 stress to each ally per turn (thousand-yard stare, muttering coordinates to nowhere, weeping without sound).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Blank out | 30% | Loses their turn entirely — eyes go white, body goes rigid, they simply aren't present. |
| Resist repositioning | 20% | Cannot be moved by allies (pull, push, swap) — their body anchors to its position as if nailed to the void. |
| Void whisper | 15% | Mutters void-speech — 4 bonus stress to the party, but has a 30% sub-chance of revealing an enemy's weakness (debuff). |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Stand still | Freezes in place in a corridor, requiring the party to wait or drag them forward. |
| Void murmur | Whispers alien geometry — party stress +5, but 20% chance of revealing secret rooms. |

### Barks

- *"There's a door in the dark. It's always been open."*
- *"I counted the spaces between stars. There are none."*
- *"Can you hear the silence screaming?"*
- *"I'm still falling. I never stopped falling."*
- *"...it looked back."*

---

## 9. Elemental Hysteria

**Category:** Arcane

**Flavor:** *The elements churn inside them like a storm trapped in a bottle — every spell is a coin flip, every strike a surprise.*

**Stat Modifiers:**
- ACC: −10 (channeling is erratic)
- Elemental DMG: +10% (the chaos amplifies raw output)
- Dodge: −5

**Stress Radiation:** 3 stress to each ally per turn (sparking, frosting, smoldering — allies never know what's coming).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Damage type swap | 35% | Ability's damage type is randomly reassigned (Slash might become Fire, Pierce might become Ice). Can be beneficial or disastrous depending on enemy resistances. |
| Elemental misfire | 20% | Ability targets an unintended adjacent target due to wild elemental arcing. |
| Self-burn | 12% | Elemental feedback — takes minor self-damage of a random element. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Elemental trap trigger | Proximity to environmental traps triggers them at increased range. |
| Spark allies | Random party member takes trivial elemental damage (1–3 HP) between rooms. |

### Barks

- *"Fire — no, ice — no, BOTH — GET DOWN!"*
- *"I'm a storm with no eye. There's no calm in me."*
- *"My hands are burning and freezing at the same time!"*
- *"The elements don't obey me anymore. They're fighting for control."*
- *"Every heartbeat is a different element. I can feel them warring."*

---

## 10. Mana-Drunk

**Category:** Arcane

**Flavor:** *The magic tastes like nothing they've ever known — sweet, electric, divine — and they will drink every last drop, consequences be damned.*

**Stat Modifiers:**
- DMG: +10%
- SPD: +5 (wired, frantic)
- Dodge: −10 (reckless, not bothering to evade)

**Special:** Cannot Pass or Guard. Ever. The compulsion overrides defensive choices.

**Stress Radiation:** 3 stress to each ally per action (manic energy, reckless casting, laughing while burning through resources).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Highest-cost ability | 30% | Uses their most powerful/expensive ability regardless of tactical situation or target appropriateness. |
| Wrong target | 25% | Uses an ability on a suboptimal target — a single-target nuke on a near-dead enemy, a heal on a full-HP ally. |
| Ability on empty space | 10% | Targets a dead enemy's position or an empty slot, wasting the turn entirely. |
| Double-cast (if able) | 10% | Attempts to use a second ability in the same turn (if the system allows bonus actions), draining extra resources. |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Compulsive curio use | Interacts with all magical curios without player input, drawn to arcane energy like a moth. |
| Waste magical supplies | Uses magical consumables (scrolls, potions) at inappropriate times. |
| Push deeper | Urges the party forward, preventing backtracking or retreating from the current corridor. |

### Barks

- *"More. MORE. I can feel the ley lines — just one more taste."*
- *"Why would you stop? The power is RIGHT THERE."*
- *"I've never felt so alive — don't you DARE take this from me!"*
- *"Cast it again. Cast everything. Empty me and fill me back up."*
- *"The magic loves me. It told me so. It TOLD me."*

---

## 11. Cursed Sight

**Category:** Arcane

**Flavor:** *The veil has been torn from their eyes — they see things that aren't there, things that haven't happened yet, and things that should never be seen at all.*

**Stat Modifiers:**
- ACC: −15 (distracted by overlapping realities)
- Scouting Chance: +25% (genuine trade-off — they see traps, secrets, and enemy formations through walls)
- Dodge: +5 (they can see attacks coming from angles that don't exist)

**Stress Radiation:** 3 stress to each ally per turn (describing horrors only they can see, flinching at invisible threats).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Attack empty position | 25% | Swings at a position where no enemy stands — fighting something only they can see. |
| Refuse real target | 20% | Declares a visible enemy is an illusion and refuses to target it this turn. |
| Reveal trap/weakness | 15% | **Positive trade-off:** reveals an enemy's hidden vulnerability (applies a Mark or debuff) or warns of an incoming enemy ability. |
| Flinch from invisible threat | 15% | Dodges or guards against nothing, wasting their action but occasionally avoiding a real attack by coincidence (+10% bonus Dodge for one turn). |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Scouting bonus | **Positive trade-off:** +25% chance to reveal the next room's contents, traps, and enemy composition before entry. |
| Refuse room entry | Declares a room "wrong" or "full of them" and refuses to enter, requiring an extra action to override. |
| Describe horrors | Narrates what they see to the party — stress +4 to all allies, but 15% chance of revealing a secret. |

### Barks

- *"There are three of you standing there. Two of you aren't real."*
- *"Don't step THERE — can't you see the teeth in the floor?"*
- *"The walls are full of faces. They're watching us vote on who dies."*
- *"I can see tomorrow. It's worse than today."*
- *"Something beautiful and terrible lives behind your eyes. Don't blink."*

---

## 12. Hollow

**Category:** Arcane

**Flavor:** *The magic took something when it passed through them — not their mind, not their body, but the part that makes a person a person. What remains is a shell that walks and fights and feels nothing.*

**Stat Modifiers:**
- DMG: −20%
- SPD: −5
- ACC: −5

**Special Properties:**
- **Immune to further stress damage.** Stress is permanently capped at its current value (100+). Cannot reach 200 / Heart Attack.
- **Immune to stress healing.** No amount of comfort, camping, or abilities can reduce their stress.
- **Immune to virtue.** If somehow re-checked, Hollow persists. They cannot be inspired.
- **Immune to affliction change.** Hollow cannot be replaced by another affliction. It is terminal.
- **Can only be cured** by completing the mission or through very rare curio/event interactions.

**Stress Radiation:** 2 stress to each ally per turn (the quietest radiator — but the emptiness is deeply unsettling, an uncanny valley of personhood).

### Forced Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Pass turn | 25% | Simply stands there. Not frozen, not afraid — just... absent. |
| Weakest ability | 20% | Uses their lowest-damage, lowest-impact ability regardless of situation. |
| Ignore buffs | 15% | Beneficial effects from allies have 50% reduced effectiveness (the magic slides off their emptiness). |

### Forced Behaviors — Exploration

| Behavior | Description |
|---|---|
| Ignore curios | Walks past all interactive objects without acknowledgment. |
| Ignore loot | Does not pick up items. Rewards from their kills go uncollected unless another hero retrieves them. |

### Barks

- *"..."*
- *"I can hear you. I just can't remember why it matters."*
- *"There was something here before. Inside me. It's gone now."*
- *"Do what you want. I'll follow."*
- *"I'm not afraid. I'm not brave. I'm not anything."*

---

# VIRTUES

---

## 1. Stalwart

**Flavor:** *The weight of the dark presses down and they refuse to bend — an iron pillar around which the party can rally.*

**Stat Modifiers:**
- DMG Resist: +15%
- Dodge: +10
- SPD: +5
- Max HP: +10%

**Stress Relief:** −3 stress to each ally per turn (steady presence, calm orders, unshakeable composure).

### Positive Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Guard weakest ally | 20% | Steps in front of the lowest-HP party member, absorbing the next hit directed at them. |
| Self-heal | 15% | Recovers 10–15% max HP through sheer willpower. |
| Stress heal party | 20% | Speaks a word of calm — heals 3–5 bonus stress from all allies (in addition to passive aura). |

### Barks

- *"Hold the line. We are NOT done yet."*
- *"I've stood in darker places than this. So have you."*
- *"Breathe. Focus. We leave together or not at all."*
- *"They want us to break. Disappoint them."*
- *"I'll carry what you can't. That's what we do."*

---

## 2. Courageous

**Flavor:** *Fear still whispers, but they've chosen to answer it with steel — charging forward so their allies don't have to.*

**Stat Modifiers:**
- DMG: +15%
- CRIT: +5%
- ACC: +10
- SPD: +3

**Stress Relief:** −2 stress to each ally per turn (infectious bravery, leading from the front).

### Positive Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Bonus attack | 20% | Takes an extra attack action after their normal turn. |
| Inspire party | 15% | Rallies the group — all allies gain +10 ACC for 1 round. |
| Advance to protect | 15% | Moves to the front position and gains +15% DMG resist for 1 round, shielding the party. |

### Barks

- *"Forward! The only way out is THROUGH!"*
- *"I'll go first. I'll always go first."*
- *"If death wants me, it'll have to earn me!"*
- *"Watch my back and I'll break their front!"*
- *"Fear is a liar. I'm done listening."*

---

## 3. Focused

**Flavor:** *The chaos falls away and everything sharpens — every weakness visible, every opening a certainty, every breath a calculation.*

**Stat Modifiers:**
- ACC: +15
- CRIT: +10%
- SPD: +5
- Dodge: +5

**Stress Relief:** −2 stress to each ally per turn (calm competence, quiet confidence that steadies the group).

### Positive Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Guaranteed crit | 15% | Next attack is a guaranteed critical hit. |
| Buff ally accuracy | 20% | Calls out a target's weakness — one ally gains +15 ACC and +5% CRIT for 1 round. |
| Tactical insight | 15% | Reveals an enemy's next intended action (which hero they'll target, what ability they'll use). |

### Barks

- *"I see it. The gap in its guard — there, NOW."*
- *"Quiet your mind. Let the blade think."*
- *"Every enemy has a pattern. I've found theirs."*
- *"Don't swing wild. Swing once. Swing true."*
- *"Clarity is the sharpest weapon we have."*

---

## 4. Vigorous

**Flavor:** *Something surges in them — a second wind that won't quit, mending flesh and spirit with every stubborn heartbeat.*

**Stat Modifiers:**
- Dodge: +10
- HP Regen: +5% max HP per turn (passive)
- Bleed/Poison Resist: +30%

**Stress Relief:** −3 stress to each ally per turn (vital energy, reassuring endurance, "if they can keep going, so can I").

### Positive Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Heal an ally | 20% | Restores 10–15% max HP to the most injured party member. |
| Cleanse DoT | 15% | Removes a Bleed or Poison effect from a random afflicted ally. |
| Self-heal surge | 15% | Heals self for 15–20% max HP in a burst of vitality. |

### Barks

- *"I'm not done. Not even CLOSE to done."*
- *"Get up. GET UP. Your blood is still warm."*
- *"I can feel my wounds closing. The dark won't have me."*
- *"Take my hand — I've got strength enough for both of us."*
- *"Pain is just the body remembering it's alive."*

---

## 5. Powerful

**Flavor:** *Rage and resolve forge together into something terrifying — every blow lands like a siege engine, every step shakes the ground.*

**Stat Modifiers:**
- DMG: +25%
- CRIT: +10%
- ACC: +5
- Dodge: −5 (not evading — standing and delivering)

**Stress Relief:** −2 stress to each ally per turn (awe-inspiring violence, the comfort of overwhelming force on your side).

### Positive Behaviors — Combat

| Behavior | Chance/Turn | Description |
|---|---|---|
| Devastating blow | 20% | Next attack deals +50% bonus damage. |
| Stun strike | 15% | Attack has a 75% chance to stun the target for 1 round. |
| War cry | 15% | Buffs all allies: +10% DMG for 2 rounds. |

### Barks

- *"I am the thing they should be afraid of."*
- *"Hit me. HIT ME. See what happens."*
- *"I'll make a ruin of every one of them."*
- *"Stand behind me. This won't take long."*
- *"The dark sends monsters? I'LL SEND THEM BACK."*

---

# Design Notes

**Cascade risk:** Affliction stress radiation is the primary party-kill mechanic. One Despairing hero (5/turn) or Cruel hero (5/targeted action) can push the entire party past 100 within 3–4 rounds if not managed. This is intentional — stress management and knowing when to retreat are core skills.

**Affliction distinctness matrix:**

| Affliction | Primary Disruption | Player Feel |
|---|---|---|
| Craven | Action denial, retreating | Frustrating dead weight |
| Wrathful | Friendly fire, broken formation | Dangerous cannon |
| Despairing | Turn waste, healing denial | Slow suffocation |
| Paranoid | Buff denial, isolation | Unreachable ally |
| Unhinged | Total randomness | Chaotic wildcard |
| Cruel | Targeted stress, party damage | Active saboteur |
| Arcane-Touched | AoE party damage, swelling | Walking hazard |
| Void-Stricken | Turn loss, immovable | Absent ally |
| Elemental Hysteria | Unreliable damage typing | Slot machine |
| Mana-Drunk | Resource drain, no defense | Burn-bright liability |
| Cursed Sight | Accuracy loss + scouting | Keep-or-cure dilemma |
| Hollow | Stat loss, immune to recovery | Numb survivor |

**Hollow as endgame safety valve:** Hollow is the only affliction that prevents Heart Attack at 200. A Hollow hero won't cascade the party as hard (2 stress/turn vs 3–5), can't die to stress, but is permanently diminished until the mission ends. It creates a strategic question: is a weakened-but-stable hero better than risking a Heart Attack?

**Cursed Sight decision space:** The +25% scouting bonus is substantial. In dangerous dungeons, a Cursed Sight hero might be *more useful* than a cured one — but the −15 ACC and erratic targeting are real costs. This creates a genuine player decision.

**Virtue power budget:** Virtues are deliberately strong but not dominant. A Stalwart or Vigorous hero can stabilize a crumbling run, but they don't trivialize encounters. The ~15–20% trigger rate means the player still needs to make good tactical decisions; the virtue is a tailwind, not autopilot.
