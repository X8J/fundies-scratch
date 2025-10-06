use context dcic2024
include csv
include data-source


orders = table: time, amount
  row: "08:00", 10.50
  row: "09:30", 5.75
  row: "10:15", 8.00
  row: "11:00", 3.95
  row: "14:00", 4.95
  row: "16:45", 7.95
end

orders

fun is-high-value(o :: Row) -> Boolean:
  o["amount"] >= 8.0
end


fun is-morning(o :: Row) -> Boolean:
  o["time"] < "12:00"
end


morning-table = filter-with(orders, is-morning)
morning-table

order-by(morning-table, "time", true)

orders.row-n(0)

#for each(x from range(0, 10)):
photos = load-table:
  location :: String,
  subject :: String,
  date :: String
  source: csv-table-url("https://pdi.run/f25-2000-photos.csv", default-options)

end

fun is-forest(o :: Row) -> Boolean:
  o["subject"] == "Forest"
end

is-forest(photos.row-n(2))

forest-table = filter-with(photos, is-forest)
forest-table

order-by(forest-table, "date", true)
forest-table.row-n(1)

locationCount = count(photos, "subject")
locationCount

order-by(locationCount, "count", true)


locChart = freq-bar-chart(photos, "location")

