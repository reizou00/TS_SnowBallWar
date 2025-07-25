
#
$execute \
unless block ~$(x) ~$(y) ~$(z) air run \
function reizo_onlyonce_lib:_ {func:"ts_snowballwar:bin/summon/creeper"}

# 一回動かないように。
data modify storage ts:_ SummonCreeper set value 1b