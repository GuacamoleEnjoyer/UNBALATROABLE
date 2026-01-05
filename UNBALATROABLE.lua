--- STEAMODDED HEADER
--- MOD_NAME: BalatroxUNBEATABLE reskin
--- MOD_ID: BalatrUNBEATABLE
--- prefix: UNBEAT
--- MOD_AUTHOR: [HeroOfYore]
--- MOD_DESCRIPTION: Adds UNBEATABLE reskins of J, Q, K of all suits

-----------------------------
----------------------------

ranks = {"Jack", "Queen", "King"}

SMODS.Atlas {
    key = 'unbeataspades',
    px = 71,
    py = 95,
    disable_mipmap = true;
    path = 'UNBEATASPADESLC.png'
}

SMODS.Atlas {
    key = 'unbeataspades_hc',
    px = 71,
    py = 95,
    disable_mipmap = true;
    path = 'UNBEATASPADESHC.png'
}

SMODS.Atlas {
    key = 'unbeatahearts',
    px = 71,
    py = 95,
    disable_mipmap = true;
    path = 'UNBEATAHEARTSLC.png'
}
SMODS.Atlas {
    key = 'unbeatahearts_hc',
    px = 71,
    py = 95,
    disable_mipmap = true;
    path = 'UNBEATAHEARTSHC.png'
}

SMODS.Atlas {
    key = 'unbeataclubs',
    px = 71,
    py = 95,
    disable_mipmap = true;
    path = 'UNBEATACLUBSLC.png'
}
SMODS.Atlas {
    key = 'unbeataclubs_hc',
    px = 71,
    py = 95,
    disable_mipmap = true;
    path = 'UNBEATACLUBSHC.png'
}

SMODS.DeckSkin ({
    key = 'UnbeataSpades',
    suit = "Spades",
    ranks = ranks,
    lc_atlas = 'unbeataspades',
    hc_atlas = 'unbeataspades_hc',
    loc_txt = {
        ['en-us'] = 'UNBEATABLE'
    },
    pos_style = 'collab'
})

SMODS.DeckSkin({
    key = 'UnbeataHearts',
    suit = "Hearts",
    ranks = ranks,
    lc_atlas = 'unbeatahearts',
    hc_atlas = 'unbeatahearts_hc',
    loc_txt = {
        ['en-us'] = 'UNBEATABLE',
    },
    pos_style = 'collab'
})

SMODS.DeckSkin({
    key = 'UnbeataClubs',
    suit = "Clubs",
    ranks = ranks,
    lc_atlas = 'unbeataclubs',
    hc_atlas = 'unbeataclubs_hc',
    loc_txt = {
        ['en-us'] = 'UNBEATABLE',
    },
    pos_style = 'collab'
})

-----------------------------
-----------------------------