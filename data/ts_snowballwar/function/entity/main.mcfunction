

#> 雪玉の処理
    # 爆発雪玉(お願いOnlyOnce!)
    execute at @s[tag=ts.ExplosionSB] run \
    function reizo_onlyonce_lib:_ {func:"ts_snowballwar:entity/explosion_sb/main"}
    # ダメージ雪玉
    execute at @s[tag=ts.DamageSB] run \
    function ts_snowballwar:entity/damage_sb/main