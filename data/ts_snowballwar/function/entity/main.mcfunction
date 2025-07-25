

#> 雪玉の処理
    # 爆発雪玉
    execute at @s[tag=ts.ExplosionSB] \
    if data storage ts:_ \
    {\
    SummonCreeper:0b\
    } run \
    function ts_snowballwar:entity/explosion_sb/main
    # ダメージ雪玉
    execute at @s[tag=ts.DamageSB] run \
    function ts_snowballwar:entity/damage_sb/main