private["_var", "_mode"];
_var = [_this, 0, "", [""]] call BIS_fnc_param;
_mode = [_this, 1, -1, [0]] call BIS_fnc_param;
if (_var == ""
OR _mode == -1) exitWith {
    ""
};
switch (_mode) do {
case 0:
    {
        switch (_var) do {
        case "pickaxe":
            {
                "life_inv_pickaxe"
            }; case "axe": {
                "life_inv_axe"
            }; case "defibrillator": {
                "life_inv_defibrillator"
            }; case "toolkit": {
                "life_inv_toolkit"
            }; case "fuelEmpty": {
                "life_inv_fuelEmpty"
            }; case "fuelFull": {
                "life_inv_fuelFull"
            }; case "spikeStrip": {
                "life_inv_spikeStrip"
            }; case "lockpick": {
                "life_inv_lockpick"
            }; case "goldBar": {
                "life_inv_goldBar"
            }; case "blastingCharge": {
                "life_inv_blastingCharge"
            }; case "boltCutter": {
                "life_inv_boltCutter"
            }; case "defuseKit": {
                "life_inv_defuseKit"
            }; case "storageSmall": {
                "life_inv_storageSmall"
            }; case "storageBig": {
                "life_inv_storageBig"
            }; case "copper_unrefined": {
                "life_inv_copper_unrefined"
            }; case "copperRefined": {
                "life_inv_copperRefined"
            }; case "tlenwolf": {
                "life_inv_tlenwolf"
            }; case "drewno": {
                "life_inv_drewno"
            }; case "deska": {
                "life_inv_deska"
            }; case "mebel": {
                "life_inv_mebel"
            }; case "diamondUncut": {
                "life_inv_diamondUncut"
            }; case "diamondCut": {
                "life_inv_diamondCut"
            }; case "rock": {
                "life_inv_rock"
            }; case "cement": {
                "life_inv_cement"
            }; case "sitemapnormal": {
                "life_inv_sitemapnormal"
            }; case "sitemaprare": {
                "life_inv_sitemaprare"
            }; case "surveyingequipment": {
                "life_inv_surveyingequipment"
            }; case "advsurveyingequipment": {
                "life_inv_advsurveyingequipment"
            }; case "shovel": {
                "life_inv_shovel"
            }; case "basictools": {
                "life_inv_basictools"
            }; case "ancientbook": {
                "life_inv_ancientbook"
            }; case "claypot": {
                "life_inv_claypot"
            }; case "claybowl": {
                "life_inv_claybowl"
            }; case "claypipe": {
                "life_inv_claypipe"
            }; case "decorativeclaypipe": {
                "life_inv_decorativeclaypipe"
            }; case "decorativeclaybowl": {
                "life_inv_decorativeclaybowl"
            }; case "decorativeclaypot": {
                "life_inv_decorativeclaypot"
            }; case "stonearrowheads": {
                "life_inv_stonearrowheads"
            }; case "bronzering": {
                "life_inv_bronzering"
            }; case "bronzestatue": {
                "life_inv_bronzestatue"
            }; case "bronzecoin": {
                "life_inv_bronzecoin"
            }; case "bronzeaxehead": {
                "life_inv_bronzeaxehead"
            }; case "ironarrowheads": {
                "life_inv_ironarrowheads"
            }; case "ironknife": {
                "life_inv_ironknife"
            }; case "ironaxehead": {
                "life_inv_ironaxehead"
            }; case "ironspearhead": {
                "life_inv_ironspearhead"
            }; case "silverring": {
                "life_inv_silverring"
            }; case "silverstatue": {
                "life_inv_silverstatue"
            }; case "silverjewellery": {
                "life_inv_silverjewellery"
            }; case "goldring": {
                "life_inv_goldring"
            }; case "goldstatue": {
                "life_inv_goldstatue"
            }; case "jewelencrustedsilver": {
                "life_inv_jewelencrustedsilver"
            }; case "jewelencrustedgold": {
                "life_inv_jewelencrustedgold"
            }; case "silvercoins": {
                "life_inv_silvercoins"
            }; case "pottery": {
                "life_inv_pottery"
            }; case "stoneknife": {
                "life_inv_stoneknife"
            }; case "stoneaxe": {
                "life_inv_stoneaxe"
            }; case "goldcoins": {
                "life_inv_goldcoins"
            }; case "jewellery": {
                "life_inv_jewellery"
            }; case "woodencontainer": {
                "life_inv_woodencontainer"
            }; case "smallchest": {
                "life_inv_smallchest"
            }; case "mediumchest": {
                "life_inv_mediumchest"
            };
            case "leadbox": {
                "life_inv_leadbox"
            }; case "largechest": {
                "life_inv_largechest"
            }; case "hugechest": {
                "life_inv_hugechest"
            }; case "heroinUnprocessed": {
                "life_inv_heroinUnprocessed"
            }; case "heroinProcessed": {
                "life_inv_heroinProcessed"
            }; case "cannabis": {
                "life_inv_cannabis"
            }; case "marijuana": {
                "life_inv_marijuana"
            }; case "cocaineUnprocessed": {
                "life_inv_cocaineUnprocessed"
            }; case "cocaineProcessed": {
                "life_inv_cocaineProcessed"
            }; case "redgull": {
                "life_inv_redgull"
            }; case "coffee": {
                "life_inv_coffee"
            }; case "waterBottle": {
                "life_inv_waterBottle"
            }; case "apple": {
                "life_inv_apple"
            }; case "jablecznik": {
                "life_inv_jablecznik"
            }; case "peach": {
                "life_inv_peach"
            }; case "tbacon": {
                "life_inv_tbacon"
            }; case "donuts": {
                "life_inv_donuts"
            }; case "rabbitRaw": {
                "life_inv_rabbitRaw"
            }; case "rabbit": {
                "life_inv_rabbit"
            }; case "salemaRaw": {
                "life_inv_salemaRaw"
            }; case "salema": {
                "life_inv_salema"
            }; case "ornateRaw": {
                "life_inv_ornateRaw"
            }; case "ornate": {
                "life_inv_ornate"
            }; case "mackerelRaw": {
                "life_inv_mackerelRaw"
            }; case "mackerel": {
                "life_inv_mackerel"
            }; case "tunaRaw": {
                "life_inv_tunaRaw"
            }; case "tuna": {
                "life_inv_tuna"
            }; case "mulletRaw": {
                "life_inv_mulletRaw"
            }; case "mullet": {
                "life_inv_mullet"
            }; case "catsharkRaw": {
                "life_inv_catsharkRaw"
            }; case "catshark": {
                "life_inv_catshark"
            }; case "turtleRaw": {
                "life_inv_turtleRaw"
            }; case "turtleSoup": {
                "life_inv_turtleSoup"
            }; case "henRaw": {
                "life_inv_henRaw"
            }; case "hen": {
                "life_inv_hen"
            }; case "roosterRaw": {
                "life_inv_roosterRaw"
            }; case "rooster": {
                "life_inv_rooster"
            }; case "sheepRaw": {
                "life_inv_sheepRaw"
            }; case "sheep": {
                "life_inv_sheep"
            }; case "goatRaw": {
                "life_inv_goatRaw"
            }; case "goat": {
                "life_inv_goat"
            }; case "zipties": {
                "life_inv_zipties"
            }; case "blindfold": {
                "life_inv_blindfold"
            }; case "trzcina": {
                "life_inv_trzcina"
            }; case "cukier": {
                "life_inv_cukier"
            }; case "proch_np": {
                "life_inv_proch_np"
            }; case "proch_p": {
                "life_inv_proch_p"
            }; case "pocisk": {
                "life_inv_pocisk"
            }; case "domestos": {
                "life_inv_domestos"
            }; case "dop": {
                "life_inv_dop"
            }; case "butelka": {
                "life_inv_butelka"
            }; case "morphine": {
                "life_inv_morphine"
            }; case "bandages": {
                "life_inv_bandages"
            }; case "gpsTracker": {
                "life_inv_gpsTracker"
            }; case "piwo": {
                "life_inv_piwo"
            }; case "wodka": {
                "life_inv_wodka"
            }; case "whiskey": {
                "life_inv_whiskey"
            }; case "rafa": {
                "life_inv_rafa"
            }; case "pszenica": {
                "life_inv_pszenica"
            }; case "pankuronium": {
                "life_inv_pankuronium"
            }; case "strzykawka": {
                "life_inv_strzykawka"
            }; case "pawulon": {
                "life_inv_pawulon"
            }; case "paczek": {
                "life_inv_paczek"
            }; case "gilzy": {
                "life_inv_gilzy"
            }; case "tyton": {
                "life_inv_tyton"
            }; case "tyton_p": {
                "life_inv_tyton_p"
            }; case "pet": {
                "life_inv_pet"
            }; case "uran_niep": {
                "life_inv_uran_niep"
            }; case "uran_ocz": {
                "life_inv_uran_ocz"
            }; case "uran_przetw": {
                "life_inv_uran_przetw"
            }; case "uran_wzb": {
                "life_inv_uran_wzb"
            }; case "uran_pret": {
                "life_inv_uran_pret"
            }; case "uran_brud": {
                "life_inv_uran_brud"
            }; case "counterfitCash": {
                "life_inv_counterfitCash"
            }; case "codeCracker": {
                "life_inv_codeCracker"
            }; case "speedbomb": {
                "life_inv_speedbomb"
            }; case "cprKit": {
                "life_inv_cprKit"
            }; case "papieros": {
                "life_inv_papieros"
            }; case "pannic": {
                "life_inv_pannic"
            }; case "coal": {
                "life_inv_coal"
            }; case "wino": {
                "life_inv_wino"
            };
        };
    };
case 1:
    {
        switch (_var) do {};
    };
};