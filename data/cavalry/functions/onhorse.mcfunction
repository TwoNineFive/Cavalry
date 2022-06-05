# check if player does NOT have an onHorse score; due to how minecraft handles dummy objectives this must be running at all times
execute as @a unless score @s onHorse <= bird onHorse run scoreboard players set @s onHorse 0
# check if player is on horse and has a onHorse score of 0 (not on the horse), if they are on the horse and have a 0 score, set the score to 1
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}},scores={onHorse=0}] run scoreboard players set @s onHorse 1
# check if player is NOT on horse and has a onHorse score of 1 (on the horse), if they are NOT on the horse and have a 1 score, set the score to 0
execute as @a[nbt=!{RootVehicle:{Entity:{id:"minecraft:horse"}}},scores={onHorse=1}] run scoreboard players set @s onHorse 0
