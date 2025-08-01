
# ========================================== #
# 命名規則:
# 鉱石の一つの塊は、
# 1m_<塊の中のナンバー>とする。
# m = mass
#
# 鉱石の塊ではない、個のものは、
# 1pとする。
# p = pieces
#
# Typeには、必ずその鉱石のブロック名と同じものを入れる。
# ------------------------------------------ #
# 例:
# 鉱石の一つの塊の時。
# function ts_snowballwar:bin/macros/set/data/block_num {x:1,y:2,z:3,OreNum:1m_1}
#
# 鉱石の塊ではない、個のもの。
# function ts_snowballwar:bin/macros/set/data/block_num {x:1,y:2,z:3,OreNum:1p}
# ========================================== #

#> スコア作成
scoreboard objectives add ts.RegenerationTime dummy
scoreboard objectives add ts.UseSB used:snowball
scoreboard objectives add ts.PlayerKill custom:player_kills
scoreboard objectives add ts.Serif dummy

# TODO:データ格納を書け！
# InitがOnになっていなら...
# execute \
# unless data storage ts:_ Init run \
# function ts_snowballwar:init/_