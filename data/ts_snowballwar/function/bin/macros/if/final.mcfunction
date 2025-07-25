
# 30秒たったら鉱石を再設置。
$execute \
if score $(OreNum) ts.RegenerationTime matches 600 run \
function ts_snowballwar:bin/macros/set/block/ore with storage ts:_ OreNum.$(OreNum)