# The Shattered Conduit — Boss Encounters

---

## Tier 1 Semi-Boss: The Voltaic Sentinel

**Tier:** 1

**Visual Description:** A hulking arcane golem of cracked obsidian and copper conduit, standing rigid like a monument. Its chest cavity houses a spinning orb of captured lightning that flickers erratically. One arm ends in a jagged bronze shield, the other in a coil of arcing wire that drags along the floor.

**Size:** 2 positions (positions 1-2)

**Base Stats:**
- HP: 85
- Speed: 3
- Dodge: 8
- Accuracy: 82

**Resistances:**
- Immune: Lightning, Stun
- Resistant: Bleed (75%), Poison (80%)
- Vulnerable: Blunt (+25%), Ice (+15%)

**Adds:**
- 1× Spark Filament (position 3) — fragile spark elemental (HP: 18, Speed: 5). Exists to channel Surge Round warnings. If killed, the Sentinel loses Surge awareness for 2 turns, then resummons it.

**Abilities (4):**

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Arc Slam** | 1-2 | Pos. 1-2 | Blunt 8-12 | 30% Stun (1 turn) |
| **Wire Lash** | 1-2 | Pos. 2-3 | Lightning 5-8 | Moves target forward 1 position |
| **Grounding Pulse** | 1-2 | All heroes | Lightning 3-5 | Removes all positive buffs from party; +8 stress to each hero |
| **Sentinel's Guard** | 1-2 | Self | — | Gains 40% PROT for 2 turns; Spark Filament gains +3 Speed |

**Signature Mechanic — Residual Charge:**
Each time the Sentinel takes Lightning damage (from Stormcaller abilities or reflected Surge Rounds), it gains a stack of Residual Charge (max 3). At 3 stacks, its next attack becomes **Discharge Overload**: hits all heroes for Lightning 10-14 + 15 stress. Stacks decay by 1 per turn if no new Lightning damage is taken. This teaches players that Lightning damage is counterproductive here.

**Dungeon Mechanic Interaction (Surge Rounds):**
The Spark Filament shows which positions will be struck next turn (visual indicator). The Sentinel itself is immune to Surge damage. If a hero is hit by a Surge Round, the Sentinel gains 1 Residual Charge stack. Players must respect position warnings while managing charge buildup.

**Intended Strategy:**
Prioritize the Spark Filament to temporarily blind the Sentinel's Surge awareness, giving breathing room. Use Blunt and Ice damage — avoid Lightning entirely. Manage positioning to dodge Surge Rounds and avoid being pulled forward into Arc Slam range. Bring a stress healer or be prepared to eat Grounding Pulse stress. Kill the Filament, burst damage during the 2-turn resummon window.

**What It Punishes:**
- Stormcaller-heavy parties (feeds Residual Charge)
- Ignoring the Spark Filament (losing Surge information)
- Clumping in front positions (Arc Slam + Surge overlap)
- Buff-reliant strategies (Grounding Pulse strips them)

---

## Tier 1 Boss: Arcwright Valdris, the Overcharged

**Tier:** 1

**Visual Description:** Once the Conduit's chief artificer, Valdris is now fused with his own lightning harness — a cage of copper ribs bolted into his spine, crackling with perpetual discharge. His eyes are burned-out sockets leaking pale light. He moves in jerky, puppet-like spasms, one hand clutching a voltaic scepter, the other a mass of melted tools fused to flesh. Sparks cascade from his mouth when he speaks garbled commands to machines that no longer exist.

**Size:** 1 position (position 2)

**Base Stats:**
- HP: 130
- Speed: 5
- Dodge: 15
- Accuracy: 88

**Resistances:**
- Immune: Lightning
- Resistant: Magic (50%), Stun (60%)
- Vulnerable: Ice (+20%), Blunt (+15%)

**Adds:**
- Starting: 1× Voltaic Drone (position 1, HP: 30, Speed: 4) — melee blocker with Guard ability
- Mid-fight summon: At 50% HP, summons 1× Overcharged Construct (position 3-4, HP: 35, Speed: 3) — ranged Lightning attacker

**Phases:**

### Phase 1 — The Artificer (100%-50% HP)

Valdris fights as a caster-commander, buffing his Drone and punishing backline.

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Voltaic Command** | 2 | Voltaic Drone | — | Drone gains +25% DMG and Riposte for 2 turns |
| **Scepter Arc** | 2 | Pos. 3-4 | Lightning 7-10 | +12 stress; bypasses Guard |
| **Static Field** | 2 | All heroes | — | All heroes gain "Charged" debuff: next magic ability used triggers 6 Lightning self-damage |
| **Redirect Current** | 2 | Self | — | Gains 50% PROT until next turn; heals Drone for 15 HP |

### Phase 2 — Overcharged (below 50% HP)

Valdris rips the scepter apart and channels raw current through his body. Summons the Overcharged Construct. Gains +2 Speed, -10 Dodge. Loses Voltaic Command and Redirect Current.

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Galvanic Torrent** | 2 | Pos. 1-3 | Lightning 9-13 | Hits all targets in range; 25% Stun each |
| **Scepter Arc** | 2 | Pos. 3-4 | Lightning 9-12 | +15 stress; bypasses Guard |
| **Meltdown Pulse** | 2 | All heroes | Lightning 4-6 | Removes "Charged" debuffs and detonates them: each detonated stack deals 10 extra Lightning damage to that hero |
| **Desperate Surge** | 2 | Self | — | Self-damage 8; next attack deals double damage. Used when below 25% HP. |

**Signature Mechanic — Static Field / Charged Detonation:**
The "Charged" debuff is central. In Phase 1, Valdris applies it — heroes must choose between using magic abilities (triggering self-damage) or fighting physically. In Phase 2, Meltdown Pulse detonates all remaining Charged stacks for massive burst. The puzzle: cleanse Charged before Phase 2 transition, or deliberately trigger them in Phase 1 (eating small self-damage) to avoid the catastrophic detonation.

**Dungeon Mechanic Interaction (Surge Rounds):**
Surge Rounds still fire. Valdris is immune. The Voltaic Drone and Overcharged Construct are also immune. Heroes hit by Surge Rounds gain 1 Charged stack. This adds urgency to position management — standing in a Surge zone not only deals damage but loads another detonation stack.

**Intended Strategy:**

*Phase 1:* Kill the Voltaic Drone quickly to remove Guard and Riposte threat. Use physical damage to avoid triggering Charged self-damage. Cleanse Charged stacks before Phase 2 (Cleric or Alchemist). Focus Ice/Blunt damage on Valdris. Dodge Surge Rounds religiously.

*Phase 2:* Burst down the Overcharged Construct before it adds too much backline pressure. Valdris is faster but squishier (less Dodge). Avoid clustering for Galvanic Torrent. If Charged stacks remain, expect Meltdown Pulse and heal preemptively. Push through Desperate Surge turns carefully — he hits hard but damages himself.

**What It Punishes:**
- Magic-heavy parties without cleanse (Charged stacks annihilate them)
- Ignoring the Drone (Riposte + Guard stalls damage)
- Slow teams that let Charged stacks accumulate into Phase 2
- Backline-only strategies (Scepter Arc bypasses Guard and hits rear)
- Tank-and-heal stalling (Desperate Surge scaling + Meltdown Pulse burst)

**Guaranteed Loot:**
- **Valdris's Fused Scepter** (Trinket) — +15% Lightning resistance, +10% Magic damage. When the hero takes Lightning damage, gain +2 Speed for 1 turn.
- **Blueprint: Grounding Charm** (Crafting material) — used to craft a trinket that grants Charged immunity.

---

## Tier 2 Semi-Boss: The Chained Resonant

**Tier:** 2

**Visual Description:** A gaunt, androgynous figure suspended two feet off the ground by chains of solidified lightning bolted into the walls and ceiling. Its body is covered in alchemical brands that glow white-hot. Its mouth is sewn shut with copper wire, but it screams through vibrations that rattle teeth and bones.

**Size:** 1 position (position 2)

**Base Stats:**
- HP: 110
- Speed: 6
- Dodge: 20
- Accuracy: 85

**Resistances:**
- Immune: Lightning, Move (cannot be moved — chained in place)
- Resistant: Stun (70%), Bleed (60%)
- Vulnerable: Fire (+20%), Slash (+15%)

**Adds:**
- 2× Chain Anchor (positions 1 and 3, HP: 25 each, Speed: 0) — immobile objects. While both live, the Resonant has +30% PROT and immunity to Stun. Destroying one removes the PROT bonus; destroying both removes Stun immunity and reduces Dodge by 10.

**Abilities (5):**

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Harmonic Shriek** | 2 | All heroes | Magic 4-7 | +18 stress to all; 20% chance to apply Affliction-tier stress effect "Dissonance" (hero acts erratically for 1 turn — random target selection) |
| **Resonance Bolt** | 2 | Pos. 1-2 | Lightning 8-11 | Target becomes "Conductive" for 2 turns |
| **Frequency Shift** | 2 | Self | — | Swaps own resistances: Fire vulnerability becomes Fire resistance, Slash vulnerability becomes Slash resistance. Lasts 3 turns. Telegraphed by visual color shift. |
| **Chain Pull** | 2 | Pos. 3-4 | — | Moves target forward 2 positions; +10 stress |
| **Tethered Agony** | 2 | 1 Conductive hero | Lightning 6-9 | Damage is shared with all other Conductive heroes (T2 Conductive Chains preview) |

**Signature Mechanic — Conductive / Tethered Agony:**
Resonance Bolt applies "Conductive" to a hero. Tethered Agony then damages one Conductive hero and splits that damage to all other Conductive heroes. With 2-3 Conductive heroes, total party damage skyrockets. This is the player's first serious encounter with the Conductive Chains concept before it becomes a permanent dungeon mechanic in T2.

**Dungeon Mechanic Interaction (Surge Rounds + Overload):**
Surge Rounds continue. Additionally, the Overload mechanic is active: using 3+ magic abilities within 2 consecutive party turns triggers a discharge hitting the whole party for Lightning 5-8. The Resonant forces a dilemma — its Fire/Slash vulnerabilities encourage Pyromancer or Berserker, but the Pyromancer risks Overload if spamming fire spells. Players must pace their magic usage.

**Intended Strategy:**
Destroy both Chain Anchors first to strip the Resonant's PROT and Stun immunity, making it vulnerable to burst. Watch for Frequency Shift — when it swaps resistances, switch damage types accordingly (the color shift telegraphs it). Cleanse Conductive immediately to prevent Tethered Agony chains. Mix physical and magical damage to avoid Overload. Chain Pull punishes backliners who feel safe — bring a Duelist or movement-resist trinkets.

**What It Punishes:**
- Ignoring Chain Anchors (30% PROT makes the fight interminable)
- Stacking Conductive without cleansing (exponential damage from Tethered Agony)
- Pure caster parties (Overload punishes magic spam)
- Rigid damage-type strategies (Frequency Shift invalidates one type mid-fight)
- Low-stress-resist parties (Harmonic Shriek + Dissonance cause chaos)

---

## Tier 2 Boss: Director Solvane, the Living Circuit

**Tier:** 2

**Visual Description:** Solvane was the Conduit's director of experimental research. Her lower body has been replaced by a hovering platform of arcing conduit coils that serve as her throne and locomotion. Her upper body is intact but etched with circuit-like scars that pulse with each heartbeat. She wears a cracked monocle fused to her eye socket that lets her "read" the electrical impulses of living beings. Two mechanical arms extend from her chair's backrest, each ending in a different instrument — one a surgical lance, the other a tuning fork that hums with subsonic dread.

**Size:** 2 positions (positions 1-2)

**Base Stats:**
- HP: 170
- Speed: 5
- Dodge: 18
- Accuracy: 90

**Resistances:**
- Immune: Lightning, Poison
- Resistant: Stun (65%), Magic (40%)
- Vulnerable: Ice (+25%), Bleed (+15%)

**Adds:**
- Starting: 1× Test Subject Alpha (position 3, HP: 40, Speed: 4) — melee Bleed attacker with moderate HP
- Mid-fight summon (Phase 2): 1× Test Subject Beta (position 4, HP: 35, Speed: 6) — ranged Lightning attacker that applies Conductive

**Phases:**

### Phase 1 — The Researcher (100%-45% HP)

Solvane studies the party, debuffing and applying Conductive status while her Test Subject tanks.

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Diagnostic Probe** | 1-2 | Pos. 1-2 | Pierce 6-9 | Marks target for 3 turns; Marked heroes take +25% damage from all sources |
| **Circuit Mapping** | 1-2 | Pos. 2-3 | Lightning 5-8 | Applies Conductive to target and one adjacent ally |
| **Subsonic Dread** | 1-2 | Pos. 3-4 | — | +20 stress; -15% damage dealt debuff for 2 turns |
| **Redirect Specimen** | 1-2 | Test Subject | — | Test Subject gains Guard (protecting Solvane) + heals 15 HP |
| **Data Harvest** | 1-2 | 1 Marked hero | Magic 4-6 | Solvane heals HP equal to damage dealt × 2; removes Mark |

**Phase 1 Behavior:** Solvane prioritizes Marking a frontliner, then Circuits the backline. She uses Data Harvest on Marked targets for sustain, making Mark removal critical. Redirect Specimen keeps her protected.

### Phase 2 — The Experiment (below 45% HP)

Solvane declares the party "viable subjects" and becomes aggressive. Summons Test Subject Beta. Gains +3 Speed. Her circuit scars glow continuously.

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Vivisection Arc** | 1-2 | Pos. 1-3 | Lightning 10-14 + Bleed 3/turn (3 turns) | Bypasses Guard; 30% Stun |
| **Chain Resonance** | 1-2 | All Conductive heroes | Lightning 8-11 | Damage shared between all Conductive heroes (Conductive Chains mechanic); +12 stress each |
| **Subsonic Dread** | 1-2 | Pos. 3-4 | — | +25 stress (upgraded); -20% damage dealt debuff for 2 turns |
| **Emergency Protocol** | 1-2 | Self + all adds | — | All allies gain +20% PROT and +15 Dodge for 2 turns. Used once when first dropping below 25% HP. |
| **Neural Overwrite** | 1-2 | 1 hero at Death's Door | — | Forces target to attack a random ally on their next turn; +30 stress to the controlled hero |

**Signature Mechanic — Circuit Mapping / Chain Resonance Loop:**
Solvane systematically applies Conductive to multiple heroes via Circuit Mapping, then detonates them all with Chain Resonance for shared-and-amplified damage. In Phase 2, Test Subject Beta also applies Conductive, accelerating the loop. The puzzle is managing Conductive cleansing across the whole party — one cleanse per turn isn't enough if both Solvane and Beta are applying it.

**Dungeon Mechanic Interaction (Surge Rounds + Overload):**
Both T1 and T2 mechanics active. Surge Rounds hit heroes (Solvane and adds are immune); heroes hit by Surge gain Conductive. Overload punishes magic spam. Solvane's design forces players to use magic for cleansing (Alchemist/Cleric) but rations it around Overload. The tension between "need magic to cleanse" and "magic triggers Overload" is the core T2 puzzle.

**Intended Strategy:**

*Phase 1:* Kill Test Subject Alpha to remove Guard. Remove Marks immediately to deny Data Harvest healing. Avoid letting multiple heroes carry Conductive — cleanse aggressively. Use Ice damage on Solvane. Save Bleed-applying abilities for Solvane (she's vulnerable). Pace magic usage to avoid Overload — alternate physical and magical turns.

*Phase 2:* Kill Test Subject Beta as top priority (it accelerates Conductive spread). Expect Vivisection Arc to punish frontliners hard — keep them above Death's Door to avoid Neural Overwrite. Burst Solvane through Emergency Protocol (it's used once — tank the 2 turns of PROT and push). Stack Bleed on her for sustained damage through her defensive turns.

**What It Punishes:**
- Ignoring Marks (Data Harvest heals Solvane substantially)
- No cleanse in party comp (Conductive chains become lethal)
- All-magic parties (Overload triggers constantly)
- Letting heroes hit Death's Door (Neural Overwrite turns allies into enemies)
- Slow attrition strategies (Solvane heals, debuffs mount, stress spirals)
- Ignoring adds (Guard + Conductive spread overwhelm)

**Guaranteed Loot:**
- **Solvane's Analytical Monocle** (Trinket) — +10% Accuracy, +15% debuff skill chance. When the hero cleanses an ally, gain +10% damage dealt for 1 turn.
- **Conductive Thread Spool** (Crafting material) — used to craft Conductive-resistance accessories.

---

## Tier 3 Semi-Boss: The Fulgurite Warden

**Tier:** 3

**Visual Description:** A massive humanoid figure made entirely of fulgurite — glass formed by lightning striking sand — with a molten core visible through translucent limbs. It carries a tower shield of fused glass and metal that hums with stored charge. Cracks in its body leak incandescent light, and smaller fulgurite shards orbit it like satellites.

**Size:** 2 positions (positions 1-2)

**Base Stats:**
- HP: 155
- Speed: 4
- Dodge: 10
- Accuracy: 88

**Resistances:**
- Immune: Lightning, Stun
- Resistant: Pierce (60%), Bleed (80%), Poison (70%)
- Vulnerable: Blunt (+30%), Fire (+15%)

**Adds:**
- 2× Fulgurite Shard (positions 3-4, HP: 20 each, Speed: 7) — fast, fragile. Each living Shard grants the Warden +1 action per turn (base 1, max 3 with both Shards alive).

**Abilities (5):**

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Vitrified Slam** | 1-2 | Pos. 1-2 | Blunt 12-16 | Target gains "Brittle" debuff: +30% damage taken from all sources for 2 turns |
| **Shield Capacitor** | 1-2 | Self | — | Absorbs next incoming attack (any type); converts it into a Lightning counterattack dealing 10-14 to the attacker |
| **Glass Storm** | 1-2 | Pos. 1-4 (random 2 targets) | Slash 6-9 | Bleed 2/turn (3 turns); applies Conductive to both targets |
| **Tether Chain** | 1-2 | 2 heroes | — | Tethers two heroes with Conductive Chain (T3 mechanic): tethered heroes share 50% of all damage taken for 3 turns |
| **Warden's Judgment** | 1-2 | Lowest-HP hero | Lightning 8-12 | If target is Brittle, damage is doubled; +15 stress |

**Signature Mechanic — Shield Capacitor + Brittle Combo:**
The Warden alternates between offense and defense. Shield Capacitor absorbs one attack and punishes the attacker. Brittle from Vitrified Slam sets up Warden's Judgment for devastating focused damage. The puzzle: bait Shield Capacitor with a low-damage ability, then unload heavy hits. Never leave a Brittle hero as the lowest-HP target or Warden's Judgment will execute them.

**Dungeon Mechanic Interaction (Surge Rounds + Overload + Conductive Chains):**
All three T1-T3 mechanics active. Tether Chain applies the T3 Conductive Chain mechanic directly — tethered heroes share damage. Surge Rounds hitting a tethered hero splash to their partner. Overload still punishes magic spam. The Fulgurite Shards don't interact with mechanics but their extra actions mean the Warden can apply Tether + Brittle + Judgment in a single round if both Shards live.

**Intended Strategy:**
Kill both Fulgurite Shards immediately — reducing the Warden from 3 actions to 1 per turn transforms the fight from overwhelming to manageable. Use a low-damage ability (or a Rogue's weaker attack) to trigger and waste Shield Capacitor, then follow with heavy Blunt damage. Cleanse Brittle or heal the Brittle target above the "lowest HP" threshold before Warden's Judgment lands. Cleanse Conductive Chains to prevent Surge splash cascades. Alternate magic and physical to manage Overload.

**What It Punishes:**
- Ignoring Shards (3 actions per turn is near-impossible to survive long)
- Pure physical parties with one big hitter (Shield Capacitor reflects it)
- Letting Brittle + lowest HP overlap (guaranteed near-death or kill)
- No chain-cleanse capability (tethered Surge damage cascades)
- Slow, grindy parties (Warden's action economy with Shards is oppressive)

---

## Tier 3 Boss: Conductor Herault, the Undying Frequency

**Tier:** 3

**Visual Description:** Herault was the Conduit's master of frequency modulation — an artificer who discovered how to encode consciousness into electrical patterns. His body is long dead, a skeletal frame held together by copper wire and arcane bindings, but his mind persists as a visible standing wave of lightning that surrounds his remains like a second skin. He hovers in a lotus position above a ruined control console, gesturing with skeletal hands that trail arcs of plasma. The air around him vibrates at a frequency that causes nosebleeds and migraines in the living.

**Size:** 1 position (position 2)

**Base Stats:**
- HP: 200
- Speed: 7
- Dodge: 25
- Accuracy: 92

**Resistances:**
- Immune: Lightning, Poison, Bleed
- Resistant: Magic (50%), Stun (80%)
- Vulnerable: Ice (+25%), Blunt (+20%)

**Adds:**
- Starting: 2× Frequency Node (positions 1 and 3, HP: 30 each, Speed: 0, immobile objects)
- Mid-fight summon (Phase 2): 1× Echo of Herault (position 4, HP: 45, Speed: 6) — a mirror-image caster

**Phases:**

### Phase 1 — The Broadcast (100%-40% HP)

Herault controls the battlefield through Frequency Nodes that create resonance zones.

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Frequency Lock** | 2 | 1 hero | — | Target cannot change position for 3 turns; +15 stress |
| **Resonance Cascade** | 2 | All heroes in positions adjacent to a Frequency Node | Lightning 7-10 | Damage increases by +3 for each living Node (max +6) |
| **Neural Static** | 2 | Pos. 3-4 | Magic 5-8 | 40% chance to prevent target from using their highest-damage ability next turn |
| **Phase Shift** | 2 | Self | — | Herault becomes intangible: 75% Dodge for 1 turn, takes no damage from physical attacks |
| **Tether Broadcast** | 2 | 2 heroes | — | Applies Conductive Chain between targets; if one is Frequency-Locked, the chain cannot be cleansed while the lock persists |

**Phase 1 Behavior:** Herault Frequency-Locks a key hero (healer or DPS), then Tethers them to another hero, creating an uncleansable damage-sharing chain. Resonance Cascade punishes heroes standing near Nodes. The puzzle: destroy Nodes to reduce Cascade damage and remove the "adjacent" zones, but Herault uses Phase Shift to buy time.

### Phase 2 — The Echo Chamber (below 40% HP)

Herault's frequency destabilizes. He summons the Echo of Herault — a copy that shares his ability list but with reduced damage. Herault himself gains +2 Speed and replaces Phase Shift with a new ability.

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Frequency Lock** | 2 | 1 hero | — | Same as Phase 1 |
| **Harmonic Convergence** | 2 | All heroes | Lightning 6-9 + Magic 4-6 | Dual-type damage; all Conductive Chains detonate for +8 bonus damage per chain |
| **Neural Static** | 2 | Pos. 3-4 | Magic 7-10 | Upgraded: 50% ability lockout |
| **Frequency Inversion** | 2 | All heroes | — | Swaps all heroes' positions (1↔4, 2↔3); +20 stress to all; breaks formation |
| **Dying Frequency** | 2 | Self | — | Used below 15% HP. Herault overloads, dealing Lightning 15-20 to all heroes over 2 turns. If he is not killed in those 2 turns, he heals to 30% HP. |

**Echo of Herault abilities (reduced):** Uses Resonance Cascade (reduced damage), Neural Static, and Tether Broadcast. Cannot use Frequency Lock or Harmonic Convergence.

**Signature Mechanic — Frequency Lock + Uncleansable Tether:**
The combination of Frequency Lock (position lock) and Tether Broadcast (damage sharing) creates a strategic nightmare: a locked hero shares damage with their tethered partner, and the chain can't be cleansed until the lock expires. The party must either eat the shared damage or focus on destroying the hero's tether partner's threats while managing the lock duration.

**Dungeon Mechanic Interaction (All Three Tiers):**
- **Surge Rounds:** Active; Frequency-Locked heroes cannot dodge Surge Rounds by repositioning, making locks near Surge zones extremely dangerous.
- **Overload:** Magic spam triggers discharge; Herault's fight requires magic for cleansing and killing Nodes but Overload caps how fast players can do it.
- **Conductive Chains:** Herault applies them directly and Harmonic Convergence detonates them. Surge Rounds hitting chained heroes cascade damage.

**Intended Strategy:**

*Phase 1:* Destroy Frequency Nodes immediately to reduce Resonance Cascade damage and remove danger zones. Cleanse Conductive Chains on heroes who are not Frequency-Locked (locked chains can't be cleansed). Bait Phase Shift with a weak attack, then unload Ice/Blunt damage. Keep the party spread to minimize Tether targets. Manage magic usage around Overload — use physical DPS to destroy Nodes.

*Phase 2:* Kill the Echo of Herault fast — it doubles the Tether and Neural Static pressure. Prepare for Frequency Inversion (carry repositioning abilities). Push through Dying Frequency with burst damage — if Herault heals to 30%, the fight effectively resets. Stack DoT-immune damage types (Ice, Blunt) since he resists Bleed/Poison.

**What It Punishes:**
- Immobile parties (Frequency Lock + Surge Rounds in locked positions = death)
- No cleanse capability (uncleansable Tethers dominate if Lock is combined)
- Pure magic parties (Overload + Neural Static ability lockout)
- Low burst damage (Dying Frequency punishes inability to finish)
- Ignoring Nodes/Echo (Resonance Cascade scaling + doubled pressure)
- Formation-dependent parties (Frequency Inversion scrambles positions)

**Guaranteed Loot:**
- **Herault's Standing Wave** (Trinket) — +15% Speed, +20% Stun resistance. When this hero is moved involuntarily, gain +15% damage dealt for 2 turns.
- **Encoded Consciousness Fragment** (Crafting material) — used to craft a trinket granting Frequency Lock immunity.

---

## Final Boss: The Shattered Nexus

**Visual Description:** The Nexus is not a creature but an event — the living core of the Conduit itself, a rift in reality where lightning was first drawn from another plane. It manifests as a towering column of fractured crystal suspended in a cage of perpetual lightning, rotating slowly. Within the crystal, a face can be seen — enormous, agonized, neither human nor inhuman — the original entity whose energy was harvested to power the Conduit. As the fight progresses, the crystal cracks further, the face becomes clearer, and arms of solid lightning reach out from the column. In its final phase, the crystal shatters entirely, revealing a being of pure electrical wrath — a storm given anatomy, with a skeletal frame of lightning and wings of arcing plasma that fill the arena.

**Size:** 3 positions (positions 1-3 in Phase 1-2; positions 1-3 in Phase 3)

**Lore Snippet:** The Conduit was never a laboratory — it was a prison. The artificers discovered a planar entity of living lightning and built the facility to siphon its power. Decades of extraction fractured both the entity and the facility. The Nexus is the entity's attempt to reconstitute itself, using the Conduit's infrastructure as a new body. Destroying it means either freeing it — or finishing what the artificers started.

**Phases:**

### Phase 1 — The Imprisoned Storm (100%-65% HP)

**Trigger:** Fight begins.

**Visual:** The crystal column rotates, crackling. Lightning chains connect it to the walls. The face within is barely visible.

**Stat Changes:** Base stats.
- HP: 350
- Speed: 4
- Dodge: 12
- Accuracy: 85

**Resistances:**
- Immune: Lightning
- Resistant: Stun (90%), Magic (40%), Bleed (70%)
- Vulnerable: Blunt (+25%), Ice (+20%)

**Abilities (5):**

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Cage Discharge** | 1-3 | All heroes | Lightning 5-8 | Heroes in positions matching Surge Round warnings take double damage |
| **Crystal Refraction** | 1-3 | Pos. 1-2 | Magic 8-12 | Damage type changes to match the last element used against the Nexus (if hit with Ice, this deals Ice damage next cast) |
| **Imprison** | 1-3 | 1 hero | — | Target is "Imprisoned" — stunned for 1 turn, then released with Conductive and -25% damage dealt for 2 turns; +25 stress |
| **Siphon** | 1-3 | 1 hero | Magic 4-6 | Drains HP; Nexus heals for damage dealt × 3 |
| **Conduit Pulse** | 1-3 | — | — | Accelerates Surge Round timer by 1 turn (next Surge comes sooner); +10 stress to all |

**Phase-Specific Mechanic — Adaptive Crystal:**
Crystal Refraction copies the last element used against the Nexus. If the party uses varied damage types, Refraction cycles and remains unpredictable. If the party spams one element, Refraction becomes that element permanently, allowing them to build resistance against it — but at the cost of not exploiting varied vulnerabilities. This encourages damage-type diversity.

### Phase 2 — The Cracking (65%-30% HP)

**Trigger:** HP drops below 65%.

**Visual:** The crystal cracks violently. The face is now clearly visible — one eye opens. Arms of lightning extend from the column's sides. The arena's walls begin arcing with stray current.

**Stat Changes:** +3 Speed, +5 Dodge. Gains new abilities. Loses Siphon.

**Abilities (5):**

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Cage Discharge** | 1-3 | All heroes | Lightning 7-10 | Upgraded damage; Surge overlap still doubles it |
| **Reaching Grasp** | 1-3 | Pos. 3-4 | Lightning 10-14 | Pulls target to position 1; applies Conductive Chain to target and hero already in pos. 1; +15 stress |
| **Crystal Refraction** | 1-3 | Pos. 1-2 | Magic 10-15 | Upgraded damage; same adaptive mechanic |
| **Overload Trigger** | 1-3 | — | — | Forces the Overload counter to fill instantly — next magic ability by any hero triggers the discharge regardless of how many were used |
| **Fracture Wave** | 1-3 | All heroes | Blunt 6-9 + Lightning 4-7 | Dual damage; all Conductive heroes take +5 bonus damage; 20% Stun each |

**Phase-Specific Mechanic — Overload Weaponization:**
Overload Trigger primes the Overload mechanic to fire on the next single magic ability. This forces the party into a pure-physical turn or to sacrifice one hero to "eat" the Overload discharge for the team (using a magic ability while the rest attack physically). A Cryomancer or Alchemist with Lightning resistance can serve as the designated trigger.

### Phase 3 — The Unbound (below 30% HP)

**Trigger:** HP drops below 30%.

**Visual:** The crystal shatters completely. The entity unfolds — a skeletal frame of lightning with plasma wings spanning the arena. Its face is now fully visible: a howling, inhuman visage of pure electrical fury. The ceiling tears open, revealing a storm above. All remaining dungeon infrastructure sparks and dies.

**Stat Changes:** +5 Speed (total 12), +10 Dodge (total 27), -20% PROT (it's exposed without the crystal). Gains entirely new ability set. Surge Rounds now fire every 2 turns instead of their normal interval.

**Abilities (5):**

| Ability | Usable Pos. | Target | Damage | Special |
|---|---|---|---|---|
| **Storm Incarnate** | 1-3 | All heroes | Lightning 8-12 + Wind 4-6 | Shuffles all hero positions randomly; +15 stress to all |
| **Annihilation Arc** | 1-3 | Pos. 1 | Lightning 18-24 | Single-target devastation; ignores PROT; if target is on Death's Door, guaranteed deathblow |
| **Chain Lightning** | 1-3 | Pos. 1-4 (bounces) | Lightning 6-8 per bounce | Hits position 1, then bounces to each Conductive hero in sequence, gaining +3 damage per bounce |
| **Planar Scream** | 1-3 | All heroes | — | +30 stress to all; all heroes gain Conductive; cannot be resisted |
| **Reconstitute** | 1-3 | Self | — | Used once when first dropping below 15% HP. Heals 50 HP. Next 2 turns, takes 50% reduced damage. If not killed during or immediately after, heals another 50 HP. |

**Phase-Specific Mechanic — Storm Incarnate Repositioning + Annihilation Arc Targeting:**
Storm Incarnate randomly shuffles the party every time it's used. Annihilation Arc always targets position 1 and is almost certainly lethal. The combination means the party cannot predict who will be in position 1 after a shuffle — any hero could be the Annihilation Arc target. Players must keep everyone's HP high enough to survive being thrown to position 1, or bring movement abilities to reposition after shuffles. Heroes on Death's Door in position 1 are dead.

**Signature Mechanic (All Phases) — The Nexus Heartbeat:**
Every 4 turns across all phases, the Nexus emits a "Heartbeat" — a massive arena-wide pulse that deals Lightning 3-5 to all heroes and advances the Arcane Swelling gauge by 8. This is constant and unpreventable. It creates a hard timer: the longer the fight goes, the more Arcane Swelling accumulates, and the closer heroes get to the Swelling threshold. This prevents infinite stalling and rewards efficient play. In Phase 3, the Heartbeat accelerates to every 3 turns.

**Dungeon Mechanic Interaction — All Three Tiers Weaponized:**
- **Surge Rounds (T1):** Active throughout. In Phase 3, frequency doubles. The Nexus is immune. Surge Rounds hitting Conductive heroes deal bonus damage and chain to tethered partners.
- **Overload (T2):** Active throughout. In Phase 2, Overload Trigger forces instant Overload on the next magic use. In Phase 3, Overload threshold is reduced (2 magic abilities in 2 turns triggers it instead of 3). Magic is necessary but rationed.
- **Conductive Chains (T3):** Planar Scream applies Conductive to everyone. Chain Lightning bounces between Conductive heroes for escalating damage. Reaching Grasp creates forced Chains. Cleansing is critical but magic-limited by Overload.

**Enrage Condition:**
If the fight exceeds 25 turns total, the Nexus enters permanent enrage: all damage dealt is doubled, Heartbeat occurs every turn, and Surge Rounds fire every turn. The fight becomes unsurvivable within 3-4 turns of enrage. This is the hard DPS check.

**Intended Strategy:**

*Phase 1:* Establish damage-type rotation to keep Crystal Refraction unpredictable. Focus Blunt and Ice damage. Cleanse Imprisoned heroes immediately. Avoid letting Conduit Pulse stack — push damage to transition before extra Surge Rounds accumulate. Manage Siphon targets (heal them or kill Nexus before it heals too much).

*Phase 2:* Designate one hero as the "Overload sink" — someone with Lightning resistance who uses a weak magic ability to eat the forced Overload discharge when Overload Trigger fires. Push physical damage hard. Cleanse Conductive before Fracture Wave. Be ready for Reaching Grasp pulling backliners forward — have repositioning abilities ready. This is the longest and most dangerous phase; pace healing and stress management.

*Phase 3:* All-out offense. Keep every hero above Death's Door at all times — Annihilation Arc in position 1 with guaranteed deathblow is the primary kill condition. After Storm Incarnate shuffles, immediately reposition the squishiest hero away from position 1 (Duelist's wind abilities, movement trinkets). Cleanse Conductive as fast as possible to minimize Chain Lightning bounces. Push through Reconstitute with sustained damage — stack Bleed/Poison during the damage-reduction window so it ticks through. Kill before turn 25 enrage.

**What It Punishes:**
- One-element parties (Crystal Refraction becomes predictable but punishing)
- Magic-heavy parties (Overload is omnipresent and weaponized)
- No-cleanse parties (Conductive + Chain Lightning = party wipe)
- Stalling/attrition (Heartbeat + Arcane Swelling + enrage at turn 25)
- Glass-cannon backliners (Storm Incarnate can throw them to position 1 for Annihilation Arc)
- Parties without repositioning (shuffles + forced movement dominate Phase 2-3)
- Low-stress-resist parties (Planar Scream + Imprison + constant stress pressure)
- Inflexible strategies (each phase demands a different approach)

**Guaranteed Loot:**
- **Heart of the Nexus** (Legendary Trinket) — +20% damage dealt, +15% Speed. On kill: emit a lightning pulse dealing 5 Lightning damage to all enemies. Passive: the hero becomes immune to the first Stun applied per combat. *"The imprisoned storm's last spark, bound to mortal will."*
- **Nexus Conduit Shard** (Legendary Trinket) — +30% Lightning resistance, +25% Stress resistance. When this hero takes Lightning damage, 25% of it is converted to healing. Passive: Conductive Chains on this hero last 1 fewer turn. *"A fragment of the cage that held a god."*
- **Shattered Nexus Core** (Unique crafting material) — used to craft one of three legendary weapons at the Hamlet, each themed to a different damage archetype (physical, elemental, or arcane). Player chooses one per run.
- **Planar Blueprint** (Quest item) — unlocks a new Hamlet upgrade: the Lightning Condenser, which allows heroes to train Lightning resistance passively between expeditions.
