
#> まずはストレージに格納(custom_nameだけしかないらしい、custom_dataは?追加しろやぁ！(もう遅いし()の中に()作んなや。))
data modify storage ts:_ Item.OffHand set from entity @s equipment.offhand.components."minecraft:custom_name"
data modify storage ts:_ Item.MainHand set from entity @s SelectedItem.components."minecraft:custom_name"
#> 別に両手でも処理変わらんやろ。
data modify storage ts:_ Item.Both set from storage ts:_ Item.OffHand
data modify storage ts:_ Item.Both set from storage ts:_ Item.MainHand

#> 雪玉を持っているかな？
    # 爆発雪玉
        # とりあえず持ってるぜ！
        execute \
        if data storage ts:_ \
        {\
        Item:\
            {\
            Both:"爆発雪玉"\
            }\
        } run \
        function ts_snowballwar:item/explosion_sb/main
    # ダメージ雪玉
        # とりあえず持ってるぜ！
        execute \
        if data storage ts:_ \
        {\
        Item:\
            {\
            Both:"ダメージ雪玉"\
            }\
        } run \
        function ts_snowballwar:item/damage_sb/main

#> 色々リセット！
    # スコア
    execute \
    at @s[scores={ts.UseSB=1..}] run \
    scoreboard players reset @s ts.UseSB
    # ストレージ
    data remove storage ts:_ Item
    data modify storage reizo_onlyonce:_ ts_snowballwar:entity/explosion_sb/main set value 0b
    data modify storage reizo_onlyonce:_ ts_snowballwar:bin/summon/creeper set value 0b