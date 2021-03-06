# count up by 1 every tick
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run scoreboard players add @s counter1 1
# when you are on the horse and your score is 1 (2 seconds), apply an instant damage effect (2 hearts) to anyone being "trampled" by the horse
# this effect is slightly buggy so it might not always work, currently looking for a fix for this
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}},scores={counter1=1}] at @e[type=horse,sort=nearest,limit=1] run effect give @p[distance=0..0.85,scores={onHorse=0}] minecraft:instant_damage 1 0
# when the score reaches 1 (2 seconds) reset back to 0 to restart the timer
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}},scores={counter1=1}] run scoreboard players set @s counter1 0
