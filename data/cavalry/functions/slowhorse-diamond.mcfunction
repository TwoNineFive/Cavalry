# checks if player is riding a horse then if the horse is wearing diamond horse armor make it 50% slower
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] if entity @e[type=horse,nbt={ArmorItem:{id:"minecraft:diamond_horse_armor"}}] run attribute @e[type=horse,nbt={ArmorItem:{id:"minecraft:diamond_horse_armor"}},sort=nearest,limit=1] minecraft:generic.movement_speed modifier add 2b1890e3-8d4b-4a6a-a32e-9b31766c3a4a generic.movement_speed -0.5 multiply
# checks if player is riding horse then if the horse is wearing diamond armor, if it is then reduced jump by 30%
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] if entity @e[type=horse,nbt={ArmorItem:{id:"minecraft:diamond_horse_armor"}}] run attribute @e[type=horse,nbt={ArmorItem:{id:"minecraft:diamond_horse_armor"}},sort=nearest,limit=1] minecraft:horse.jump_strength modifier add ba16e808-a369-4e1b-af2d-ce096c565c51 horse.jump_strength -0.3 multiply
# checks if player is riding a horse, if they are then check if horse is NOT wearing diamond horse armor, if it is not then remove attribute modifiers
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] if entity @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:diamond_horse_armor"}}] run attribute @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:diamond_horse_armor"}},sort=nearest,limit=1] minecraft:generic.movement_speed modifier remove 2b1890e3-8d4b-4a6a-a32e-9b31766c3a4a
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] if entity @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:diamond_horse_armor"}}] run attribute @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:diamond_horse_armor"}},sort=nearest,limit=1] minecraft:horse.jump_strength modifier remove ba16e808-a369-4e1b-af2d-ce096c565c51
# could all be made better by just checking if player is riding a horse with diamond horse armor and skipping the if entity nbt= part
