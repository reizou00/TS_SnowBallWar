
# レコード再生用のジュークボックスをSetBlock
setblock ~ ~ ~ jukebox

#> ディスプレイ系
    # レコード用のアイテムディスプレイを召喚(最初は透明)
    summon item_display ~ ~1.04 ~ \
        {\
        item:\
            {\
            id:"minecraft:air"\
            },\
        Tags:\
            [\
            "reizo_rp.Record"\
            ],\
        transformation:\
            {\
            left_rotation:\
                [\
                0.7071068f,\
                0.0f,\
                0.0f,\
                0.7071068f\
                ],\
            right_rotation:\
                [\
                0.0f,\
                0.0f,\
                0.0f,\
                1.0f\
                ],\
            translation:\
                [\
                0.0f,\
                0.0f,\
                0.0f\
                ],\
            scale:\
                [\
                0.99999994f,\
                0.9999998f,\
                0.9999998f\
                ]\
            }\
        }

#> レコード用のアイテムディスプレイの位置を補正、Y座標は召喚時に決めているのでなし。
    # X座標 〇.0とかになると数値が変わるよね。YとZは違うけど...
        # まずは計算用のスコアに10倍にして移す
        execute \
        store result score $X reizo_rp.Temp run \
        data get block ~ ~ ~ x 10
        # +か-の検知のために0にセット
        scoreboard players set $0 reizo_rp.Temp 0
        # 0よりでかい場合は5足す
        execute \
        if score $X reizo_rp.Temp > $0 reizo_rp.Temp run \
        scoreboard players remove $X reizo_rp.Temp 5
        # 0より小さい場合は5引く
        execute \
        if score $X reizo_rp.Temp < $0 reizo_rp.Temp run \
        scoreboard players add $X reizo_rp.Temp 5
        # 0.1倍にしてデータに格納
        execute \
        store result entity @n[type=item_display,tag=reizo_rp.Record] Pos[0] double 0.1 run \
        scoreboard players get $X reizo_rp.Temp
    # Z座標
        # まずは計算用のスコアに10倍にして移す
        execute \
        store result score $Z reizo_rp.Temp run \
        data get block ~ ~ ~ z 10
        # 0よりでかい場合は5引く
        execute \
        if score $Z reizo_rp.Temp > $0 reizo_rp.Temp run \
        scoreboard players add $Z reizo_rp.Temp 5
        # 0より小さい場合は5足す
        execute \
        if score $Z reizo_rp.Temp < $0 reizo_rp.Temp run \
        scoreboard players remove $Z reizo_rp.Temp 5
        # 0.1倍にしてデータに格納
        execute \
        store result entity @n[type=item_display,tag=reizo_rp.Record] Pos[2] double 0.1 run \
        scoreboard players get $Z reizo_rp.Temp

execute \
positioned as @n[type=item_display,tag=reizo_rp.Record] \
positioned ~-0.03 ~-0.45 ~-0.0001 run \
function reizo_rp:bde_models/spreader/create