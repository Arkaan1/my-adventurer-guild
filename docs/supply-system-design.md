# Supply & Consumable System — Design Document

## Design Notes

**Total supplies: 15** (11 utility + 4 elemental). Within the 14–18 target.

Three utility supplies were added beyond the 8 listed to fill mechanical gaps the existing list leaves open:

- **Spiritbloom Incense** — Stress is a core system (0–200, affliction at 100, heart attack at 200) with no supply-side counterplay in the original list.
- **Hallowed Candles** — The spec references "darkness-equivalent situations" and ambushes; scouting/light is a missing axis of player agency.
- **Vitality Elixir** — Rations only heal at rest rooms. Parties without healer classes have no mid-combat HP recovery supply.

**Economy target:** A standard 6–8 slot loadout for a long mission costs ~350–500g against ~800–1000g expected earnings (40–55%). Short missions run cheaper. Exact prices are tuning values subject to playtesting.

---

# PART I — UTILITY SUPPLIES

---

## 1. Rations

**Icon description:** Cloth-wrapped bundle of dark bread, dried meat strips, and a small leather waterskin, tied with twine.

**Stack limit:** 6 per slot

**Gold cost:** 10g per unit

### Primary Use
Consumed when a **hunger check** triggers during exploration (1 ration per hero, 4 total per check). Prevents starvation. Can also be eaten manually outside combat to heal **10% max HP** on one hero (consumes 1 ration).

### Secondary Uses
- **Rest room — "Feast" action:** Consume 1 ration per hero participating. Each feasting hero heals **25% max HP** and loses **10 stress**.
- Can be used as bait to lure certain enemy types into ambush positions (DM-triggered corridor events).

### Curio Interactions
- **Offering altars** — placing rations on the altar appeases hungry spirits; yields a party-wide blessing (+10% damage for 3 combats) or reveals a hidden room.
- **Starving creatures** — feeding a starving creature earns an ally summon for the next combat or a scouting hint.
- **Begging spirits** — positive resolution: stress relief and minor gold reward.

### Dungeon Relevance
- **Universal necessity.** Every dungeon requires rations.
- **The Arcane Maw** — longest dungeon, most hunger checks. Bring extra.
- **The Frozen Depths** — cold increases calorie burn; hunger checks trigger more frequently. Rations are worth ~1.5× here.
- Short raids may need only 4–8; long expeditions need 12–18.

### Risk of Not Bringing Enough
Starvation triggers when a hunger check fires with no rations remaining. **All 4 heroes** take **15% max HP damage** and **20 stress** per failed check. In long dungeons this cascades fast — stress spirals into afflictions, low HP into deaths.

---

## 2. Hallowed Candles

**Icon description:** Short, thick candle of pale beeswax with a wick that burns silver-white. Faint holy sigils stamped into the wax.

**Stack limit:** 4 per slot

**Gold cost:** 15g per unit

### Primary Use
**Scout the next room** before entering. Reveals: enemy composition (types and count), curio type, trap presence, and obstacle type. One candle per scout. Consumed on use. Also **prevents ambush** in the scouted room — enemies cannot get a surprise round.

### Secondary Uses
- **Rest room — "Vigil" action:** One hero burns a candle and stays alert. Eliminates random negative rest events (ambushes, theft, nightmares) and reveals the next room upon waking.
- **Corridor use:** Light a candle in dark corridor sections to prevent the "Darkness" stress penalty and spot hidden passages.

### Curio Interactions
- **Dark alcoves / shadow-veiled passages** — candle light reveals concealed curios and secret doors that are otherwise invisible.
- **Shadow shrines** — candlelight banishes the shadow, yielding a safe positive outcome (loot, buff) instead of a curse.
- **Hidden recesses** — illumination reveals traps before they trigger.

### Dungeon Relevance
- **The Frozen Depths** — ambush-heavy dungeon. Scouting prevents nasty surprise rounds from ice predators.
- **The Arcane Maw** — route planning matters for swelling management; knowing what's ahead lets you choose paths wisely.
- **Universally useful** but not always mandatory. Experienced players may skip them on familiar dungeons.

### Risk of Not Bringing Enough
Blind exploration. No forewarning of enemy types means you can't pre-buff or choose optimal party positioning. Ambushes give enemies a free round of attacks. Hidden curios and passages are missed entirely.

---

## 3. Enchanted Tools

**Icon description:** Rolled leather tool kit containing shimmering silver instruments — chisel, prybar, lockpick, small saw — each etched with faintly glowing minor enchantments.

**Stack limit:** 3 per slot

**Gold cost:** 35g per unit

### Primary Use
**Clear obstacles** blocking dungeon corridors — collapsed archways, sealed stone doors, magical barriers, overgrown roots. One tool charge per obstacle. Without tools, the party must take detours (more rooms explored = more swelling, more hunger checks, more encounters).

Also **disarm traps** if no Rogue class is present. Success rate: **60%** (vs. Rogue's ~85–95%). Failed disarm triggers the trap at reduced effect.

### Secondary Uses
- **Rest room — "Reinforce Armor" action:** Spend 1 tool charge. One hero gains **+10% damage resistance** for the next 3 combats.
- Can pry open mundane locked doors without using a Runestone Key (lower reward tier than magical unlocking).

### Curio Interactions
- **Locked chests / sealed sarcophagi** — tools pick the lock cleanly, bypassing trap mechanisms. Guarantees safe opening with standard loot.
- **Mechanical contraptions** — tools activate gears and levers correctly, yielding the positive outcome (shortcut, loot, buff) instead of a malfunction.
- **Collapsed structures** — clearing rubble reveals buried curios.

### Dungeon Relevance
- **The Shattered Conduit** — most obstacles of any dungeon. Multiple blocked corridors per run. Bring at least 2 slots.
- **The Howling Spire** — moderate obstacles (wind-damaged passages).
- Less critical in The Arcane Maw (fewer physical barriers, more magical ones needing Runestone Keys).

### Risk of Not Bringing Enough
Blocked corridors force long detours: additional rooms mean more swelling gain, more hunger checks, and more random encounters. Traps go unaddressed, dealing damage, stress, and debuffs to the party. Locked curios must be forced open with worse outcomes.

---

## 4. Antitoxin Vials

**Icon description:** Small teardrop-shaped glass vial of luminous green liquid, corked with dark wax. Faint bubbles rise inside.

**Stack limit:** 4 per slot

**Gold cost:** 20g per unit

### Primary Use
**Cure Poison** on one hero. Removes all poison stacks immediately. Usable **in combat** (costs the hero's action for that turn) or **during exploration** (free use between rooms).

### Secondary Uses
- **Preventive dose:** Consume before entering a known poison-heavy encounter (requires scouting via Hallowed Candle or class ability). Grants the hero **+50% Poison Resistance** for 3 combat rounds.
- At rest rooms, can be used to purify tainted water sources found at rest sites, providing a minor party-wide heal (**5% max HP each**).

### Curio Interactions
- **Bubbling cauldrons / alchemical stations** — neutralizes toxic fumes, allowing safe extraction of alchemical reagents (high-value loot).
- **Venomous nests** — applying antitoxin to the nest calms the creatures inside, yielding rare crafting materials without a fight.
- **Poisoned wells** — purifies the water for a party-wide heal and stress reduction.

### Dungeon Relevance
- **The Frozen Depths** — many venomous ice creatures (frost spiders, venom wyrms). High priority.
- **The Arcane Maw** — corrupted magic manifests as toxic miasma. Moderate priority.
- **The Ember Sanctum** — few poison enemies. Low priority; slot is better used elsewhere.
- **The Howling Spire** — airborne toxins in some wind corridors. Moderate priority.

### Risk of Not Bringing Enough
Poison ticks for **damage each turn** and **reduces healing received by 30%**. Stacking poison in long fights can kill a hero in 3–4 turns. Without antitoxin, the only cure is class abilities (limited) or ending the encounter before the poison kills.

---

## 5. Hemlock Salve

**Icon description:** Dark reddish-brown paste in a small round clay jar, sealed with cloth and tied with cord. Smells of iron and herbs.

**Stack limit:** 4 per slot

**Gold cost:** 20g per unit

### Primary Use
**Cure Bleed** on one hero. Removes all bleed stacks immediately. Usable **in combat** (costs the hero's action) or **during exploration** (free use between rooms).

### Secondary Uses
- **Rest room — "Field Surgery" action:** Consume 1 salve. Cures bleed *and* heals **15% max HP** on one hero.
- Can be applied to bleeding allies who are at Death's Door (0 HP) to stabilize them, preventing the next bleed tick from triggering a death check.

### Curio Interactions
- **Blood-stained altars / sacrificial circles** — applying salve to the blood stops the ritual, preventing a curse and instead yielding a protective blessing (+15% bleed resistance for the mission).
- **Wounded creatures** — healing a wounded creature earns its loyalty (ally summon or passage hint).
- **Gore-slicked passages** — salve used to treat injured party members reveals that the blood trail leads to a hidden room.

### Dungeon Relevance
- **The Ember Sanctum** — many bleed-inflicting fire beasts (magma hounds, ashen reavers). High priority.
- **The Howling Spire** — wind-blade enemies cause bleed. Moderate priority.
- **The Frozen Depths** — few bleed sources (ice damage tends toward Chill debuff instead). Low priority.
- **The Shattered Conduit** — moderate bleed from shrapnel-based enemies.

### Risk of Not Bringing Enough
Bleed stacks are **cumulative**. Each stack ticks for damage at the end of the hero's turn. Multiple bleed sources in one fight can stack 3–5 bleeds, killing a hero in 2–3 turns. Unlike poison, bleed does not reduce healing — but it deals more damage per tick.

---

## 6. Arcane Dampeners

**Icon description:** Small bronze disc the size of a coin, inscribed with concentric ward circles. Hums faintly and vibrates when near magical energy.

**Stack limit:** 3 per slot

**Gold cost:** 35g per unit

### Primary Use
**Grant one hero +30% elemental resistance** (all elements) for the current combat encounter. Can be activated **at the start of combat** (free action) or **during a turn** (costs the hero's action). Lasts the entire encounter.

### Secondary Uses
- **Corridor use:** Activate to shield the party from environmental elemental hazards — fire vents, ice storms, lightning fields, wind shears. Prevents the damage and debuff that these corridor hazards normally inflict. Consumes 1 dampener per hazard.
- Can be combined with elemental supplies: using a dampener on the same hero who throws an elemental flask prevents self-inflicted splash damage (relevant for some elemental interactions that have AoE).

### Curio Interactions
- **Elemental shrines** — dampener stabilizes the shrine's wild magic, allowing safe communion for a powerful elemental buff (e.g., +20% fire damage for the mission).
- **Corrupted fonts** — dampener neutralizes the corruption, restoring the font to yield a party-wide heal or stress relief.
- **Unstable wards** — dampener prevents the ward from detonating, yielding the ward's stored magic as a buff.

### Dungeon Relevance
- **High value in all elemental dungeons:** The Frozen Depths, Howling Spire, Shattered Conduit, Ember Sanctum — all feature environmental hazards and elemental boss attacks.
- **The Arcane Maw** — surprisingly less useful here. Raw arcane damage is not elemental; dampeners don't protect against it. Warding Stones are the Maw's equivalent.
- The specific element of the dungeon determines which heroes benefit most from dampener placement.

### Risk of Not Bringing Enough
Elemental bosses and corridor hazards deal full, unmitigated damage. Elemental debuffs (Burning, Chilled, Shocked, Windswept) land at full effect and duration, compounding with other damage sources.

---

## 7. Runestone Keys

**Icon description:** A small rectangular stone tablet, palm-sized, with a single glowing glyph carved into its face. Each key's glyph is unique; the stone is warm to the touch.

**Stack limit:** 2 per slot

**Gold cost:** 75g per unit

### Primary Use
**Open magically sealed curios safely.** Bypasses all curse and trap outcomes entirely. Guarantees the **best possible reward tier** from the curio (rare loot, powerful buffs, significant gold). These are the highest-reward curios in the game.

### Secondary Uses
- Can be used on **sealed doors** leading to hidden treasure rooms (rare corridor encounters). These rooms contain bonus loot and sometimes unique items.
- A Runestone Key can be sacrificed at an **Arcane Nexus** (rare curio) to reduce Arcane Swelling by **25 points** — an expensive but powerful alternative to Warding Stones.

### Curio Interactions
- **Sealed reliquaries** — key opens them cleanly. Without a key: 40% chance of curse (stat debuff for the mission), 60% chance of reduced loot.
- **Glyph-locked chests** — key guarantees rare-tier loot. Without: 50/50 trap or common loot.
- **Warded tombs** — key bypasses the guardian spirit, yielding ancestral treasure. Without: fight a spirit enemy first, then get lesser loot.
- **Arcane vaults** — key is the *only* way to open these. No key = no access. Vaults contain the best loot in the game.

### Dungeon Relevance
- **The Arcane Maw** — highest density of magically sealed curios. Bring 2–4 keys.
- Worth bringing **1–2 in any dungeon** — sealed curios appear everywhere, just less frequently outside the Maw.
- **The Ember Sanctum** — lowest sealed curio density. Keys are the first cut from the loadout here.

### Risk of Not Bringing Enough
Magically sealed curios can be **forced open** without a key, but at significant risk: ~40% chance of a curse or trap, and the reward drops from best tier to standard tier. Arcane vaults are simply inaccessible. Given the 75g cost, every unused key is painful — but every missed vault is worse.

---

## 8. Binding Rope

**Icon description:** Coil of tightly braided rope threaded with silver wire. Faintly luminous. Lightweight but supernaturally strong.

**Stack limit:** 3 per slot

**Gold cost:** 25g per unit

### Primary Use
**Navigate vertical obstacles** — chasms, collapsed floors, cliff faces, deep shafts. Required to access certain side passages that contain bonus loot rooms, shortcuts, or bypasses around dangerous encounters. One rope charge per obstacle.

### Secondary Uses
- **Combat — "Restrain" action:** Throw rope at a single non-boss enemy. **50% chance to Stun** the target for 1 turn. Costs the hero's action and consumes 1 rope.
- **Rest room — "Secure Camp" action:** Consume 1 rope. Reduces ambush chance during rest to **0%** (normally ~20% in dangerous dungeons).
- Can lash unstable structures to prevent collapse during exploration.

### Curio Interactions
- **Precarious ledges / deep wells** — rope enables safe descent to retrieve items. Without rope: either inaccessible or a risky jump (hero takes damage on failure).
- **Suspended cages** — rope lowers the cage safely, freeing a captive (ally recruitment event or reward).
- **Hanging relics** — rope retrieves dangling artifacts without dislodging them (prevents trap trigger).

### Dungeon Relevance
- **The Howling Spire** — vertical dungeon with many chasms and elevation changes. Essential. Bring 2 slots.
- **The Shattered Conduit** — collapsed sections requiring rope traversal. High priority.
- **The Frozen Depths** — ice crevasses. Moderate priority.
- **The Ember Sanctum / Arcane Maw** — fewer vertical obstacles. Low priority.

### Risk of Not Bringing Enough
Side rooms with bonus loot become inaccessible. The party is forced onto longer, more dangerous routes through the main corridor. Rest ambush chance remains at default. Certain curio rewards are lost entirely.

---

## 9. Warding Stones

**Icon description:** Rough-hewn pale grey stone, fist-sized, carved with angular protective runes that glow faintly blue. Cool to the touch.

**Stack limit:** 3 per slot

**Gold cost:** 50g per unit

### Primary Use
**Reduce Arcane Swelling by 15 points.** Usable at any time during exploration (not in combat). Consumed on use. This is the primary player tool for managing the Arcane Swelling gauge, which otherwise only rises.

### Secondary Uses
- **Rest room — "Ward the Camp" action:** Place a Warding Stone around the rest site. Prevents Arcane Swelling from rising during the rest and grants all heroes **+10% resistance to arcane damage** for the next combat.
- Can be placed at **Leyline Nodes** (rare corridor feature) to create a zone of suppressed swelling — the next 2 rooms explored do not increase swelling.
- At very high swelling (76+), a Warding Stone can be shattered to create a brief **"Calm Eye"** — one combat encounter where swelling effects (enemy buffs, loot bonuses) are treated as one stage lower.

### Curio Interactions
- **Arcane fonts** — stone absorbs the volatile energy for a safe positive outcome (rare crafting material, arcane buff).
- **Leyline nodes** — stone stabilizes the node, yielding a permanent swelling reduction for the rest of the dungeon (-5 to all future swelling gains).
- **Unstable magical formations** — stone prevents detonation, yielding loot instead of damage.

### Dungeon Relevance
- **The Arcane Maw** — highest passive swelling gain per room. Without Warding Stones, swelling reaches Overwhelming within half the dungeon. **Essential. Bring 2 slots.**
- **All other dungeons** — swelling still matters everywhere. Bring at least 1 slot (3 stones) for any medium+ length mission.
- Managing swelling is a core strategic tension: higher swelling means harder enemies but better loot. Warding Stones let you choose *when* to push and when to pull back.

### Risk of Not Bringing Enough
Arcane Swelling climbs unchecked. At **Overwhelming (76–100):** enemies gain significant stat boosts, stress-inducing auras activate, and the dungeon begins spawning elite "Arcane Warden" enemies. While loot quality also peaks, a party not built for Overwhelming-tier combat faces wipes.

---

## 10. Spiritbloom Incense

**Icon description:** Bundle of dried violet-blue flowers bound with dark twine, tip smoldering with pale lavender smoke. Fragrant and calming.

**Stack limit:** 4 per slot

**Gold cost:** 25g per unit

### Primary Use
**Reduce one hero's stress by 15 points.** Usable **during exploration only** (not in combat). Consumed on use.

### Secondary Uses
- **Rest room — "Meditate" action:** Burn 1 incense. One hero enters deep meditation, reducing stress by **30** (double the exploration effect).
- **Corridor use:** Burn incense when passing through high-stress zones (haunted corridors, screaming winds, whispering darkness) to **negate the stress inflicted** by that zone for the entire party. Consumes 1 incense per zone.
- Can be burned proactively before a boss encounter to grant the party **+10% stress resistance** for the fight (1 incense, party-wide).

### Curio Interactions
- **Haunted memorials / restless spirits** — incense calms the spirit. Yields stress relief for the party (−10 all heroes), lore text, and sometimes a spectral blessing (minor buff).
- **Defiled sanctuaries** — incense purifies the space, restoring it to a functional mini-rest-room (one hero can take a rest action on the spot).
- **Tortured spirits** — incense releases the spirit peacefully, yielding a significant gold reward and preventing it from becoming a hostile encounter.

### Dungeon Relevance
- **The Howling Spire** — constant wind howling inflicts passive stress. Incense is essential to survive long runs.
- **The Arcane Maw** — high-swelling stages cause stress spikes. Moderate-high priority.
- **The Frozen Depths** — isolation and darkness themes cause steady stress. Moderate priority.
- **The Ember Sanctum** — relatively low stress pressure. Lower priority; slot can go to other supplies.

### Risk of Not Bringing Enough
Stress is the silent killer. At **100 stress**, a hero develops an **Affliction** — a negative personality override that causes them to act erratically (refuse orders, attack allies, pass turns, stress other party members). At **200 stress**, the hero suffers a **heart attack** (massive HP damage, possible instant death). Without stress management supplies, the party depends entirely on class abilities and rest rooms, which may not be enough in stress-heavy dungeons.

---

## 11. Vitality Elixir

**Icon description:** Teardrop-shaped crystal flask filled with swirling amber-gold liquid. Warm to the touch. Faint inner glow.

**Stack limit:** 3 per slot

**Gold cost:** 45g per unit

### Primary Use
**Heal one hero for 30% max HP.** Usable **in combat** (costs the hero's action) or **during exploration** (free use between rooms). Consumed on use.

### Secondary Uses
- **Rest room — "Restorative Treatment" action:** Consume 1 elixir. Heals **50% max HP** and removes one random negative status effect (debuff, minor curse, lingering elemental status) from one hero.
- Can be force-fed to a hero at **Death's Door** (0 HP) to immediately restore them to **30% HP** and clear Death's Door status, preventing the next damage instance from triggering a death check.

### Curio Interactions
- **Dying guardian spirits** — pouring elixir into the spirit's vessel restores it. The guardian grants a powerful blessing: **party-wide heal (20% max HP all heroes)** and a **+15% damage buff** for 3 combats.
- **Broken healing fonts** — elixir restores the font's function, turning it into a usable healing station (all heroes can drink for 15% max HP).
- **Withered life-trees** — elixir revives the tree, which blooms and provides a permanent mission buff (+5% max HP for all heroes).

### Dungeon Relevance
- **Universal.** Every dungeon benefits from healing supplies.
- **Longest dungeons (Arcane Maw)** — more fights, more attrition. Higher priority.
- **Parties without a dedicated healer class** — Vitality Elixirs become near-mandatory. Bring 2 slots.
- **Short raids with a healer** — can be skipped to save gold and slots for loot.
- At 45g per unit, these are expensive. The tension between bringing healing and bringing loot space is intentional.

### Risk of Not Bringing Enough
The party relies entirely on class healing abilities and rest rooms for HP recovery. One bad fight — or a string of corridor traps — can leave heroes too low to survive the next encounter. Without Vitality Elixirs, there is no emergency heal for heroes at Death's Door, and the margin for error in combat drops sharply.

---

# PART II — ELEMENTAL SUPPLIES

> **Elemental Interaction Strength:** All elemental supplies trigger elemental interactions at **55% effectiveness** compared to ability-triggered interactions. This gives non-mage parties access to elemental combos at reduced power, and gives mage parties a way to trigger combos without spending ability slots. The slight bump above 50% ensures supply-triggered combos still *feel* impactful.

> **Status Application:** Each elemental supply applies its element's status effect for **2 turns**, creating a window for follow-up interactions from class abilities or other supplies.

> **Economy:** Elemental supplies are priced at **30g per unit, stack 3 per slot (90g per slot)** — between the cheap common supplies (Rations at 10g) and the expensive situational ones (Runestone Keys at 75g). Worth bringing a few, but filling multiple slots with them cuts heavily into loot space and gold reserves.

---

## 12. Emberbright Flask — Fire

**Icon description:** Bulbous glass flask of dark red-orange liquid that churns and flickers like trapped flame. Stoppered with fire-resistant blackite cork. Warm to the touch.

**Stack limit:** 3 per slot

**Gold cost:** 30g per unit

### Primary Use — Combat Action
Throw at a **single enemy**. Deals **4–6 base fire damage** (low). Applies **"Scorched"** elemental status for **2 turns**.

- **Interaction trigger:** If the target already has an elemental status (Chilled, Shocked, Windswept), the flask triggers the corresponding **Fire + [Element] interaction at 55% effectiveness.**
- Example: Enemy is Chilled (ice status) → Emberbright Flask triggers Fire+Ice interaction → deals bonus interaction damage/effect at 55% of what a Fire ability + Ice ability combo would produce.

### Secondary Uses
- **Exploration:** Burn through organic obstacles — thick webs, overgrown roots, frozen vines. Functions as an alternative to Enchanted Tools for these specific obstacle types. Consumes 1 flask.
- **Rest room — "Warmth" action:** Light a fire with the flask. Removes **Chill** debuffs from all heroes and grants **+20% cold resistance** for the next combat.
- Can ignite oil puddles in corridor encounters (some dungeons feature oil hazards — normally dangerous, but intentional ignition can damage enemies in an ambush).

### Curio Interactions
- **Frozen seals / ice-locked containers** — fire thaws the seal, allowing safe opening with positive loot outcome.
- **Dormant forges** — fire rekindles the forge, allowing weapon enhancement (+damage buff for one hero for the mission).
- **Unlit braziers** — lighting ritual braziers reveals hidden passages or activates protective wards.

### Dungeon Relevance
- **The Frozen Depths** — extremely high value. Exploit ice-status enemies, thaw frozen obstacles, counter cold environmental effects. Bring 1–2 slots.
- **The Howling Spire** — moderate value. Wind+Fire interactions exist. Some frozen sections at high altitude.
- **The Ember Sanctum** — low value. Most enemies are fire-resistant or immune. Fire curios are rare (the dungeon is already on fire). Skip.
- **The Shattered Conduit** — moderate value. Fire+Lightning interactions.

### Risk of Not Bringing Enough
Non-mage parties lose access to fire-based elemental combos entirely. Frozen obstacles in The Frozen Depths become impassable without Enchanted Tools. Cold-debuffed heroes suffer longer without the "Warmth" rest action.

### Elemental Stats Summary
| Stat | Value |
|------|-------|
| Damage | 4–6 fire |
| Status applied | Scorched (2 turns) |
| Interaction strength | 55% of ability-triggered |
| Special property | Burns organic obstacles; "Warmth" rest action |

---

## 13. Frostbite Vial — Ice

**Icon description:** Slim frosted blue glass vial, perpetually cold. Crystalline ice formations visible inside the liquid. Condensation beads on the surface.

**Stack limit:** 3 per slot

**Gold cost:** 30g per unit

### Primary Use — Combat Action
Throw at a **single enemy**. Deals **4–6 base ice damage** (low). Applies **"Chilled"** elemental status for **2 turns**. Chilled enemies suffer **−15% Speed**.

- **Interaction trigger:** If the target already has an elemental status (Scorched, Shocked, Windswept), the vial triggers the corresponding **Ice + [Element] interaction at 55% effectiveness.**

### Secondary Uses
- **Exploration:** Freeze water hazards — flooded rooms, streams blocking passages, waterfalls concealing paths. Creates temporary ice bridges/platforms for safe crossing. Consumes 1 vial.
- **Rest room — "Cool Down" action:** Use on heroes suffering from Burn debuffs or heat exhaustion. Removes **Burn** status from one hero and grants **+20% fire resistance** for the next combat.
- Can be thrown at the ground to create a slick patch — in certain corridor ambush events, this can cause pursuing enemies to lose a turn.

### Curio Interactions
- **Overheating mechanisms** — ice cools the mechanism, preventing meltdown and allowing safe activation (yields loot or shortcut).
- **Lava vents** — ice temporarily seals the vent, preventing it from dealing damage and revealing a passage behind it.
- **Fire-warded containers** — ice neutralizes the fire ward, allowing safe opening.

### Dungeon Relevance
- **The Ember Sanctum** — extremely high value. Exploit fire-status enemies, counter heat hazards, seal lava vents. Bring 1–2 slots.
- **The Shattered Conduit** — moderate value. Ice+Lightning interactions. Some overheating mechanisms.
- **The Frozen Depths** — low value. Most enemies are ice-resistant or immune. Ice curios are native. Skip.
- **The Howling Spire** — moderate value. Wind+Ice interactions create blizzard combos.

### Risk of Not Bringing Enough
Non-mage parties lose access to ice combos. The Ember Sanctum's heat hazards remain fully dangerous without ice counterplay. The Speed debuff from Chilled is a strong tactical tool — without it, fast enemies act before your party.

### Elemental Stats Summary
| Stat | Value |
|------|-------|
| Damage | 4–6 ice |
| Status applied | Chilled (2 turns, −15% Speed) |
| Interaction strength | 55% of ability-triggered |
| Special property | Freezes water hazards; "Cool Down" rest action |

---

## 14. Stormcall Shard — Lightning

**Icon description:** Jagged crystal shard the size of a finger, deep violet, crackling with visible arcs of contained electricity. Wrapped at the base in insulated leather for handling.

**Stack limit:** 3 per slot

**Gold cost:** 30g per unit

### Primary Use — Combat Action
Throw at a **single enemy**. Deals **4–6 base lightning damage** (low). Applies **"Shocked"** elemental status for **2 turns**. Shocked enemies have a **15% chance to fail any action** (attack, ability, or movement).

- **Interaction trigger:** If the target already has an elemental status (Scorched, Chilled, Windswept), the shard triggers the corresponding **Lightning + [Element] interaction at 55% effectiveness.**

### Secondary Uses
- **Exploration:** Power dead arcane mechanisms — unpowered doors, inactive lifts, dormant golems (some dormant golems become allies when reactivated). Consumes 1 shard.
- **Rest room — "Attune Gear" action:** Use a shard to charge a hero's weapon with electrical energy. That hero's next 2 attacks deal **+10% bonus lightning damage**.
- In water-flooded rooms, throwing a shard into the water electrifies it — damages all enemies standing in water (corridor encounter tactic).

### Curio Interactions
- **Unpowered golems** — shard reactivates the golem. It serves as an ally for the next combat (fights alongside the party, then shuts down).
- **Dead arcane circuits** — shard powers the circuit, opening locked passages or activating defensive wards.
- **Storm altars** — shard offered to the altar yields a powerful lightning blessing (+20% lightning damage for the mission or a chain-lightning buff on next attack).

### Dungeon Relevance
- **The Shattered Conduit** — extremely high value. Many lightning-interactable mechanisms, unpowered golems, and dead circuits. Bring 1–2 slots. The dungeon is partially a puzzle of reactivating systems.
- **The Howling Spire** — high value. Wind+Lightning interactions produce devastating storm combos. Storm altars are common.
- **The Ember Sanctum** — moderate value. Fire+Lightning interactions exist.
- **The Frozen Depths** — low value. Few lightning interactions. Ice-focused enemies.

### Risk of Not Bringing Enough
Non-mage parties lose access to lightning combos. The Shattered Conduit's puzzle-mechanisms remain inert — losing access to shortcuts, golem allies, and powered pathways. The Shocked status's action-denial effect is one of the best tactical debuffs; losing it hurts.

### Elemental Stats Summary
| Stat | Value |
|------|-------|
| Damage | 4–6 lightning |
| Status applied | Shocked (2 turns, 15% action failure) |
| Interaction strength | 55% of ability-triggered |
| Special property | Powers dead mechanisms; "Attune Gear" rest action |

---

## 15. Galeforce Dust — Wind

**Icon description:** Small leather drawstring pouch of shimmering silver-grey dust that shifts and swirls on its own even when the pouch is still. Opens with a hiss of moving air.

**Stack limit:** 3 per slot

**Gold cost:** 30g per unit

### Primary Use — Combat Action
Throw at a **single enemy**. Deals **4–6 base wind damage** (low). Applies **"Windswept"** elemental status for **2 turns**. Windswept enemies suffer **−15% Accuracy**.

- **Interaction trigger:** If the target already has an elemental status (Scorched, Chilled, Shocked), the dust triggers the corresponding **Wind + [Element] interaction at 55% effectiveness.**

### Secondary Uses
- **Exploration:** Clear gas and miasma hazards from corridors — toxic clouds, hallucinogenic spores, choking smoke. Party can pass through safely. Consumes 1 dust.
- **Rest room — "Air Purification" action:** Use dust to cleanse the air around camp. Removes all airborne debuffs (poison cloud, spore sickness, smoke inhalation) from the entire party.
- Can be scattered before the party to detect invisible traps via air displacement (alternative to Enchanted Tools for air-pressure-based traps — rare but present).

### Curio Interactions
- **Stagnant chambers** — dust clears the stale air, revealing curios hidden behind miasma and enabling safe exploration (loot, passage).
- **Sealed wind channels** — dust reactivates the channel, creating a shortcut through the dungeon (skip 1–2 rooms).
- **Choked ventilation** — clearing the vents purifies a corrupted area, turning hostile terrain neutral and sometimes revealing hidden rooms.

### Dungeon Relevance
- **The Howling Spire** — extremely high value. Wind-element synergies, gas/miasma hazards throughout, sealed wind channels for shortcuts. Bring 1–2 slots. The Spire's verticality and wind themes make this essential.
- **The Arcane Maw** — moderate-high value. Miasma corridors are common. Clearing them prevents stress and poison.
- **The Ember Sanctum** — moderate value. Smoke and ash clouds impair visibility. Wind+Fire interactions exist.
- **The Frozen Depths** — low value. Few wind interactions. Cold-focused environment.

### Risk of Not Bringing Enough
Non-mage parties lose access to wind combos. Gas/miasma hazards deal damage and inflict debuffs the party must endure. Wind channel shortcuts remain sealed, forcing longer dungeon routes. The accuracy debuff from Windswept is tactically strong against hard-hitting enemies; losing it means taking more damage.

### Elemental Stats Summary
| Stat | Value |
|------|-------|
| Damage | 4–6 wind |
| Status applied | Windswept (2 turns, −15% Accuracy) |
| Interaction strength | 55% of ability-triggered |
| Special property | Clears gas/miasma; "Air Purification" rest action |

---

# PART III — SUMMARY TABLE

| # | Supply | Type | Stack | Cost | Primary Use |
|---|--------|------|-------|------|-------------|
| 1 | Rations | Utility | 6 | 10g | Prevent starvation, minor heal |
| 2 | Hallowed Candles | Utility | 4 | 15g | Scout next room, prevent ambush |
| 3 | Antitoxin Vials | Utility | 4 | 20g | Cure poison |
| 4 | Hemlock Salve | Utility | 4 | 20g | Cure bleed |
| 5 | Spiritbloom Incense | Utility | 4 | 25g | Reduce stress by 15 |
| 6 | Binding Rope | Utility | 3 | 25g | Navigate vertical obstacles |
| 7 | Enchanted Tools | Utility | 3 | 35g | Clear obstacles, disarm traps |
| 8 | Arcane Dampeners | Utility | 3 | 35g | +30% elemental resistance (1 encounter) |
| 9 | Vitality Elixir | Utility | 3 | 45g | Heal 30% max HP |
| 10 | Warding Stones | Utility | 3 | 50g | Reduce Arcane Swelling by 15 |
| 11 | Runestone Keys | Utility | 2 | 75g | Open sealed curios safely (best loot) |
| 12 | Emberbright Flask | Elemental (Fire) | 3 | 30g | 4–6 fire dmg, apply Scorched, trigger combos at 55% |
| 13 | Frostbite Vial | Elemental (Ice) | 3 | 30g | 4–6 ice dmg, apply Chilled (−15% Spd), trigger combos at 55% |
| 14 | Stormcall Shard | Elemental (Lightning) | 3 | 30g | 4–6 lightning dmg, apply Shocked (15% action fail), trigger combos at 55% |
| 15 | Galeforce Dust | Elemental (Wind) | 3 | 30g | 4–6 wind dmg, apply Windswept (−15% Acc), trigger combos at 55% |

---

## Economy Snapshot

**Cost per full slot** (stack × unit cost):

| Supply | Cost/Slot |
|--------|-----------|
| Rations | 60g |
| Hallowed Candles | 60g |
| Antitoxin Vials | 80g |
| Hemlock Salve | 80g |
| Spiritbloom Incense | 100g |
| Binding Rope | 75g |
| Enchanted Tools | 105g |
| Arcane Dampeners | 105g |
| Vitality Elixir | 135g |
| Warding Stones | 150g |
| Runestone Keys | 150g |
| Elemental (any) | 90g |

**Sample loadouts vs. mission earnings:**

| Mission Length | Typical Slots | Loadout Cost | Expected Earnings | Supply % |
|---------------|---------------|-------------|-------------------|----------|
| Short (8 rooms) | 4–5 slots | 250–350g | 500–600g | 45–60% |
| Medium (14 rooms) | 6–7 slots | 400–550g | 700–850g | 50–65% |
| Long (20+ rooms) | 8–10 slots | 550–750g | 900–1200g | 45–60% |

*Note: Players will rarely fill every slot — choosing which supplies to skip is the core economic tension. Loot slots left empty = gold left on the table.*

---

## Dungeon Loadout Priorities (Quick Reference)

| Supply | Frozen Depths | Howling Spire | Shattered Conduit | Ember Sanctum | Arcane Maw |
|--------|:---:|:---:|:---:|:---:|:---:|
| Rations | ★★★ | ★★ | ★★ | ★★ | ★★★ |
| Hallowed Candles | ★★★ | ★★ | ★★ | ★★ | ★★★ |
| Enchanted Tools | ★★ | ★★ | ★★★ | ★★ | ★ |
| Antitoxin Vials | ★★★ | ★★ | ★ | ★ | ★★ |
| Hemlock Salve | ★ | ★★ | ★★ | ★★★ | ★★ |
| Arcane Dampeners | ★★★ | ★★★ | ★★★ | ★★★ | ★ |
| Runestone Keys | ★★ | ★★ | ★★ | ★ | ★★★ |
| Binding Rope | ★★ | ★★★ | ★★★ | ★ | ★ |
| Warding Stones | ★★ | ★★ | ★★ | ★★ | ★★★ |
| Spiritbloom Incense | ★★ | ★★★ | ★★ | ★ | ★★★ |
| Vitality Elixir | ★★ | ★★ | ★★ | ★★ | ★★ |
| Emberbright Flask | ★★★ | ★★ | ★★ | ✗ | ★ |
| Frostbite Vial | ✗ | ★★ | ★★ | ★★★ | ★ |
| Stormcall Shard | ★ | ★★★ | ★★★ | ★★ | ★ |
| Galeforce Dust | ★ | ★★★ | ★ | ★★ | ★★ |

★★★ = Essential / High priority · ★★ = Recommended · ★ = Situational · ✗ = Skip (enemies resist this element)
