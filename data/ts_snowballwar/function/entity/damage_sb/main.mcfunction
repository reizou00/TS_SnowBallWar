
# 近くにいつやつ(使用者以外)にダメージ
damage @e[distance=..1.9,limit=1,type=!snowball,tag=!ts.Used_DamageSB] 5 generic by @a[tag=ts.Used_DamageSB,limit=1]

# 1tickまってremove
schedule function ts_snowballwar:entity/damage_sb/remove 4t
