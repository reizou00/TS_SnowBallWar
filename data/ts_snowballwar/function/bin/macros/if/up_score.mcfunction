
# 鉱石のナンバーのスコアを加算
$execute \
if data storage ts:_ {Dig:{$(OreNum):1b}} run \
scoreboard players add $(OreNum) ts.RegenerationTime 1