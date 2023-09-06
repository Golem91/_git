#>placer
#spawn block placer
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~0.225 align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~-0.225 align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~0.225 ~ align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~-0.225 ~ align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~-0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn

#kill block placer
execute as @e[type=armor_stand,tag=placer] at @s unless block ~ ~ ~ minecraft:dispenser run function manilla:placer/kill

#detect trigger placer
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=north] if block ~ ~ ~-1 #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=south] if block ~ ~ ~1 #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=east] if block ~1 ~ ~ #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=west] if block ~-1 ~ ~ #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=up] if block ~ ~1 ~ #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=down] if block ~ ~-1 ~ #manilla:airs run tag @s add drop
scoreboard players add @e[type=armor_stand,tag=drop] timer 1
execute as @e[type=armor_stand,tag=drop,scores={timer=5..}] at @s as @e[type=item,sort=nearest,limit=1,distance=..1.5] at @s run function manilla:placer/item_get
tag @e[type=armor_stand,tag=drop,scores={timer=5..}] remove drop
scoreboard players reset @e[type=armor_stand,tag=placer,scores={timer=5..}] timer

#>breaker
#spawn block breaker
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~0.225 align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~-0.225 align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~0.225 ~ align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~-0.225 ~ align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~-0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn

#kill block breaker
execute as @e[type=armor_stand,tag=breaker] at @s unless block ~ ~ ~ minecraft:observer run function manilla:breaker/kill

#detect trigger breaker
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=south] unless block ~ ~ ~1 #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=north] unless block ~ ~ ~-1 #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=east] unless block ~1 ~ ~ #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=west] unless block ~-1 ~ ~ #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=up] unless block ~ ~1 ~ #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=down] unless block ~ ~-1 ~ #manilla:unbreakable run tag @s add break
scoreboard players add @e[type=armor_stand,tag=break] timer 1
execute as @e[type=armor_stand,tag=break,scores={timer=40..}] at @s run function manilla:breaker/break

#>fabricator
#spawn fabricator
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~0.225 align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~-0.225 align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~0.225 ~ align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~-0.225 ~ align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~0.475 ~ align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~-0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn

#kill fabricator
execute as @e[type=armor_stand,tag=fabricator] at @s unless block ~ ~ ~ minecraft:stonecutter run function manilla:fabricator/kill

#detect trigger fabricator
execute as @e[type=armor_stand,tag=fabricator,tag=!fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:logs run tag @s add fabricate
execute as @e[type=armor_stand,tag=fabricator,tag=!fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:stripped_logs if block ~ ~1 ~ #manilla:airs if block ~ ~2 ~ #manilla:airs if block ~ ~3 ~ #manilla:airs run tag @s add fabricate
execute as @e[type=armor_stand,tag=fabricator,tag=!fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:planks if block ~ ~1 ~ #manilla:airs run tag @s add fabricate
scoreboard players add @e[type=armor_stand,tag=fabricate] timer 1
execute as @e[type=armor_stand,tag=fabricate,scores={timer=40..}] at @s positioned ~ ~1 ~ run function manilla:fabricator/getblock
#reset timer if area is occupied
execute as @e[type=armor_stand,tag=fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:stripped_logs unless block ~ ~1 ~ #manilla:airs unless block ~ ~2 ~ #manilla:airs unless block ~ ~3 ~ #manilla:airs run function manilla:fabricator/cancel_planks
execute as @e[type=armor_stand,tag=fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:planks unless block ~ ~1 ~ #manilla:airs run function manilla:fabricator/cancel_slabs

#>new player health set
execute as @a[tag=!initd] run attribute @s generic.max_health base set 6
tag @a[tag=!initd] add initd

#>health containers
execute as @a run function manilla:healthcont/cont_set

#>mana
execute as @a run function manilla:mana/manabar
#set creative players mana to max
scoreboard players set @a[gamemode=creative] mana 20

#>raycasting
execute as @a[nbt={SelectedItem:{tag:{CustomModelData:1}}},predicate=manilla:click,predicate=manilla:breaker_basic] at @s run function manilla:ray/summon
execute as @e[type=armor_stand,tag=raycast] at @s if block ~ ~ ~ #manilla:permeable run tp @s ^ ^ ^0.5
execute as @e[type=armor_stand,tag=raycast] at @s if block ~ ~ ~ #manilla:permeable run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~ ~ 0 0 0 5 5 normal
execute as @e[type=armor_stand,tag=raycast] run scoreboard players add @s distance 1
execute as @e[type=armor_stand,tag=raycast] at @s unless block ~ ~ ~ #manilla:permeable run function manilla:ray/kill
execute as @e[type=armor_stand,tag=raycast] at @s if block ~ ~ ~ #manilla:permeable run tp @s ^ ^ ^0.5
execute as @e[type=armor_stand,tag=raycast] at @s if block ~ ~ ~ #manilla:permeable run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~ ~ 0 0 0 5 5 normal 
execute as @e[type=armor_stand,tag=raycast] run scoreboard players add @s distance 1
execute as @e[type=armor_stand,tag=raycast] at @s unless block ~ ~ ~ #manilla:permeable run function manilla:ray/kill
#failed to execute of too less mana
execute as @a[nbt={SelectedItem:{tag:{CustomModelData:1}}},predicate=manilla:click,predicate=manilla:breaker_basic] at @s run playsound minecraft:entity.skeleton.step block @s ~ ~ ~
#max distance for raycasting distance=... /2 =>25 blocks
execute as @e[type=armor_stand,tag=raycast,scores={distance=50..}] run kill @s
#break block detection
execute as @e[tag=marker] store result score @s health run data get entity @s Health
execute as @e[tag=marker,type=slime] if score @s health matches ..96 run function manilla:ray/hit 
#reset click
scoreboard players reset @a click