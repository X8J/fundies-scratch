use context dcic2024

include csv
include data-source



planes = load-table:
  plant_common_name :: String,
  location_latitude :: Number,
  location_longitude :: Number,
  date_sighted :: String,
  soil_type :: String,
  plant_height_cm :: Number,
  plant_color :: String
  source: csv-table-url("https://raw.githubusercontent.com/NU-London/LCSCI4207-datasets/refs/heads/main/plant_sightings.csv", default-options)
  sanitize plant_height_cm using num-sanitizer
  sanitize location_latitude using num-sanitizer
  sanitize location_longitude using num-sanitizer
end
planes
planes.length()
planes.row-n(2)


avg-points = mean(planes, "plant_height_cm")

avg-points



