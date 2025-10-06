use context dcic2024
include csv
include data-source

fun isLeapYear(year :: Number) -> String:
  doc: "determines if year is a leap year"
  if (num-modulo(year, 4) == 0):
    "leap year"
  else if (num-modulo(year, 400) == 0):
    "leap year"
  else:
    "not leap year"
  end
end

isLeapYear(2024)

fun tick(seconds :: Number) -> Number:
  if (seconds > 59):
    0
  else:
    seconds + 1
  end
end
tick(59)



planets = table:
  planet_name :: String,
  planet_distance :: Number
  row: "Mercury", 0.39
  row: "Venus",	0.72
  row: "Earth",	1
  row: "Mars",	1.52
  row: "Jupiter",	5.2
  row: "Saturn",	9.54
  row: "Uranus",	19.2
  row: "Neptune", 30.06
end

planets.row-n(2)
#Extract the distance from the variable mars



#year,day,month,rate
boe-rates = load-table:
  year :: Number,
  day :: Number,
  month :: String,
  rate :: Number
  source: csv-table-file("boe_rates.csv", default-options)
  sanitize year using num-sanitizer
  sanitize day using num-sanitizer
  sanitize rate using num-sanitizer
end

boe-rates.row-n(0)   # first row
