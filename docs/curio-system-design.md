# Curio System — Dark Fantasy Roguelike

> Interactive objects encountered during dungeon exploration. Players choose to **Interact** or **Ignore**. Using the correct supply item guarantees a positive (or at least safe) outcome. Using the wrong item punishes. Interacting bare-handed is a gamble.

---

## 1. Generic Curios

*Found in all five dungeons.*

---

### 1.1 — Runewarded Coffer

**Category:** Standard (Generic)
**Visual:** A stone chest bound in corroded iron bands, its surface carved with protective sigils that flicker weakly in the dark. The lid is cracked just enough to glimpse something gleaming within.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | Find 75–150 gold and a random common trinket. |
| Neutral | 35% | Chest is empty save for dust. Flavor text: *"Nothing but the memory of wealth."* |
| Negative | 35% | Trapped — hero takes 8–15 damage and gains +10 stress. |

**Correct supply:** Enchanted Tools → Disarm the trap, always receive gold (100–200) and a trinket (uncommon+).
**Wrong supply:** Ember Flask → The heat warps the reliquary shut and destroys its contents. Lose the Ember Flask; nothing gained.
**Class-specific:** *Antiquarian* (or equivalent treasure-hunter class) — Positive outcome weight increases to 50%, and gold yield doubles.
**Swelling-dependent:** At Raging+, negative outcome weight rises to 45% and the trap also inflicts +5 Arcane Swelling.

---

### 1.2 — Whispering Idol

**Category:** Standard (Generic)
**Visual:** A crude stone figure with an oversized head and hollow eyes. A low, barely audible murmur emanates from its open mouth.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | The whispers soothe — party stress reduced by 10. |
| Neutral | 30% | Incomprehensible babble. Nothing happens. |
| Negative | 45% | The whispers bore into the hero's mind — +15 stress, chance of gaining negative quirk *"Paranoid Murmurs"* (15%). |

**Correct supply:** Warding Stones → Silence the idol safely; party stress reduced by 15 and Arcane Swelling reduced by 5.
**Wrong supply:** Runestone Keys → The key resonates with the idol, amplifying the whispers. +25 stress to interacting hero; all party members gain +5 stress.
**Class-specific:** *Occultist / Necromancer-type* — Can translate the whispers: reveals a random room on the map (scouting) and gains +10% damage buff for 3 combats.
**Swelling-dependent:** At Stirring+, positive outcome also grants a random positive quirk (10% chance). At Overwhelming, negative outcome always inflicts the quirk.

---

### 1.3 — Cracked Ration Barrel

**Category:** Standard (Generic)
**Visual:** A battered wooden barrel lying on its side, its staves split. A faint smell of preserved food and something less wholesome seeps out.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 40% | Recover 1 Ration supply item. |
| Neutral | 30% | Food is spoiled. Flavor text: *"Rot and regret."* |
| Negative | 30% | Spoiled food — hero is poisoned (3 dmg/round for 3 rounds) if they eat it automatically. |

**Correct supply:** Antitoxin Vials → Purify the contents; always recover 2 Rations and hero heals 10 HP.
**Wrong supply:** Frost Shard → Freezes and shatters the barrel entirely. Lose the Frost Shard; nothing recovered.
**Swelling-dependent:** None.

---

### 1.4 — Fallen Wayfarer's Remains

**Category:** Standard (Generic)
**Visual:** The crumpled body of an adventurer slumped against the wall, armor corroded and pack half-open. Whatever killed them left no visible wound — only a frozen expression of quiet dread.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Unearth a buried trinket (uncommon). |
| Neutral | 25% | Nothing but bones and silence. |
| Negative (Minor) | 25% | Disturbed spirit — +15 stress to interacting hero. |
| Negative (Major) | 25% | Ambush! A minor undead enemy spawns and attacks. |

**Correct supply:** Hemlock Salve → Anoint the grave to appease the spirit. Always receive a trinket (uncommon+) and +5 stress *relief*.
**Wrong supply:** Rations → Offering food to the dead is an insult. Guaranteed ambush (2 undead enemies) and +10 stress to the whole party.
**Class-specific:** *Necromancer-type* — Can commune with the buried dead: choice of trinket OR a temporary skeletal ally for the next 2 combats.
**Swelling-dependent:** At Raging+, the ambush spawns a stronger undead variant. At Overwhelming, the grave may instead yield a rare trinket (10% chance added to positive outcome).

---

### 1.5 — Arcane Residue Pool

**Category:** Standard (Generic)
**Visual:** A shallow depression in the floor filled with shimmering, opalescent liquid that shifts color slowly. The air above it distorts like a heat haze.
**Appears in:** Both

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 20% | Hero absorbs residual magic — +15% damage buff for 3 combats. |
| Neutral | 30% | The liquid evaporates on touch. Nothing happens. |
| Negative | 50% | Arcane backlash — hero takes 5–10 damage and +10 Arcane Swelling to the party meter. |

**Correct supply:** Arcane Dampeners → Stabilize the pool; hero gains +20% elemental resistance for the rest of the floor AND Arcane Swelling reduced by 8.
**Wrong supply:** Stormvial → The electrical charge destabilizes the pool violently. +15 Arcane Swelling, hero takes 10–18 damage.
**Class-specific:** None.
**Swelling-dependent:** At Overwhelming, the positive outcome is replaced entirely by a *guaranteed* negative outcome (backlash is unavoidable without supplies). The backlash also deals double damage.

---

### 1.6 — Hanging Cage

**Category:** Standard (Generic)
**Visual:** A rusted iron cage suspended from the ceiling by a fraying chain. Something inside shifts weakly — alive, or merely the wind.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | A grateful prisoner — provides scouting info (reveals 3 rooms) and 50 gold. |
| Neutral | 35% | The cage holds only a corpse. Flavor text: *"Too late."* +5 stress. |
| Negative | 35% | The "prisoner" is a mimic/trap. Hero takes 10–20 damage and the party is surprised by a combat encounter. |

**Correct supply:** Enchanted Tools → Safely open the cage. Always a grateful prisoner: scouting info, 75 gold, and a chance at an uncommon trinket (30%).
**Wrong supply:** Binding Rope → Attempting to lower the cage snaps the chain. The cage crashes down — hero takes 15 damage, +10 stress.
**Class-specific:** *Healer / Vestal-type* — If a prisoner is found, they can heal them for an additional +5% party healing buff for the rest of the floor.
**Swelling-dependent:** At Raging+, the mimic/trap outcome weight increases to 45%.

---

### 1.7 — Shattered Mirror

**Category:** Standard (Generic)
**Visual:** A tall mirror in a tarnished frame, its surface fractured into a web of cracks. Each shard reflects something slightly different from reality.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | The hero sees a vision of safety — stress reduced by 20. |
| Neutral | 25% | Distorted reflections. Flavor text: *"You look away. You had to."* |
| Negative | 50% | The hero sees something terrible in the reflection — +25 stress. If hero is already above 60 stress, they gain the negative quirk *"Fractured Self"* (−5% max HP). |

**Correct supply:** Warding Stones → Ward the mirror before looking. Guaranteed stress relief (−20) and gain positive quirk *"Steeled Nerves"* (10% stress resist) at 15% chance.
**Wrong supply:** Runestone Keys → The key activates a latent enchantment. The mirror shatters fully — hero takes 5–10 bleed damage, +15 stress, and the hero's trinket in slot 1 is *cursed* (stat penalty until purified at hamlet).
**Class-specific:** Heroes below 20 stress see an inspiring vision: +10% crit chance for 3 combats. Heroes above 75 stress always get the negative outcome regardless of roll.
**Swelling-dependent:** At Stirring+, the mirror occasionally shows a map fragment (reveals 1 secret room, 20% chance on any outcome).

---

### 1.8 — Collapsed Pack

**Category:** Standard (Generic)
**Visual:** A moldering adventurer's pack half-buried under rubble. A skeletal hand protrudes from beneath, still clutching the strap.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 40% | Recover a random supply item (1). |
| Neutral | 30% | Only rotted scraps remain. Flavor text: *"Picked clean by those who came before."* |
| Negative | 30% | Booby-trapped — hero takes 8 damage and the trap destroys one of the party's existing supply items at random. |

**Correct supply:** Enchanted Tools → Safely disarm and search. Recover 2 random supply items.
**Wrong supply:** Antitoxin Vials → Pouring antitoxin on the pack corrodes the contents. Lose the Antitoxin; all items inside are ruined.
**Swelling-dependent:** None.

---

## 2. The Frozen Depths

*Ancient glacial caverns cursed with eternal winter.*

---

### 2a. Standard Curios

---

#### 2a.1 — Glacial Casket

**Category:** Standard
**Dungeon:** The Frozen Depths
**Visual:** A translucent block of ancient blue ice encasing a humanoid figure in tattered robes. One hand is outstretched, fingers curled around something small and bright.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | The ice cracks enough to retrieve the object — a rare trinket. |
| Neutral | 30% | The ice is impenetrable. Flavor text: *"Centuries of cold refuse your warmth."* |
| Negative | 45% | The figure's eyes snap open. Hero takes 10 cold damage, +15 stress, and gains 1 stack of Frostbite. |

**Correct supply:** Ember Flask → Carefully melt the ice. Always retrieve the trinket (uncommon+). No Frostbite risk.
**Wrong supply:** Frost Shard → Strengthens the ice. The casket becomes permanently sealed; the Frost Shard is consumed. +5 stress (wasted effort).
**Class-specific:** None.
**Swelling-dependent:** At Raging+, the figure inside is partially animated by swelling — negative outcome also spawns a Frozen Revenant enemy.

---

#### 2a.2 — Frost-Rimed Altar

**Category:** Standard
**Dungeon:** The Frozen Depths
**Visual:** A low stone altar covered in a thick crust of frost. Dark stains beneath the ice suggest old bloodletting. Offerings of frozen flowers and animal bones ring its base.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | The altar accepts the hero's presence — grants Permafrost Armor buff (reduce next 3 instances of damage by 25%). |
| Neutral | 30% | Nothing happens. The cold radiates indifference. |
| Negative | 40% | The altar punishes the unworthy — hero takes 10–15 cold damage and gains 2 stacks of Frostbite. |

**Correct supply:** Rations → Leave a food offering. Altar always grants Permafrost Armor buff and heals 15 HP.
**Wrong supply:** Stormvial → Electrical discharge cracks the altar. Unleashes a burst of cursed cold — entire party takes 8 cold damage and gains 1 Frostbite stack each.
**Class-specific:** *Flagellant / self-sacrifice class* — Can offer blood: takes 10 self-damage but grants party-wide Permafrost Armor.
**Swelling-dependent:** At Overwhelming, the altar is fully charged. Positive outcome also reduces Frostbite Gauge by 15. Negative outcome adds +10 Arcane Swelling.

---

#### 2a.3 — Frozen Waterfall

**Category:** Standard
**Dungeon:** The Frozen Depths
**Visual:** A curtain of solid ice cascading down the cavern wall. Behind it, a faint blue glow suggests a hidden alcove. The ice groans under its own weight.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 35% | Break through safely — hidden cache of 100–175 gold. |
| Neutral | 25% | The ice is too thick to breach. |
| Negative | 40% | The ice collapses violently. Hero takes 12–20 damage and the corridor is partially blocked (+1 movement cost for this tile). |

**Correct supply:** Ember Flask → Melt a clean passage through. Always find the hidden cache (150–225 gold) plus a chance at a supply item (40%).
**Wrong supply:** Binding Rope → Attempting to climb the frozen waterfall results in a fall. Hero takes 10 damage and gains *"Vertigo"* negative quirk (−10% ACC in The Frozen Depths).
**Swelling-dependent:** None.

---

#### 2a.4 — Whimpering Ice

**Category:** Standard
**Dungeon:** The Frozen Depths
**Visual:** A section of cavern wall where the ice has formed in organic, almost fleshy folds. A muffled, rhythmic sound — like breathing — pulses from within.
**Appears in:** Both

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 20% | Release a trapped creature that flees — drops a rare reagent worth 200 gold. |
| Neutral | 35% | It's just wind through the ice. +5 stress from the eeriness. |
| Negative | 45% | A frost parasite latches onto the hero — gains 2 Frostbite stacks and the negative quirk *"Cold-Blooded"* (−10% healing received in Frozen Depths). |

**Correct supply:** Antitoxin Vials → Coat your hands before touching. Safely free the creature: rare reagent + hero gains positive quirk *"Winter's Mercy"* (+5% cold resist).
**Wrong supply:** Hemlock Salve → The salve freezes and bonds the hero's hand to the ice. Hero takes 8 damage and loses the Hemlock Salve.
**Class-specific:** *Beast-handler / Houndmaster-type* — The freed creature bonds to the hero temporarily. Grants a companion buff (+10% DMG, +5 SPD) for the rest of the floor.
**Swelling-dependent:** At Stirring+, the sound becomes louder and more distressed. Positive outcome weight increases to 30% (the creature is more desperate to escape). At Overwhelming, the negative outcome's parasite also inflicts bleed (3 dmg/round for 3 rounds).

---

#### 2a.5 — Rimecaster's Remains

**Category:** Standard
**Dungeon:** The Frozen Depths
**Visual:** A frozen corpse slumped against the wall in ornate frost-patterned robes. One hand still clutches a staff crackling with residual cold magic. A spellbook lies open on their lap, pages frozen mid-turn.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | Salvage a spell fragment — interacting hero gains +20% cold damage for the rest of the run. |
| Neutral | 30% | The magic has faded. Only the book remains, worth 50 gold. |
| Negative | 40% | Residual spell triggers — hero takes 15 cold damage, +10 stress, and the Frostbite Gauge advances by 10. |

**Correct supply:** Arcane Dampeners → Safely neutralize the residual magic before searching. Always gain the spell fragment buff, plus the staff can be taken as an uncommon trinket (+10% cold DMG, +5% stress on camp).
**Wrong supply:** Warding Stones → The warding disrupts the frozen stasis, causing the corpse to animate briefly. Ambush by a Frost Wraith. +15 stress.
**Class-specific:** *Mage / caster-type* — Can fully comprehend the spellbook: gains +20% cold damage AND learns a temporary skill *"Rimecaster's Grasp"* (single-target cold nuke) for the rest of the floor.
**Swelling-dependent:** At Raging+, the staff begins to vibrate. If taken (positive outcome), it also reduces Arcane Swelling by 5. If the negative outcome triggers, Arcane Swelling increases by 8 instead of the Frostbite Gauge.

---

### 2b. Swelling-Gated Curios

---

#### 2b.1 — The Thaw-Heart

**Category:** Swelling-Gated — **Raging (51–75)**
**Dungeon:** The Frozen Depths
**Visual:** A pulsing orb of deep crimson embedded in the ice wall, radiating visible waves of heat. The surrounding ice weeps and refreezes in an endless cycle. The air tastes of copper.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | The heart's warmth floods the hero — fully cure all Frostbite stacks on the party. +10 stress relief. |
| Neutral | 20% | The heat recedes before the hero can absorb it. Flavor text: *"It beats for itself, not for you."* |
| Negative | 50% | The heart rejects the hero — hero takes 15 fire damage (ironic in the Frozen Depths), gains +20 stress, and Arcane Swelling increases by 10. |

**Correct supply:** Frost Shard → Offer the cold to balance the heat. The heart stabilizes: cure all party Frostbite, +15 stress relief, AND the hero gains *"Thaw-Touched"* positive quirk (+15% cold resist, +5% fire resist).
**Wrong supply:** Ember Flask → Too much heat — the heart detonates. Party takes 10 fire damage each. Arcane Swelling +15. The curio is destroyed.
**Swelling-dependent:** Inherent. Only appears at Raging. At Overwhelming (if swelling rises during the floor), the positive outcome also grants a rare trinket *"Thaw-Heart Shard"* (equip: immune to Frostbite, −5% max HP).

---

#### 2b.2 — Permafrost Throne

**Category:** Swelling-Gated — **Overwhelming (76–100)**
**Dungeon:** The Frozen Depths
**Visual:** An immense throne carved from a single glacier, radiating palpable malice. The temperature drops violently near it. Ghostly frost crawls toward any who approach. The seat appears… inviting.
**Appears in:** Rooms (special room — Throne Chamber)

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 15% | The hero sits and endures — gains the legendary buff *"Sovereign of Frost"* (+30% cold DMG, immune to Frostbite) for the rest of the run. +25 stress. |
| Negative | 85% | The cold devours the hero — takes 25 cold damage, gains 4 Frostbite stacks, +30 stress, and the negative quirk *"Enthroned in Ice"* (−20% SPD in Frozen Depths). |

**Correct supply:** Runestone Keys → Unlock the throne's binding runes before sitting. Guaranteed *"Sovereign of Frost"* buff with only +10 stress (instead of +25).
**Wrong supply:** Rations → The throne takes the offering as tribute and demands more. Lose ALL Rations the party carries. Nothing gained.
**Swelling-dependent:** Inherent. Only appears at Overwhelming. The extreme risk/reward is the point — this curio tempts players who've let swelling climb dangerously high.

---

### 2c. Secret Boss Curio

---

#### The Weeping Fissure

**Dungeon:** The Frozen Depths
**Visual:** A narrow crack in the deepest ice wall, from which a sound like muffled sobbing echoes endlessly. The edges of the fissure are stained with something dark — not blood, but older. The ice around it is perfectly clear, and looking into the crack reveals only blackness.
**Spawn chance:** 12%
**Appears in:** Corridors (deep sections only, final third of the floor)

**Activation requirements:**
1. Arcane Swelling must be at **Raging or higher (51+)**.
2. Use an **Ember Flask** on the fissure.
3. A **healer/support class** must be in the party (the warmth of mercy draws the beast out).

*All three conditions must be met simultaneously. Using the Ember Flask without the other conditions partially melts the ice but nothing emerges.*

**Failed activation:**
- Without correct swelling: The fissure weeps louder, then falls silent. +10 stress to interacting hero. Flavor text: *"It isn't ready. Or you aren't."*
- With wrong supply: The crack seals with a snap. +15 stress. Lose the supply item.
- Without healer class: The Ember Flask melts a thin passage, but a wave of cold pushes back. Hero takes 15 cold damage, +10 stress. Flavor text: *"Something stirs within… but finds you lacking."*

**Successful activation:**
The Ember Flask melts the crack wide. The sobbing stops. The ice parts like a wound opening, revealing a descending staircase coated in weeping frost. The temperature plummets as the party descends into the **Grief Hollow** — a hidden arena of ancient, sorrowful ice.

**Secret boss:** ***Kolveth, the Unthawing Grief***
A colossal humanoid figure fused with the glacier itself — half-corpse, half-avalanche. Kolveth was once a healer who entered the Frozen Depths to save the entombed and instead became one of them. Her face is frozen mid-scream. She attacks with waves of paralyzing cold and summons frozen echoes of the people she failed to save. Unique mechanic: *Grief Aura* — party stress increases passively each round; healing abilities used against Kolveth deal damage to her but also increase party stress.

**Secret boss loot:**

- **Kolveth's Frozen Tear** *(Legendary Trinket)* — Equip: Healing skills also grant +5% cold resist per heal. When the equipped hero is at Death's Door, all party Frostbite is cured. *"It never stops weeping. But the cold, at least, answers to sorrow."*
- **Mantle of Unthawing** *(Legendary Armor Trinket)* — Equip: Immune to Frostbite. +20% cold resist. −10% fire resist. When struck by a cold attack, 30% chance to reflect half the damage back. *"She wore the glacier like a second skin. Now, so do you."*

---

## 3. The Howling Spire

*Ruined tower open to endless storms and vertigo.*

---

### 3a. Standard Curios

---

#### 3a.1 — Windchime Bones

**Category:** Standard
**Dungeon:** The Howling Spire
**Visual:** A cluster of yellowed bones strung together with fraying sinew, suspended from a jutting stone. The wind plays them like an instrument — the melody is almost beautiful.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | The melody calms — party stress reduced by 10. One bone can be taken as a trinket (common, +5% DODGE). |
| Neutral | 35% | The wind shifts and the melody becomes discordant, then stops. Nothing happens. |
| Negative | 35% | A particularly violent gust weaponizes the bones — hero takes 10 damage (bleed) and +10 stress. |

**Correct supply:** Gale Dust → Harmonize with the wind. Guaranteed stress relief (−15 party) and the bones reform into a rare trinket *"Chorus of the Gale"* (+10% DODGE, +5% SPD).
**Wrong supply:** Frost Shard → The cold makes the bones brittle and they shatter violently. Hero takes 8 bleed damage, party loses the curio permanently.
**Swelling-dependent:** None.

---

#### 3a.2 — Storm Reliquary

**Category:** Standard
**Dungeon:** The Howling Spire
**Visual:** A sealed stone box bolted to the wall with iron bands, buzzing with static. Lightning-shaped cracks run through its surface. The air smells of ozone.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Contains a bottled storm — grants the interacting hero *"Stormcharged"* buff (+15% SPD, +10% DMG) for 3 combats. |
| Neutral | 30% | The reliquary is inert. 25 gold inside. |
| Negative | 45% | Static discharge — hero takes 12 lightning damage and is stunned for the first round of the next combat. |

**Correct supply:** Arcane Dampeners → Safely ground the discharge. Always receive the *"Stormcharged"* buff plus 50–100 gold.
**Wrong supply:** Stormvial → Overcharges the reliquary — it explodes. Party takes 8 damage each, +10 stress each.
**Class-specific:** *Artificer / engineer-type* — Can siphon the charge into their equipment: gains +25% DMG for the rest of the floor instead of the normal buff.
**Swelling-dependent:** At Raging+, the reliquary is more volatile. Negative weight increases to 55%. Positive outcome also reduces Arcane Swelling by 5.

---

#### 3a.3 — Crumbling Parapet

**Category:** Standard
**Dungeon:** The Howling Spire
**Visual:** A section of the tower's outer wall has collapsed, leaving a narrow ledge overlooking a dizzying drop. Something glints on a stone shelf just out of easy reach.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | The hero edges out and grabs it — 100–200 gold or a supply item. |
| Neutral | 30% | The wind is too strong; the hero retreats. +5 stress. |
| Negative | 40% | The ledge crumbles — hero takes 15 fall damage and gains *"Acrophobia"* negative quirk (−10% ACC in The Howling Spire). |

**Correct supply:** Binding Rope → Secure yourself before leaning out. Guaranteed retrieval: 150–250 gold and a random supply item.
**Wrong supply:** Ember Flask → The heat weakens the already crumbling stone. The entire parapet collapses. Hero takes 20 damage. The loot is lost.
**Class-specific:** *Rogue / acrobat-type* — Automatically succeeds without rope. Positive weight becomes 100% (no supply needed).
**Swelling-dependent:** At Overwhelming, the winds are so violent that even Binding Rope only gives a 75% success rate (25% chance of partial failure: get the loot but take 8 damage).

---

#### 3a.4 — Harpy Nest

**Category:** Standard
**Dungeon:** The Howling Spire
**Visual:** A massive tangle of wind-stripped branches, cloth scraps, and bones wedged into a tower alcove. Several pale, speckled eggs sit at its center. Glossy feathers and something golden catch the light.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Nest is abandoned — take the golden trinket (uncommon, +10% ACC) and 75 gold worth of salvage. |
| Neutral | 35% | The nest is empty except for cracked eggs and feathers. 20 gold. |
| Negative | 40% | The mother returns — ambush by 2 Harpy enemies. +10 stress. |

**Correct supply:** Rations → Leave food to distract any returning harpy. Always loot safely: trinket + 100 gold + 1 Harpy Feather reagent.
**Wrong supply:** Gale Dust → The wind scatters the nest contents. Guaranteed ambush (the harpies are enraged) — fight 3 Harpies instead of 2.
**Class-specific:** None.
**Swelling-dependent:** At Stirring+, there's a 15% chance the eggs are arcane-infused. If found (positive outcome), they can be sold for 300 gold or hatched at the hamlet for a permanent companion buff (TBD by companion system).

---

#### 3a.5 — The Leaning Bell

**Category:** Standard
**Dungeon:** The Howling Spire
**Visual:** A massive bronze bell hanging at a precarious angle from a half-collapsed belfry frame. Rust and verdigris streak its surface. The clapper sways in the wind, occasionally producing a low, resonant hum.
**Appears in:** Rooms (upper floors)

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 20% | Ring the bell — its sound disperses nearby enemies. Next 2 corridor encounters are avoided (scouting/bypass effect). |
| Neutral | 30% | The bell produces only a dull thud. Nothing happens. |
| Negative | 50% | The bell's toll attracts enemies. Immediate ambush by a strong enemy group. +15 stress. |

**Correct supply:** Enchanted Tools → Repair the clapper. Bell rings true — guaranteed encounter bypass (next 3 corridors) AND party gains +5 SPD for the rest of the floor.
**Wrong supply:** Warding Stones → The ward silences the bell permanently. No benefit. Lose the Warding Stones. Flavor text: *"You've made it quiet. Congratulations."* +5 stress (frustration).
**Swelling-dependent:** At Raging+, the bell's ring reverberates through the arcane field. Positive outcome also reduces Arcane Swelling by 8. Negative outcome increases Swelling by 10 as the sound amplifies the storm's fury.

---

### 3b. Swelling-Gated Curios

---

#### 3b.1 — Eye of the Storm

**Category:** Swelling-Gated — **Raging (51–75)**
**Dungeon:** The Howling Spire
**Visual:** At the center of a circular chamber, the howling wind inexplicably stops. A perfect sphere of calm air, visible as a shimmering boundary, hovers at chest height. Inside it, dust motes hang frozen in place.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 35% | The hero steps into the calm — full stress reset to 0 for that hero. +10 HP heal. |
| Neutral | 20% | The sphere collapses as the hero enters. Brief moment of peace, then wind returns. −5 stress only. |
| Negative | 45% | The sphere is a trap — it implodes, creating a vacuum. Hero takes 20 damage and is *Dazed* (−25% ACC, −25% DMG) for 2 combats. |

**Correct supply:** Gale Dust → Feed the eye to stabilize it. Hero steps in safely: full stress reset, +20 HP heal, AND gain *"Storm's Reprieve"* (+15% DODGE, +10% stress resist) for the rest of the floor.
**Wrong supply:** Arcane Dampeners → The dampener disrupts the sphere's balance. It detonates — party takes 12 damage each, +15 stress each.
**Swelling-dependent:** Inherent. At Overwhelming (if it persists), positive outcome also grants full Arcane Swelling reset to 50 (bringing it out of Overwhelming).

---

#### 3b.2 — The Screaming Pinnacle

**Category:** Swelling-Gated — **Overwhelming (76–100)**
**Dungeon:** The Howling Spire
**Visual:** The highest accessible point of the Spire — a jagged stone spike jutting into the roiling clouds. The wind here doesn't howl; it *screams*. Standing atop it, a hero can see the curvature of the world… and things moving in the clouds that should not be.
**Appears in:** Special room (Pinnacle Chamber — only spawns at Overwhelming)

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 15% | The hero screams back at the wind and is heard. Gain legendary buff *"Voice of the Tempest"* — all attacks gain wind damage (bonus 15% of base DMG as wind) for the rest of the run. +30 stress. |
| Negative | 85% | The wind rips the hero's voice away. Hero takes 25 damage, +35 stress, gains *"Silenced"* negative quirk (cannot use shout/buff skills for the rest of the run). |

**Correct supply:** Binding Rope → Anchor yourself before the challenge. Guaranteed *"Voice of the Tempest"* buff with only +15 stress.
**Wrong supply:** Warding Stones → The ward angers the storm. Immediate Overwhelming-tier wind event: party takes 15 damage each, +20 stress each, and 1 random supply item is blown away.
**Swelling-dependent:** Inherent. This curio IS the storm at its worst.

---

### 3c. Secret Boss Curio

---

#### The Silence Between Gusts

**Dungeon:** The Howling Spire
**Visual:** In a forgotten alcove behind a collapsed staircase, a single feather floats motionless in midair. It is perfectly white, impossibly large, and the air around it is utterly still. No dust, no sound, no wind. The quiet is *wrong* in a place defined by its noise.
**Spawn chance:** 10%
**Appears in:** Corridors (mid-to-upper floors)

**Activation requirements:**
1. Arcane Swelling must be at **Stirring or higher (26+)**.
2. Use **Gale Dust** on the feather.
3. The party must have **no buffs active** at the time of interaction (the silence demands emptiness).

*The "no buffs" condition is the cryptic part — players must deliberately enter unbuffed, counterintuitive in a dangerous dungeon.*

**Failed activation:**
- Without correct swelling: The feather drifts away and dissolves. Nothing happens. Flavor text: *"The air isn't listening yet."*
- With wrong supply: The feather cuts the hero's hand. 10 bleed damage, +10 stress.
- With active buffs: The feather trembles but doesn't react. Flavor text: *"You carry too much noise within you."* +5 stress.

**Successful activation:**
The Gale Dust swirls around the feather and it begins to spin, faster and faster, until it tears open a vertical slit in the air itself. Beyond it: perfect silence, and a vast chamber of still air suspended impossibly within the storm. The **Breathless Court**.

**Secret boss:** ***Ilvoreth, the Windless Sovereign***
A being of anti-wind — a tall, gaunt figure in flowing robes that hang perfectly still despite being made of solidified air. Where she walks, sound dies. Her attacks are the *absence* of force — vacuums that crush, silence that deafens, stillness that paralyzes. Unique mechanic: *Dead Air Zone* — party members cannot use shout, buff, or heal-over-time skills while in her aura. She periodically creates *Vacuum Wells* that pull heroes toward her for devastating melee.

**Secret boss loot:**

- **Ilvoreth's Quill** *(Legendary Trinket)* — Equip: +20% DODGE. When the equipped hero dodges an attack, the attacker is *Silenced* (cannot use abilities) for 1 round. *"Silence is not the absence of sound. It is a sound that devours all others."*
- **Mantle of Dead Air** *(Legendary Armor Trinket)* — Equip: Immune to stun and knockback. −15% SPD. When hit, 25% chance the attacker's next action is skipped (trapped in a vacuum). *"The wind forgets you. So do your enemies."*

---

## 4. The Shattered Conduit

*Collapsed arcane laboratory around a lightning nexus.*

---

### 4a. Standard Curios

---

#### 4a.1 — Overloaded Capacitor Bank

**Category:** Standard
**Dungeon:** The Shattered Conduit
**Visual:** A row of glass-and-copper cylinders mounted on a cracked stone bench, arcing with blue-white electricity. Several have already burst. The survivors hum with contained fury.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Safely discharge a capacitor — hero gains *"Surge-Primed"* buff (+20% DMG for next 2 attacks). |
| Neutral | 30% | The capacitor is already drained. Salvage copper worth 40 gold. |
| Negative | 45% | Electrical discharge — hero takes 15 lightning damage and is stunned for first round of next combat. +8 Arcane Swelling. |

**Correct supply:** Arcane Dampeners → Ground the excess charge safely. Always receive *"Surge-Primed"* buff (lasts 4 attacks instead of 2) plus 75 gold in salvage.
**Wrong supply:** Stormvial → Overcharges the bank completely. Explosion — party takes 10 lightning damage each. +12 Arcane Swelling.
**Class-specific:** *Artificer / engineer-type* — Can rewire the bank: choose between the buff OR permanently disabling a nearby trap (if one exists on this floor).
**Swelling-dependent:** At Raging+, the capacitors are fully charged. Positive outcome buff increases to +30% DMG. Negative outcome stun lasts 2 rounds instead of 1.

---

#### 4a.2 — Experiment Log (Shattered)

**Category:** Standard
**Dungeon:** The Shattered Conduit
**Visual:** Scattered pages of a research journal pinned to the wall by jagged shards of crystal. The handwriting degrades from meticulous to frantic across the visible pages. Diagrams of humanoid figures with lightning coursing through them are prominent.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 35% | Piece together useful information — scouting reveal (3 rooms) and a clue about enemy weaknesses (+10% DMG vs Constructs for this floor). |
| Neutral | 35% | The pages are too damaged to read. 15 gold (paper salvage). |
| Negative | 30% | The knowledge is maddening — +20 stress, hero gains *"Obsessive Study"* negative quirk (compulsive curio interaction — cannot choose Ignore for curios). |

**Correct supply:** Runestone Keys → The key deciphers an encoded section. Full scouting reveal of the floor, +15% DMG vs Constructs, and a hint about the Secret Boss curio.
**Wrong supply:** Ember Flask → Burns the pages. All information lost. +5 stress. Lose Ember Flask.
**Class-specific:** *Scholar / mage-type* — Can fully reconstruct the log: gains all positive outcomes at no risk (no roll needed).
**Swelling-dependent:** At Overwhelming, the crystal shards holding the pages begin to resonate. Interacting also grants +5 Arcane Swelling regardless of outcome.

---

#### 4a.3 — Conductive Pool

**Category:** Standard
**Dungeon:** The Shattered Conduit
**Visual:** A depression in the laboratory floor filled with a silvery-blue liquid that sparks with intermittent arcs of electricity. The surface ripples without being touched. Submerged in the center: something metallic.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 20% | Retrieve the submerged object — a rare trinket (+15% lightning resist, +5% crit). |
| Neutral | 30% | The object dissolves on contact with air. Residue worth 30 gold. |
| Negative | 50% | Electrical shock through the liquid — hero takes 18 lightning damage, gains *"Conductive Nerves"* debuff (take +25% lightning damage for the rest of the floor). |

**Correct supply:** Enchanted Tools → Use insulated tools to fish out the object safely. Always retrieve the trinket. No shock risk.
**Wrong supply:** Frost Shard → Freezing the pool creates a conductive ice bridge. The entire electrical charge routes through the ice — hero takes 25 lightning damage. The trinket is shattered.
**Class-specific:** None.
**Swelling-dependent:** At Raging+, the pool is supercharged. Negative outcome damage increases to 25 and the debuff becomes *permanent* (rest of the run, not just the floor). However, the positive outcome trinket's stats also double (+30% lightning resist, +10% crit).

---

#### 4a.4 — Chained Experimentation Pod

**Category:** Standard
**Dungeon:** The Shattered Conduit
**Visual:** A glass-and-iron chamber large enough for a person, fitted with copper contacts and restrained by heavy chains. Inside, a vaguely humanoid shape floats in cloudy preservative fluid. It twitches.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 20% | The experiment is inert — salvage the pod for 150 gold and a Stormvial. |
| Neutral | 30% | The fluid has evaporated. Empty pod. 30 gold in scrap. |
| Negative (Minor) | 25% | The experiment wakes but is weak. Brief combat against a minor Chained Experiment enemy. |
| Negative (Major) | 25% | The experiment breaks free fully charged. Ambush by an Overcharged Construct. +15 stress, +8 Arcane Swelling. |

**Correct supply:** Stormvial → Overload the pod's restraints, safely destroying the experiment. Guaranteed 200 gold salvage, 1 Stormvial (net zero), and a rare trinket (lightning-themed).
**Wrong supply:** Antitoxin Vials → The antitoxin reacts with the preservative fluid, creating toxic gas. Hero is poisoned (4 dmg/round for 4 rounds) and +10 stress.
**Class-specific:** *Necromancer / occultist-type* — Can dominate the experiment: it becomes a temporary ally for 3 combats (strong lightning attacks, low HP).
**Swelling-dependent:** At Overwhelming, the Major Negative outcome is guaranteed if interacting without supply (the experiment is fully powered by the swelling). However, the salvage value doubles on positive outcomes.

---

#### 4a.5 — Fractured Resonance Crystal

**Category:** Standard
**Dungeon:** The Shattered Conduit
**Visual:** A head-sized crystal jutting from a collapsed wall, cracked down the middle but still humming with a deep, bone-vibrating tone. Smaller crystal fragments orbit it slowly, suspended by invisible forces.
**Appears in:** Both

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | The crystal's resonance aligns with the hero — gain +10% to all resistances for the rest of the floor. |
| Neutral | 30% | The hum fades. Crystal goes dark. 50 gold in crystal fragments. |
| Negative | 40% | The crystal shatters — shrapnel deals 10 damage. The resonance disrupts the hero's equipment: one equipped trinket is temporarily disabled (stats negated) for the rest of the floor. |

**Correct supply:** Warding Stones → Stabilize the crystal before attuning. Guaranteed resistance buff (+15% to all resistances) AND the crystal can be harvested as a valuable reagent (200 gold).
**Wrong supply:** Gale Dust → Wind amplifies the vibration catastrophically. Crystal detonates. Party takes 8 damage each, both trinket slots on interacting hero are disabled.
**Swelling-dependent:** At Stirring+, the orbiting fragments form recognizable shapes — letters in an ancient script. Positive outcome also reveals a hidden room on the floor (if one exists).

---

### 4b. Swelling-Gated Curios

---

#### 4b.1 — The Conduit's Echo

**Category:** Swelling-Gated — **Raging (51–75)**
**Dungeon:** The Shattered Conduit
**Visual:** A pillar of arcing electricity suspended between floor and ceiling with no visible source. Within the column of light, a ghostly figure repeats the same gestures over and over — pulling a lever, turning a dial, recoiling in horror.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | The ghost completes its sequence — the nearby machinery activates. Gain *"Conduit Resonance"* buff: +25% lightning DMG and attacks have a 15% chance to chain to a second target for the rest of the floor. |
| Neutral | 25% | The ghost fades before completing the sequence. +5 stress. Flavor text: *"It has been trying for centuries. It will try again."* |
| Negative | 50% | The sequence ends in the same catastrophe that killed the ghost. Hero takes 20 lightning damage. +15 stress. Arcane Swelling +10. The ghost screams silently. |

**Correct supply:** Stormvial → Complete the circuit for the ghost. It finishes the sequence and nods with what might be gratitude. Guaranteed *"Conduit Resonance"* buff plus the ghost points to something hidden — reveals the Secret Boss curio location (if present on this run).
**Wrong supply:** Hemlock Salve → The organic salve disrupts the electrical ghost. It distorts into something angry. Ambush by a Spark Wraith. +20 stress.
**Swelling-dependent:** Inherent. At Overwhelming, the ghost's gestures become frantic. The positive buff is enhanced (+35% lightning DMG, 25% chain chance) but the negative outcome also causes the hero to gain *"Phantom Shock"* (randomly take 5 lightning damage at the start of each combat for the rest of the floor).

---

#### 4b.2 — The Lightning Throne

**Category:** Swelling-Gated — **Overwhelming (76–100)**
**Dungeon:** The Shattered Conduit
**Visual:** The remains of the Conduit's central control chair — a seat of fused metal and crystal, still connected to the nexus by cables thicker than a man's arm. Lightning runs through it continuously. The seat is shaped for a human body. The scorch marks on it are shaped like one too.
**Appears in:** Special room (Nexus Chamber)

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 10% | The hero channels the nexus. Gain *"Nexus Controller"* — hero can redirect one enemy attack per combat to another enemy for the rest of the run. +30 stress. Hero takes 15 lightning damage. |
| Negative | 90% | The nexus overwhelms the hero. 30 lightning damage, +40 stress, stunned for 2 rounds of next combat, and gain *"Overloaded Synapses"* (−15% SPD, −10% ACC permanently until cured). |

**Correct supply:** Runestone Keys → Unlock the safety protocols. Guaranteed *"Nexus Controller"* buff with only +15 stress, 5 lightning damage. The chair also stabilizes — Arcane Swelling reduced by 20.
**Wrong supply:** Arcane Dampeners → The dampener shorts the entire system. Massive discharge — party takes 20 lightning damage each. Arcane Swelling spikes to 100 if not already there.
**Swelling-dependent:** Inherent.

---

### 4c. Secret Boss Curio

---

#### The Perfectly Still Dial

**Dungeon:** The Shattered Conduit
**Visual:** Amid the chaos of the shattered laboratory — sparking cables, collapsed machinery, cracked floors — a single brass dial on a stone pedestal stands perfectly intact. Not a scratch, not a speck of dust. Its needle points to a symbol that doesn't appear on any other instrument in the Conduit. The silence around it is conspicuous.
**Spawn chance:** 13%
**Appears in:** Rooms (laboratory sections)

**Activation requirements:**
1. Arcane Swelling must be at **Calm (0–25)** — counterintuitive in a dungeon that naturally raises swelling.
2. Use a **Runestone Key** on the dial.
3. Interact with the dial **three separate times in the same run** (first two times: the dial clicks but nothing happens, building narrative tension — the third time triggers the boss).

*The Calm swelling requirement is the cryptic element — players must actively keep swelling LOW, the opposite of the Swelling-Gated curios' philosophy. The three-interaction requirement means the curio must spawn in rooms they revisit or they must find it early and return.*

**Failed activation:**
- Without Calm swelling: The dial spins freely but locks again. +5 stress. Flavor text: *"Too much noise in the aether. It can't hear the key."*
- With wrong supply: The dial doesn't respond. The supply is consumed. Nothing happens.
- Without three interactions: First interaction: a click, a hum, the needle moves one position. Second: another click, the hum grows, lights along the floor flicker to life in a path. Third: activation. If only 1–2 interactions occur, the sequence resets next run.

**Successful activation:**
On the third interaction with the Runestone Key at Calm swelling, the dial completes a full revolution. Every light in the Conduit dies simultaneously. Then, from deep below, a rhythmic pounding begins — like a massive heartbeat made of electricity. A section of floor retracts, revealing a descending shaft lit by a continuous bolt of contained lightning. The **Convergence Pit**.

**Secret boss:** ***Vaelstrom, the First Experiment***
The original subject of the Conduit's experiments — a human artificer who volunteered to become one with the lightning nexus. It worked too well. Vaelstrom is a towering figure of fused flesh and circuitry, lightning pouring from their eyes and mouth in an endless silent scream. They are not hostile out of malice — they are hostile because they cannot stop. Unique mechanic: *Surge Cycles* — Vaelstrom alternates between Charge Phase (builds power, reduced damage) and Discharge Phase (massive AoE lightning attacks). Players must time their burst damage during Charge and survive Discharge.

**Secret boss loot:**

- **Vaelstrom's Core** *(Legendary Trinket)* — Equip: +25% lightning DMG. Every 4th attack deals an additional lightning strike to all enemies (30% of base DMG). −10% max HP (the core burns you from within). *"It still pulses. It will always pulse."*
- **Artificer's Final Blueprint** *(Legendary Trinket)* — Equip: At the start of each combat, place a *"Faraday Ward"* on one ally — that ally is immune to stun and lightning damage for 3 rounds. Cooldown: once per combat. *"The last thing they designed was a cage for themselves. It didn't work."*

---

## 5. The Ember Sanctum

*Volcanic temple of a fanatical fire cult.*

---

### 5a. Standard Curios

---

#### 5a.1 — Offering Brazier

**Category:** Standard
**Dungeon:** The Ember Sanctum
**Visual:** A wide bronze bowl on a tripod, filled with smoldering coals that never fully die. The rim is inscribed with prayers in an unknown script. Dark stains coat the inside — not all offerings were material.
**Appears in:** Both

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | The fire accepts the hero's presence — gain *"Ember Blessed"* buff (+10% fire resist, +10% DMG for 3 combats). |
| Neutral | 30% | The coals flare briefly and die down. Nothing happens. |
| Negative | 40% | The fire rejects the hero — burns for 12 fire damage and +10 stress. Heat Gauge increases by 10. |

**Correct supply:** Ember Flask → Feed the fire properly. Always receive *"Ember Blessed"* at double duration (6 combats) and 50–100 gold appears in the coals (previous offerings).
**Wrong supply:** Frost Shard → The cold insults the flame. The brazier erupts — hero takes 20 fire damage. Heat Gauge +15. Cult enemies become aware of the party (next encounter is guaranteed and enemies have +10% DMG from righteous fury).
**Class-specific:** *Priest / Vestal-type* — The brazier recognizes a servant of faith (even a rival one). Positive outcome weight rises to 50%.
**Swelling-dependent:** At Raging+, the brazier burns with arcane fire. All outcomes also affect Arcane Swelling (+5 or −5 depending on positive/negative).

---

#### 5a.2 — Branded Scripture

**Category:** Standard
**Dungeon:** The Ember Sanctum
**Visual:** A stone tablet mounted on the temple wall, its text seared into the surface with a red-hot brand. The words glow faintly, and reading them aloud produces a sensation of warmth in the throat.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | The scripture grants conviction — interacting hero gains +15% DMG and +10 stress resist for the rest of the floor. |
| Neutral | 40% | The words are in a dead language the hero cannot decipher. 20 gold (historical curiosity). |
| Negative | 35% | The hero reads a curse aloud — gains *"Branded Tongue"* negative quirk (+15% stress from eldritch/fire enemies) and +15 stress. |

**Correct supply:** Runestone Keys → Decode the scripture safely. Always receive the conviction buff and learn the cult's weakness (+15% DMG vs Cultist enemies for this floor).
**Wrong supply:** Antitoxin Vials → Pouring liquid on the branded text is sacrilege. The tablet flares — hero takes 10 fire damage, +20 stress, and the next 2 cult encounters have reinforcements.
**Class-specific:** *Occultist / dark scholar-type* — Can read the dead language: gains all positive effects plus a cryptic hint about the dungeon's boss mechanics.
**Swelling-dependent:** None.

---

#### 5a.3 — Lava Fissure

**Category:** Standard
**Dungeon:** The Ember Sanctum
**Visual:** A jagged crack in the temple floor through which dull orange light and searing heat escape. Occasionally, a bubble of molten rock breaches the surface and pops with a sulfurous hiss. Something reflective sits lodged in the cooled lip of the crack.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Retrieve the object — a heat-tempered trinket (uncommon, +10% fire resist). |
| Neutral | 30% | Too hot to reach. The object sinks back into the lava. |
| Negative | 45% | The fissure erupts — hero takes 15 fire damage and gains 1 Ember Mark. Heat Gauge +10. |

**Correct supply:** Frost Shard → Cool the lava temporarily. Safely retrieve the trinket (rare quality: +15% fire resist, +5% DMG). Heat Gauge reduced by 5.
**Wrong supply:** Ember Flask → Adding fire to fire. The fissure widens — hero takes 20 fire damage, the corridor tile becomes a *Lava Hazard* (damage to all parties passing through). Heat Gauge +15.
**Swelling-dependent:** At Overwhelming, the fissure connects to the Molten Core. Negative outcome now also causes a floor-wide Heat Gauge increase of +5 for all party members.

---

#### 5a.4 — Zealot's Pyre

**Category:** Standard
**Dungeon:** The Ember Sanctum
**Visual:** A charred wooden stake surrounded by ashes and scorched bones. Chains still dangle from the stake. A faint heat shimmer rises from the ashes despite no visible flame. At the base, among the ashes, something catches the light.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 30% | Among the ashes: a fire-proof trinket and 100 gold in melted jewelry. |
| Neutral | 30% | Only ashes. Flavor text: *"The fire took everything. There is nothing left to find."* |
| Negative | 40% | The pyre reignites. Hero takes 12 fire damage, +15 stress (the screaming echo is audible). Gains *"Pyre Witness"* debuff (−10% DMG for 3 combats from horror). |

**Correct supply:** Hemlock Salve → Anoint the remains with the salve as a mercy. The spirit is at peace — guaranteed trinket (uncommon+), 125 gold, and the hero gains *"Mercy's Warmth"* (+10% healing given for the rest of the floor).
**Wrong supply:** Binding Rope → Attempting to pull something from the pyre catches the rope on fire. Lose the Binding Rope. Hero takes 8 fire damage. +10 stress.
**Class-specific:** *Flagellant / martyr-type* — Can empathize with the zealot's suffering: gains the positive quirk *"Burn-Scarred Resolve"* (+10% DMG when below 50% HP, permanent).
**Swelling-dependent:** At Raging+, the spirit is more restless. Negative outcome pyre burns for 2 additional rounds (lingering fire damage to any hero in the room).

---

#### 5a.5 — Molten Idol

**Category:** Standard
**Dungeon:** The Ember Sanctum
**Visual:** A crudely shaped figure of dark stone with veins of magma running through it like glowing arteries. Its eyes are two pools of liquid fire. The heat emanating from it is almost unbearable. Cult offerings — burned incense, charred coins — surround its base.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 20% | The idol grants its blessing — hero gains +20% fire DMG and Ember Mark immunity for the rest of the floor. |
| Neutral | 30% | The idol is inert. Salvage the offerings for 60 gold. |
| Negative | 50% | The idol brands the hero — takes 15 fire damage, gains 2 Ember Marks, +20 stress. |

**Correct supply:** Ember Flask → Proper offering of fire to fire. Idol always grants its blessing AND the hero can take one of the idol's magma veins as a rare trinket (+15% fire DMG, attacks inflict Ember Mark on enemies).
**Wrong supply:** Warding Stones → Attempting to ward the idol is perceived as an attack on the cult's god. The idol *screams* — party takes 10 fire damage each, +15 stress each. All cult enemies on the floor become alert.
**Class-specific:** None.
**Swelling-dependent:** At Overwhelming, the idol is fully animate. Interacting without supply is always the negative outcome (no positive roll possible). With the correct supply, the blessing is enhanced (+30% fire DMG).

---

### 5b. Swelling-Gated Curios

---

#### 5b.1 — The Living Ember

**Category:** Swelling-Gated — **Raging (51–75)**
**Dungeon:** The Ember Sanctum
**Visual:** A floating mote of fire the size of a fist, drifting lazily through the chamber. It moves with apparent intelligence, circling the party, pausing near each hero as if evaluating them. Its light is warm, not threatening — almost gentle.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 35% | The ember chooses the hero — it merges with them. Gain *"Living Flame"* buff: fire attacks deal +20% DMG, hero heals 5 HP per round for 3 combats. −10 stress (it feels like being chosen). |
| Neutral | 25% | The ember drifts away. Flavor text: *"It found you wanting. Perhaps that is for the best."* |
| Negative | 40% | The ember rejects the hero violently — bursts into flame dealing 18 fire damage, +15 stress, and 2 Ember Marks. |

**Correct supply:** Rations → Offer sustenance to the living flame (fire needs fuel). The ember always chooses the hero. *"Living Flame"* buff lasts the rest of the floor. Heat Gauge reduced by 10.
**Wrong supply:** Frost Shard → The cold kills the ember instantly. +20 stress to the whole party (they feel the ember's death). Flavor text: *"It was alive. It trusted you."* Hero gains *"Ember-Killer"* negative quirk (−10% DMG vs fire enemies, permanent, as fire itself resents them).
**Swelling-dependent:** Inherent. At Overwhelming, the ember is stronger — *"Living Flame"* buff also grants fire immunity. But the negative outcome deals 25 fire damage and 3 Ember Marks.

---

#### 5b.2 — The Crucible of Ascension

**Category:** Swelling-Gated — **Overwhelming (76–100)**
**Dungeon:** The Ember Sanctum
**Visual:** A massive stone basin filled with magma that churns in a slow, deliberate pattern — almost ritualistic. The basin is surrounded by charred skeletal remains in postures of worship. The heat is so intense the air itself seems to burn. Above the basin, the air shimmers and distorts — something is forming.
**Appears in:** Special room (Sanctum Inner Chamber)

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 10% | The hero plunges their weapon into the crucible and withdraws it transformed. Equipped weapon gains *"Molten Edge"* — permanent +25% DMG, attacks inflict Ember Mark on enemies. Hero takes 20 fire damage. +25 stress. |
| Negative | 90% | The magma rejects the offering. Hero takes 30 fire damage, gains 3 Ember Marks, +35 stress, and gains *"Scarred by the Crucible"* (−15% max HP, permanent until cured). |

**Correct supply:** Ember Flask → Offer flame to flame as a sign of devotion. Guaranteed *"Molten Edge"* with only +10 stress and 10 fire damage. The crucible also grants a vision: full floor scouting reveal.
**Wrong supply:** Antitoxin Vials → The liquid evaporates explosively. Hero takes 25 fire damage. All party supplies lose 1 unit each (the blast scatters them). +20 stress.
**Swelling-dependent:** Inherent.

---

### 5c. Secret Boss Curio

---

#### The Cold Hearth

**Dungeon:** The Ember Sanctum
**Visual:** In the deepest chamber of the volcanic temple, a single hearth sits completely cold. No embers, no ash, no soot. The stone is not charred but *bleached* — as if fire was not merely absent but actively removed. In a temple of eternal flame, this absence feels profoundly wrong.
**Spawn chance:** 11%
**Appears in:** Rooms (deep temple sections only)

**Activation requirements:**
1. Arcane Swelling must be at **Overwhelming (76–100)**.
2. Use a **Frost Shard** on the hearth (offering cold to the cold place).
3. The interacting hero must be **below 25% HP** (the fire god demands sacrifice, but the hearth's occupant demands desperation).

*The low HP requirement is the most dangerous condition — players must deliberately wound their hero before interacting, an enormous gamble.*

**Failed activation:**
- Without Overwhelming swelling: The hearth remains cold. Flavor text: *"The temple's fever hasn't broken enough for this."* +5 stress.
- With wrong supply: The supply is consumed harmlessly. The hearth absorbs it and remains unchanged. +10 stress.
- Without low HP: The Frost Shard is consumed. The hearth frosts over briefly. Flavor text: *"You bleed too little. It wants more."* +15 stress.

**Successful activation:**
The Frost Shard shatters on the cold hearth and the temperature in the room drops below freezing — frost crawls across every surface. The magma in adjacent chambers solidifies. The worshippers' charred skeletons crack and fall apart. In the hearth, a blue-white fire ignites — not hot, but cold. It burns a doorway into the volcanic rock, revealing a descending passage coated in frost. The **Heretic's Nave**.

**Secret boss:** ***Cindervane, the Apostate Flame***
Once the Ember Sanctum's high priest, Cindervane rejected the cult's fire god and sought to merge cold and flame into something new. For this heresy, the cult burned them alive. They did not die — they *became* the contradiction they preached. Cindervane is a figure of blue fire and black ice, constantly shifting between states. They attack with cold-fire that deals both fire AND cold damage simultaneously. Unique mechanic: *Heretic's Duality* — Cindervane has two HP bars (Fire Form and Ice Form). Damage of the same element heals that form (fire heals fire, cold heals cold). Players must use the opposite element against each form, or rely on physical/non-elemental damage.

**Secret boss loot:**

- **Cindervane's Paradox** *(Legendary Trinket)* — Equip: Hero's attacks deal both fire and cold damage (split 50/50). Immune to both Frostbite and Ember Marks. −10% DMG against non-elemental enemies. *"Two truths that should not coexist, held together by sheer spite."*
- **The Apostate's Vestments** *(Legendary Armor Trinket)* — Equip: When hit by fire damage, gain cold resist. When hit by cold damage, gain fire resist. Stacks up to 3 times each, lasts until end of combat. At 3 stacks of either, release a burst dealing 30 of the opposite element to all enemies. *"Heresy is just theology that won."*

---

## 6. The Arcane Maw

*Rift of pure arcane energy. Final dungeon.*

---

### 6a. Standard Curios

---

#### 6a.1 — Reality Seam

**Category:** Standard
**Dungeon:** The Arcane Maw
**Visual:** A vertical line in the air where the world doesn't quite match on either side — colors are slightly off, gravity pulls at a fractional angle, sound echoes before it's made. Reaching toward it makes the hero's hand appear to be in two places at once.
**Appears in:** Corridors

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 20% | Reach through the seam — pull out a trinket from another reality (rare, random high-value stats). |
| Neutral | 30% | The seam closes before the hero can act. Flavor text: *"Reality heals itself. You are the wound."* |
| Negative | 50% | Something reaches *back*. Hero takes 15 arcane damage, +20 stress, and gains *"Phase-Touched"* debuff (5% chance each round to randomly swap position with another party member for 3 combats). |

**Correct supply:** Warding Stones → Stabilize the seam before reaching in. Guaranteed rare trinket. No backlash risk. Arcane Swelling reduced by 5.
**Wrong supply:** Runestone Keys → The key tries to *open* the seam further. It tears wide — party takes 12 arcane damage each, +10 stress each, Arcane Swelling +15. Something emerges: ambush by a Reality Fragment enemy.
**Class-specific:** *Occultist / void-touched class* — Can perceive what's on the other side before reaching. Gets to *choose* between the trinket or a skill buff (+20% DMG for 4 combats).
**Swelling-dependent:** At Raging+, the seam is wider. Positive outcome trinket is always legendary quality. Negative outcome also causes the party to become *"Spatially Unstable"* (random room teleport after 3 rooms of walking).

---

#### 6a.2 — Echoing Spellform

**Category:** Standard
**Dungeon:** The Arcane Maw
**Visual:** A complex geometric pattern of light hovering in the air, rotating slowly. It's the remnant of a spell cast long ago, still repeating its final iteration. The geometry is beautiful but deeply unsettling — too many angles, impossible intersections.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Absorb the spellform — hero gains *"Spell Echo"* buff: the first skill used in each combat is cast twice (free double cast) for 3 combats. |
| Neutral | 30% | The pattern collapses. 75 gold in crystallized mana fragments. |
| Negative | 45% | The spell completes its cycle *through* the hero. Hero takes 20 arcane damage, +15 stress, gains *"Mana Bleed"* debuff (lose 3 HP per skill cast for the rest of the floor). |

**Correct supply:** Arcane Dampeners → Carefully attune to the spellform. Guaranteed *"Spell Echo"* buff for 5 combats. Arcane Swelling reduced by 8.
**Wrong supply:** Stormvial → Electrical interference scrambles the spell. It fires randomly — one random party member takes 20 arcane damage. The spellform becomes a *Chaos Echo* (environmental hazard in this room: random damage to anyone who enters).
**Class-specific:** *Mage / caster-type* — Can study the spellform: learns a temporary skill *"Arcane Echo"* (AoE arcane nuke, single use, massive damage).
**Swelling-dependent:** At Overwhelming, the *"Spell Echo"* buff is enhanced: double cast for the *entire* rest of the floor. But negative outcome *"Mana Bleed"* is permanent for the run.

---

#### 6a.3 — Void Puddle

**Category:** Standard
**Dungeon:** The Arcane Maw
**Visual:** A patch of floor that isn't there. Not a hole — the floor simply *stops existing* in a roughly circular area. Looking into it reveals nothing. Not darkness — *nothing*. Objects dropped in don't fall. They just stop being.
**Appears in:** Both

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 15% | Drop something in, something comes back — a powerful trinket from the void (legendary quality, random stats + *"Void-Marked"* property: +10% DMG, −5% max HP). |
| Neutral | 35% | Nothing goes in, nothing comes out. The void is indifferent. +5 stress from staring at it. |
| Negative | 50% | The void reaches for the hero. Takes 10 arcane damage, loses a random supply item (consumed by the void), +20 stress, and gains *"Void Gaze"* (−10% ACC, +5% crit for the rest of the floor — you aim poorly but strike true when you connect). |

**Correct supply:** Warding Stones → Establish a boundary with the void before bargaining. Safe exchange — guaranteed legendary trinket with no HP penalty. Arcane Swelling reduced by 10.
**Wrong supply:** Rations → The void doesn't eat. But something IN the void does. Party loses all Rations. Something incomprehensible whispers thanks. +25 stress.
**Class-specific:** None.
**Swelling-dependent:** At Overwhelming, the puddle has grown. Negative outcome also has a 10% chance of permanently removing one hero skill (randomly selected) — the void eats the memory of how to do it.

---

#### 6a.4 — Corrupted Echo Chamber

**Category:** Standard
**Dungeon:** The Arcane Maw
**Visual:** A spherical room where every surface is mirrored in impossible geometry. The reflections move independently of the heroes. Sometimes they act out events that haven't happened yet. Sometimes they show events that already did — but differently.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Watch the echoes carefully — gain scouting reveal (full floor) and foreknowledge of the next boss's attack pattern (+15% DODGE in boss fight). |
| Neutral | 30% | The echoes are incoherent. Flavor text: *"Time is a suggestion here, and the Maw suggests poorly."* |
| Negative | 45% | The hero's echo steps *out* of the mirror. Ambush by a Corrupted Echo of the interacting hero (enemy has the same class skills). +20 stress. |

**Correct supply:** Arcane Dampeners → Filter the echoes for useful information. Guaranteed scouting AND boss foreknowledge. Plus a clue about the Secret Boss curio (if present).
**Wrong supply:** Hemlock Salve → The organic material reacts with the arcane mirrors. All reflections shatter outward. Party takes 10 damage each. The room becomes unstable — heroes must flee (forced retreat from the room, losing any other loot).
**Class-specific:** Heroes above 75 stress — Their echo is *stronger* than them. The Corrupted Echo enemy spawns with +25% stats.
**Swelling-dependent:** At Stirring+, the echoes show fragments of the Arcane Maw's past — the chamber also reveals a hidden passage to a bonus room (25% chance).

---

#### 6a.5 — Mana Geyser

**Category:** Standard
**Dungeon:** The Arcane Maw
**Visual:** A vent in the floor from which raw, unfiltered arcane energy erupts periodically in a column of blinding violet light. The eruptions follow a rhythmic pattern. Between eruptions, the vent glows softly and hums.
**Appears in:** Both

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Time it right — bathe in the mana. Hero gains +20% to all skills' effectiveness for 3 combats. |
| Neutral | 25% | Mistimed. The geyser erupts harmlessly to the side. +5 stress from the near miss. |
| Negative | 50% | Caught in the eruption. Hero takes 20 arcane damage, +15 stress. Arcane Swelling +12. All hero buffs are stripped. |

**Correct supply:** Enchanted Tools → Regulate the geyser's flow. Guaranteed safe mana bath: +25% skill effectiveness for the rest of the floor. Arcane Swelling reduced by 10.
**Wrong supply:** Ember Flask → Fire and raw mana react explosively. AoE blast — party takes 15 damage each. Geyser becomes permanently active (room hazard: 10 damage to any hero ending their turn here).
**Class-specific:** *Mage / caster-type* — Can channel the geyser: buff lasts the rest of the run instead of 3 combats.
**Swelling-dependent:** At Overwhelming, the geyser erupts constantly. Cannot be safely interacted with without supply (negative outcome is guaranteed without Enchanted Tools). With supply, effectiveness buff is +35%.

---

#### 6a.6 — Whispering Grimoire

**Category:** Standard
**Dungeon:** The Arcane Maw
**Visual:** A massive book chained to a lectern of fused obsidian. Its pages turn themselves, each one covered in text that writhes and rearranges as you watch. The book whispers constantly — not in words, but in *concepts*.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 20% | Comprehend a fragment — hero gains a permanent +5% to a random stat (DMG, ACC, DODGE, SPD, or CRIT). |
| Neutral | 30% | The concepts are beyond mortal comprehension. +5 stress. Flavor text: *"You understood everything for a single, fleeting second. Then it was gone."* |
| Negative | 50% | The grimoire's whispers burrow in. +25 stress, hero gains *"Arcane Whispers"* negative quirk (−10% stress resist, +5% DMG — the knowledge helps but hurts). |

**Correct supply:** Runestone Keys → Unlock a specific chapter safely. Guaranteed permanent +5% to a stat of the player's CHOICE (select from the 5 options). +5 stress (manageable).
**Wrong supply:** Warding Stones → The ward is perceived as censorship. The grimoire *screams*. +30 stress to interacting hero, +15 to party. The book slams shut and cannot be interacted with again.
**Class-specific:** *Mage / caster-type* — The book recognizes a peer. Positive outcome gives +8% instead of +5%. Negative quirk's downside is halved (−5% stress resist instead of −10%).
**Swelling-dependent:** At Overwhelming, the book is fully awake. Positive outcome gives +10% stat boost. But negative outcome also causes Arcane Swelling +10 and the quirk becomes *"Grimoire's Chosen"* (−15% stress resist, +10% DMG — more extreme version).

---

### 6b. Swelling-Gated Curios

---

#### 6b.1 — The Unraveling Thread

**Category:** Swelling-Gated — **Raging (51–75)**
**Dungeon:** The Arcane Maw
**Visual:** A single luminous thread of energy hanging vertically in the center of a chamber, vibrating at a frequency that makes teeth ache. Where it touches the floor, reality has *unraveled* — the stone dissolves into its component atoms, hovering in a small cloud of dust-light. The thread appears to connect the floor to the ceiling, the ceiling to somewhere else.
**Appears in:** Rooms

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 25% | Pluck the thread — it resonates through the hero's body and recalibrates them. Full HP and stress heal for that hero. Arcane Swelling reduced by 15. |
| Neutral | 25% | The thread snaps and dissolves. Harmless. 100 gold in crystallized thread fragments. |
| Negative | 50% | The thread unravels the hero. Takes 25 arcane damage, +25 stress, and one random skill is *scrambled* (replaced with a glitched version: same damage but random target — can hit allies — for the rest of the floor). |

**Correct supply:** Warding Stones → Stabilize the thread before touching. Guaranteed full HP/stress heal AND the hero gains *"Reality-Anchored"* (+20% resist to all arcane effects for the rest of the run). Swelling reduced by 20.
**Wrong supply:** Stormvial → The electricity causes the thread to vibrate wildly. It lashes out — hero takes 30 damage. The room becomes an *Unraveling Zone* (all heroes take 5 arcane damage per round while in this room).
**Swelling-dependent:** Inherent. At Overwhelming, positive outcome also grants the hero a single-use ability: *"Reality Stitch"* — instantly negate one enemy attack (any damage, any source).

---

#### 6b.2 — The Maw's Eye

**Category:** Swelling-Gated — **Overwhelming (76–100)**
**Dungeon:** The Arcane Maw
**Visual:** The ceiling of the chamber is gone. In its place, an immense *eye* — not biological, not mechanical, but made of concentrated arcane energy — stares down. It fills the entire sky above the room. It blinks, slowly, and each blink sends a shockwave of raw mana through the floor. The heroes feel *seen* in a way that goes beyond the physical.
**Appears in:** Special room (The Maw's Gaze Chamber)

**Interaction without supply:**

| Outcome | Weight | Effect |
|---|---|---|
| Positive | 10% | The hero meets the Maw's gaze and is found worthy. Gain *"Maw-Seen"* — the most powerful buff in the game: +30% to all stats for the rest of the run. +40 stress (the knowledge of being seen by something infinite is crushing). |
| Negative | 90% | The Maw finds the hero *interesting*. Takes 30 arcane damage, +50 stress, gains *"Maw-Marked"* (enemies prioritize this hero, +25% damage taken for the rest of the run). All party buffs stripped. Arcane Swelling locked at 100 for the rest of the floor. |

**Correct supply:** Arcane Dampeners → Shield the hero's mind while meeting the gaze. Guaranteed *"Maw-Seen"* buff with only +20 stress. Swelling reduced by 25.
**Wrong supply:** Any elemental supply (Ember Flask, Frost Shard, Stormvial, Gale Dust) → Elemental offerings are *insults* to pure arcane force. The eye narrows. Party takes 25 arcane damage each. +30 stress each. 2 random supply items are destroyed. The eye does not blink for the rest of the floor (ambient +5 stress per room).
**Swelling-dependent:** Inherent. This is the endgame risk/reward curio — the ultimate gamble.

---

### 6c. Secret Boss Curio

---

#### The Door That Was Always There

**Dungeon:** The Arcane Maw
**Visual:** A perfectly ordinary wooden door set into the wall of the Arcane Maw. It has a brass handle, a simple frame, and no magical aura whatsoever. It is, without question, the most unsettling thing in the entire dungeon. Nothing in the Arcane Maw is ordinary. This door is.
**Spawn chance:** 15%
**Appears in:** Corridors (any section)

**Activation requirements:**
1. Arcane Swelling must be at **exactly Stirring (26–50)** — not too low, not too high. The door exists in the liminal space.
2. The hero must use **no supply item** — just open the door (choosing to Interact with bare hands).
3. The party must have **exactly 4 members alive** — a full party, no deaths, no vacancies.

*The "no supply item" requirement is the most counterintuitive element — every other secret boss curio requires a supply. This one requires trust. The "exactly 4 alive" condition means the door only opens for those who have lost no one — or more cryptically, the door is for those who still have something to lose.*

**Failed activation:**
- Wrong swelling: The door won't open. It's just a door. +5 stress. Flavor text: *"You try the handle. Locked. But it never was before."*
- Using a supply: The supply vanishes when it touches the door. Not consumed — just *gone*. +15 stress. Flavor text: *"The door does not want gifts. It wants you."*
- Not 4 party members: The door opens to a blank wall. +10 stress. Flavor text: *"You are not enough. Or too much. It cannot tell."*

**Successful activation:**
The hero opens the door. Beyond it is a perfectly ordinary room — four walls, a wooden floor, a single candle burning on a table. The party enters. The door closes behind them and is gone. The candle's flame doesn't flicker. The room is silent. Then the candle goes out, and they are no longer in an ordinary room. They are in the **The Boundless Study** — an infinite library of every spell ever cast and never cast, stretching in every direction. Something sits in the center, reading. It looks up.

**Secret boss:** ***The Archivist***
Not a monster, not a demon, not a god — just a *librarian*. An impossibly old figure in nondescript robes, sitting at a desk piled with books. They are polite. They are patient. They are the most dangerous entity in the game. The Archivist has catalogued every spell in existence and can cast any of them. Unique mechanic: *Infinite Repertoire* — The Archivist's attacks are randomized from a pool of every spell type in the game (fire, cold, lightning, wind, arcane, void, holy, bleed, poison, stun, buff, debuff). Players cannot predict what's coming. Every round, The Archivist "reads" a new page and gains a new ability. After 10 rounds, The Archivist starts casting two spells per turn. After 20 rounds, three. The fight is a DPS race against an escalating omniscient threat.

**Secret boss loot:**

- **The Archivist's Bookmark** *(Legendary Trinket)* — Equip: At the start of each combat, the hero "reads ahead" — see the enemy's next 2 actions before they occur (displayed as skill icons). +10% to all stats. *"Knowing the future doesn't change it. But it helps."*
- **Quill of Infinite Notation** *(Legendary Trinket)* — Equip: Once per combat, the hero can *copy* an enemy's last-used skill and use it themselves at 75% effectiveness. Cooldown resets each combat. *"The Archivist offered to teach you everything. This was the compromise."*

---

*End of Curio System Design Document.*
