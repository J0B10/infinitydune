#priority 2
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import moretweaker.jei.MoreJei;

static nbt as IData = {
    "akashictome:is_morphing": 1 as byte,
     "akashictome:data": {
        tconstruct: {
            ForgeCaps: {
                "astralsorcery:cap_item_amulet_holder": {
                    
                }
            },
             id: "tconstruct:book",
             Count: 1 as byte,
             tag: {
                "akashictome:definedMod": "tconstruct"
            },
             Damage: 0 as short
        },
         botania: {
            ForgeCaps: {
                "astralsorcery:cap_item_amulet_holder": {
                    AS_Amulet_HolderLeast: -7587368643352464998 as long,
                     AS_Amulet_HolderMost: 8354672453013162083 as long
                }
            },
             id: "botania:lexicon",
             Count: 1 as byte,
             tag: {
                "akashictome:displayName": "Lexica Botania",
                 "akashictome:definedMod": "botania",
                 "akashictome:is_morphing": 1 as byte,
                 display: {
                    Name: "Akashic Tome (Lexica Botania)"
                }
            },
             Damage: 0 as short
        },
         astralsorcery: {
            ForgeCaps: {
                "astralsorcery:cap_item_amulet_holder": {
                    AS_Amulet_HolderLeast: -7587368643352464998 as long,
                     AS_Amulet_HolderMost: 8354672453013162083 as long
                }
            },
             id: "astralsorcery:itemjournal",
             Count: 1 as byte,
             tag: {
                "akashictome:displayName": "Astral Tome",
                 astralsorcery: {
                    
                },
                 "akashictome:definedMod": "astralsorcery",
                 "akashictome:is_morphing": 1 as byte,
                 display: {
                    Name: "Akashic Tome (Astral Tome)"
                }
            },
             Damage: 0 as short
        },
         conarm: {
            ForgeCaps: {
                "astralsorcery:cap_item_amulet_holder": {
                    AS_Amulet_HolderLeast: -7587368643352464998 as long,
                     AS_Amulet_HolderMost: 8354672453013162083 as long
                }
            },
             id: "conarm:book",
             Count: 1 as byte,
             tag: {
                "akashictome:displayName": "Materials and You - Armory Addendum",
                 "akashictome:definedMod": "conarm",
                 "akashictome:is_morphing": 1 as byte,
                 display: {
                    Name: "Akashic Tome (Materials and You - Armory Addendum)"
                },
                 mantle: {
                    book: {
                        page: "materials.iron"
                    }
                }
            },
             Damage: 0 as short
        },
         hwell: {
            ForgeCaps: {
                "astralsorcery:cap_item_amulet_holder": {
                    
                }
            },
             id: "patchouli:guide_book",
             Count: 1 as byte,
             tag: {
                "akashictome:definedMod": "hwell",
                 "patchouli:book": "hwell:book_of_the_well"
            },
             Damage: 0 as short
        },
         immersiveengineering: {
            ForgeCaps: {
                "astralsorcery:cap_item_amulet_holder": {
                    AS_Amulet_HolderLeast: -7587368643352464998 as long,
                     AS_Amulet_HolderMost: 8354672453013162083 as long
                }
            },
             id: "immersiveengineering:tool",
             Count: 1 as byte,
             tag: {
                "akashictome:displayName": "Engineer's Manual",
                 "akashictome:definedMod": "immersiveengineering",
                 "akashictome:is_morphing": 1 as byte,
                 display: {
                    Name: "Akashic Tome (Engineer's Manual)"
                }
            },
             Damage: 3 as short
        },
         bloodmagic: {
            ForgeCaps: {
                "astralsorcery:cap_item_amulet_holder": {
                    AS_Amulet_HolderLeast: -7587368643352464998 as long,
                     AS_Amulet_HolderMost: 8354672453013162083 as long
                }
            },
             id: "guideapi:bloodmagic-guide",
             Count: 1 as byte,
             tag: {
                "akashictome:displayName": "Sanguine Scientiem",
                 "akashictome:definedMod": "bloodmagic",
                 "akashictome:is_morphing": 1 as byte,
                 display: {
                    Name: "Akashic Tome (Sanguine Scientiem)"
                },
                 "G-API_Category_Page": 0
            },
             Damage: 0 as short
        },
         embers: {
            ForgeCaps: {
                "astralsorcery:cap_item_amulet_holder": {
                    AS_Amulet_HolderLeast: -7587368643352464998 as long,
                     AS_Amulet_HolderMost: 8354672453013162083 as long
                }
            },
             id: "embers:codex",
             Count: 1 as byte,
             tag: {
                "akashictome:displayName": "Ancient Codex",
                 "akashictome:definedMod": "embers",
                 "akashictome:is_morphing": 1 as byte,
                 display: {
                    Name: "Akashic Tome (Ancient Codex)"
                }
            },
             Damage: 0 as short
        }
    }
};

static item as IItemStack= <akashictome:tome>.withTag(nbt);

//Description
MoreJei.addDescription(<akashictome:tome>, [
    "Collects all information from various mods.",
    "Put it in a crafting grid after updating the modpack to apply changes."
]);

//Easy recipe
recipes.remove(<akashictome:tome>);
recipes.addShapeless("tome", item, [<minecraft:book>, <minecraft:sandstone:1>]);

//Update crafting
recipes.addShapeless("tome_upgrade", item, [<akashictome:tome>.marked("tome")],
    //recipe function combining the old and the new nbt tags as output
    function(output, inputs, cInfo) {
        return <akashictome:tome>.withTag(inputs.tome.tag + nbt);
    }, null
);
