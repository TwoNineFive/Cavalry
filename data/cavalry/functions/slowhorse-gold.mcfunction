# checks if player is riding a horse then if the horse is wearing gold horse armor make it 20% slower
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] if entity @e[type=horse,nbt={ArmorItem:{id:"minecraft:gold_horse_armor"}}] run attribute @e[type=horse,nbt={ArmorItem:{id:"minecraft:gold_horse_armor"}},sort=nearest,limit=1] minecraft:generic.movement_speed modifier add 1e0fcafe-358a-42bd-964b-7ab556e77c9f generic.movement_speed -0.2 multiply
# checks if player is riding horse then if the horse is wearing gold armor, if it is then reduced jump by 10%
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] if entity @e[type=horse,nbt={ArmorItem:{id:"minecraft:gold_horse_armor"}}] run attribute @e[type=horse,nbt={ArmorItem:{id:"minecraft:gold_horse_armor"}},sort=nearest,limit=1] minecraft:horse.jump_strength modifier add b8865614-518e-4df9-8276-396378c54b03 horse.jump_strength -0.1 multiply
# checks if player is riding a horse, if they are then check if horse is NOT wearing gold horse armor, if it is not then remove attribute modifiers
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] if entity @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:gold_horse_armor"}}] run attribute @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:gold_horse_armor"}},sort=nearest,limit=1] minecraft:horse.jump_strength modifier remove b8865614-518e-4df9-8276-396378c54b03
execute at @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] if entity @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:gold_horse_armor"}}] run attribute @e[type=horse,nbt=!{ArmorItem:{id:"minecraft:gold_horse_armor"}},sort=nearest,limit=1] minecraft:generic.movement_speed modifier remove 1e0fcafe-358a-42bd-964b-7ab556e77c9f
# could all be made better by just checking if player is riding a horse with iron horse armor and skipping the if entity nbt= part
