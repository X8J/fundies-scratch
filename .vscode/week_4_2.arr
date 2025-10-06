use context dcic2024
items = table: item :: String, x-coordinate :: Number, y-coordinate :: Number
  row: "Sword of Dawn",           23,  -87
  row: "Healing Potion",         -45,   12
  row: "Dragon Shield",           78,  -56
  row: "Magic Staff",             -9,   64
  row: "Elixir of Strength",      51,  -33
  row: "Cloak of Invisibility",  -66,    5
  row: "Ring of Fire",            38,  -92
  row: "Boots of Swiftness",     -17,   49
  row: "Amulet of Protection",    82,  -74
  row: "Orb of Wisdom",          -29,  -21
end


items

fun subtract-1(n :: Number) -> Number:
  n - 1
end

moved-items = transform-column(items, "x-coordinate", subtract-1)


fun tenPercent(n :: Number) -> Number:
  n * 0.90
end


closerX = transform-column(items, "x-coordinate", tenPercent) 

closerY = transform-column(closerX, "y-coordinate", tenPercent)

closerY

fun calc-distance(r :: Row) -> Number:
  (r["x-coordinate"] * r["x-coordinate"]) +
  (r["y-coordinate"] * r["y-coordinate"])
end

items-with-dist = build-column(items, "distance", calc-distance)

items-with-dist

sorted = order-by(items-with-dist, "distance", true)
closerY.row-n(1)













obfuscate = lam(name :: String):
  string-repeat("X", string-length(name))
end

items-obf = transform-column(items, "item", obfuscate)

items-obf