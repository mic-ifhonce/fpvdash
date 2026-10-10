-- FPVDash settings for a RadioMaster TX15 Max + Meteor75 Pro Mark II (1S).
-- Restart the radio (or reselect the model) after changing it.
return {
  -- 1S whoop: every pack is a single cell, so cell detection only has one size to choose from.
  cells = { 1 },

  quadNames = { [1] = "Meteor75 Pro II" },

  -- Not used with a 1S whoop that has no GPS.
  homeSats = 8,

  -- Momentary switch that steps through the pages (dashboard, GPS view, find, logbook).
  -- SF is your buzzer, so no switch is assigned here. Set this to a spare momentary
  -- (e.g. "sh") if your radio has one and you want to flip pages from the sticks.
  viewSwitch = false,

  -- The switch strip. Listing it here replaces the auto-built strip, so only these tiles show.
  --   { switch, function, up, down }             2-position switch
  --   { switch, function, up, middle, down }     3-position switch
  -- A position ending in ! reads as a caution (amber), !! as armed (red).
  switches = {
    -- SA: flight mode. Up = Angle, Mid = Acro, Down = Turtle (flip over after crash)
    { "SA", "MODE", "ANGLE", "ACRO", "TURTLE!" },

    -- SE: arming. Up = disarmed, Down = armed (red). If your arm switch is the other way round,
    -- swap to { "SE", "ARM", "ARMED!!", "OFF" }.
    { "SE", "ARM", "OFF", "ARMED!!" },

    -- SF: buzzer (momentary: ON only while held)
    { "SF", "BUZZER", "OFF", "ON" },

    -- Left out on purpose for the 1S Meteor75 Pro II (no GPS, no lights):
    -- { "SB", "SPARE", "OFF", "ON" },        -- SB: not used
    -- { "SC", "GPS",   "OFF", "ON" },        -- SC: GPS on/off
    -- { "SD", "LIGHTS", "OFF", "ON" },       -- SD: lights on/off
  },

  tabularDigits = false,
  debugLog = false,

  -- Voice callouts (SCRIPTS/FUNCTIONS/fpvcall.lua)
  ceiling = 110,
  charged = 4.05,

  -- 1S capacity for "battery 50 / 70 / 80 percent used". Edit mah to match your pack
  -- (and charged to 4.30 if you fly LiHV).
  packs = {
    [1] = { mah = 300 },
  },

  statusSwitch = false,
}
