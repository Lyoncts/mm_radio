-- Add these items to your ox_inventory/data/items.lua

return {
    ['radio'] = {
        label = 'Radio',
        weight = 500,
        stack = false,
        close = true,
        description = 'A handheld radio communication device',
        client = {
            export = 'mm_radio.useRadio'
        }
    },

    ['radio_box'] = {
        label = 'Radio Box',
        weight = 600,
        stack = true,
        close = true,
        description = 'A boxed package containing a radio device',
        client = {
            export = 'mm_radio.openRadioBox'
        }
    },

    ['radiocell'] = {
        label = 'Radio Battery Cell',
        weight = 100,
        stack = true,
        close = true,
        description = 'A battery cell used to recharge radio batteries',
        client = {
            event = 'mm_radio:client:recharge'
        }
    },

    ['jammer'] = {
        label = 'Radio Jammer',
        weight = 2500,
        stack = false,
        close = true,
        description = 'A deployable frequency jammer to disrupt radio signals',
        client = {
            event = 'mm_radio:client:usejammer'
        }
    },
}
