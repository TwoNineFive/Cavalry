# checks if player is riding a horse then buff the player by 25% dmg wise
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run attribute @s[scores={onHorse=1}] minecraft:generic.attack_damage modifier add f1110c7d-cae0-4e53-b961-f96cffb0fd13 generic.attack_damage 0.25 multiply
# checks if player is NOT riding a horse, if they are not remove the damage buff
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run attribute @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:diamond_horse_armor"}},sort=nearest,limit=1] minecraft:generic.attack_damage modifier remove f1110c7d-cae0-4e53-b961-f96cffb0fd13
