
# データがないならfalseに。
$execute \
unless data storage reizo_onlyonce:_ $(func) run \
data merge storage reizo_onlyonce:_ \
{\
"$(func)":false\
}

# 何を動かすかな...?お好きに！
$execute \
if data storage reizo_onlyonce:_ \
{\
"$(func)":false\
} run \
function $(func)

# 終わったらtrueに。
$data merge storage reizo_onlyonce:_ \
{\
"$(func)":true\
}