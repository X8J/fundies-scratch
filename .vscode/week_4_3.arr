use context dcic2024
include csv
include data-source

thing = load-table:
  code :: String,
  Indicies :: String,
  Aug-24 :: Number,
  Sep-24 :: Number,
  Oct-24 :: Number,
  Nov-24 :: Number,
  Dec-24 :: Number,
  Jan-25 :: Number,
  Feb-25 :: Number,
  Mar-25 :: Number,
  Apr-25 :: Number,
  May-25 :: Number,
  Jun-25 :: Number,
  Jul-25 :: Number,
  Aug-25 :: Number
  source: csv-table-file("ons-cpih.csv", default-options)
  sanitize Aug-24 using num-sanitizer
sanitize Sep-24 using num-sanitizer
sanitize Oct-24 using num-sanitizer
sanitize Nov-24 using num-sanitizer
  sanitize Dec-24 using num-sanitizer
  sanitize Jan-25 using num-sanitizer
  sanitize Feb-25 using num-sanitizer
  sanitize Mar-25 using num-sanitizer
  sanitize Apr-25 using num-sanitizer
  sanitize May-25 using num-sanitizer
  sanitize Jun-25 using num-sanitizer
  sanitize Jul-25 using num-sanitizer
  sanitize Aug-25 using num-sanitizer
end

fun row-diff(r :: Row) -> Number:
  r["Aug-25"] - r["Aug-24"]
end

with-dist = build-column(thing, "difference", row-diff)

with-dist

fun pct(r :: Row) -> Number:
  ((num-abs(r["difference"] - num-abs(r["Aug-25"])) / (r["difference"] + r["Aug-25"]) / 2) * 100)
end

with-pct = build-column(thing, "pct", row-diff)

with-pct

sorted = order-by(with-pct, "pct", true)
sorted


