# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Don't Starve Together (DST) mod called "原版人物加强" (Original Character Enhancement). The mod enhances various game characters and monsters for co-op gameplay.

## Architecture

### File Structure
- `modinfo.lua` - Mod metadata (name, version, API version, configuration options)
- `modmain.lua` - Main mod logic containing all gameplay modifications

### Code Organization in modmain.lua

1. **Global Environment Setup** (lines 1-8): Metatable setup to access GLOBAL namespace
2. **TUNING Constants** (lines 10-430): Direct modifications to game tuning values:
   - Item stats (durability, speed multipliers)
   - Character stats (health, hunger, sanity, damage)
   - Creature stats (health, damage for various monsters)
   - Weapon and armor values
3. **ExtraLootForEpicBosses** (lines 434-483): Adds bonus loot drops to boss creatures
4. **Custom Combat Mechanics** (lines 485-824):
   - `blink()`: Dash attack with lifesteal for Wathgrithr and Monkey King
   - `slowDown()`: Movement speed debuff system
   - Character-specific combat modifications via `AddPlayerPostInit`
5. **Character Prefab Modifications** (lines 826-869): Individual character tweaks via `AddPrefabPostInit`
6. **Item Prefab Modifications** (lines 892-1022): Equipment enhancements (weapons, armor, bags)
7. **Utility Functions** (lines 1024-1035): Helper functions like `c_link` for wormholes

### Key Patterns

- Uses `AddPrefabPostInit(prefab_name, fn)` to modify existing game entities
- Uses `AddPlayerPostInit(fn)` to modify player behavior
- Wraps original combat functions to add custom mechanics
- Checks `TheWorld.ismastersim` for server-side only code
- Uses `pcall()` for error-safe operations

### DST Mod API

- API version: 10
- Key globals: `TUNING`, `GLOBAL`, `TheWorld`, `TheSim`, `AllPlayers`
- Common components: `combat`, `health`, `sanity`, `hunger`, `locomotor`, `lootdropper`, `inventory`

## Language

Code comments are in Chinese (Simplified). The mod is designed for Chinese-speaking players.
