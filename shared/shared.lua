---@type number
Shared.MaxFrequency = 500.00 -- Max Limit of Radio Channel

---@type boolean
Shared.LeaveOnDeath = true -- Should the player leave the radio channel when they die

---@type boolean
Shared.BreakInWater = true -- Should the radio break and be removed from inventory when the player enters water

---@class Jammer
---@field state boolean
---@field model string
---@field permission string[]
---@field default table
---@field range table

---@type Jammer
Shared.Jammer = {
    state = false, -- to use jammer system or not
    model = 'sm_prop_smug_jammer', -- prop to spawn for jammer
    permission = {"police"}, -- permission how can setup jammer (job/gang)
    default = {}, -- default jammer setup location
    range = {
        min = 10.0,
        max = 100.0,
        step = 5.0,
        default = 30.0
    }
}

---@type string[]
Shared.RadioItem = {
    'radio'
}

---@class RadioBox
---@field state boolean
---@field item string
---@field reward string
---@field openTime number

---@type RadioBox
Shared.RadioBox = {
    state = true, -- enable opening radio box to get radio
    item = 'radio_box', -- item name to use
    reward = 'radio', -- item name given upon opening
    openTime = 2500 -- time in ms to open the box
}

---@class Battery
---@field state boolean
---@field consume number
---@field depletionTime number

---@type Battery
Shared.Battery = {
    state = false, -- to use battery system or not
    consume = 1, -- battery consume rate
    depletionTime = 1, -- in minute, every 1 minute battery will decrease by consume value
}

---@type [string]: string
Shared.RadioNames = {
    ["1"] = "EGPD CH#1", -- channel value 1
    ["1.%"] = "EGPD CH#1", -- channel value 1.%%%% string formatter
    ["2"] = "EGMS CH#1", -- channel value 2
    ["2.%"] = "EGMS CH#1", -- channel value 2.%%%% string formatter
    ["3"] = "EGT CH#1", -- channel value 3
    ["3.%"] = "EGT CH#1", -- channel value 3.%%%% string formatter
    ["4"] = "EGWS CH#1", -- channel value 4
    ["4.%"] = "EGWS CH#1", -- channel value 4.%%%% string formatter
    ["5"] = "EGTOWING CH#1", -- channel value 5
    ["5.%"] = "EGTOWING CH#1", -- channel value 5.%%%% string formatter
    ["6"] = "EGMART CH#1", -- channel value 6
    ["6.%"] = "EGMART CH#1", -- channel value 6.%%%% string formatter
    ["7"] = "EGBREW CH#1", -- channel value 7
    ["7.%"] = "EGBREW CH#1", -- channel value 7.%%%% string formatter
}

Shared.RestrictedChannels = {
    [1] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance"}
    },
    [2] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance"}
    },
    [3] = { -- channel id
        type = 'job', -- job/gang
        name = {"tuning"}
    },
    [4] = { -- channel id
        type = 'job', -- job/gang
        name = {"workshop"}
    },
    [5] = { -- channel id
        type = 'job', -- job/gang
        name = {"towing"}
    },
    [6] = { -- channel id
        type = 'job', -- job/gang
        name = {"mart"}
    },
    [7] = { -- channel id
        type = 'job', -- job/gang
        name = {"burgershot"}
    },
}

lib.locale()