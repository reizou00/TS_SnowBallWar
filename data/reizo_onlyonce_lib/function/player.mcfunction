
# 一回だけ実行する用のスコアを作成
$scoreboard objectives add reizo_onlyonce.$(obj) dummy

# 1から2じゃなかったら数字変えます。
$execute \
unless score @s reizo_onlyonce.$(obj) matches 1 run \
scoreboard players set @s reizo_onlyonce.$(obj) 0

# function実行、何が起こるかな～！
$execute \
if score @s reizo_onlyonce.$(obj) matches 0 run \
function $(func)

# 発動条件はスコアが0になった時なので1に変更。
$scoreboard players set @s reizo_onlyonce.$(obj) 1