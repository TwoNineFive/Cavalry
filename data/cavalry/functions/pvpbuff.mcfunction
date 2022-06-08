# checks if player is riding a horse then buff the player by 25% dmg wise
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run attribute @s[scores={onHorse=1}] minecraft:generic.attack_damage modifier add f1110c7d-cae0-4e53-b961-f96cffb0fd13 generic.attack_damage 0.5 multiply
# checks if player is NOT riding a horse, if they are not remove the damage buff
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run attribute @s[scores={onHorse=0}] minecraft:generic.attack_damage modifier remove f1110c7d-cae0-4e53-b961-f96cffb0fd13
# check if horse that player is riding has the proper armor buff, if it does not then add the buff
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run attribute @e[type=horse,nbt=!{Attributes:[{Name:"minecraft:generic.armor", Modifiers: [{Amount:1.0d}]}]},sort=nearest,limit=1] minecraft:generic.armor modifier add db7bbe86-e9e6-46a4-aca6-dc573dc21926 generic.armor 1 multiply
