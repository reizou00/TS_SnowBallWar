
# 座標、ブロックナンバーを設定できるマクロっすよ。
$execute \
if block $(x) $(y) $(z) air run \
data modify storage ts:_ Dig.$(OreNum) set value 1b