flights <- readRDS("data/flights.rds")
flightsData <- flights$data[[1]]$data_frame
dplyr::glimpse(flightsData)

flightsData$DepartureTimeZone |>
  table() |>
  sort(drcreasing = T) -> tb_departureTimeZone

flights$dataSummary$DepartureTimeZone <- tb_departureTimeZone

saveRDS(flights, file = "data/flights_after.rds")

length(tb_departureTimeZone)

unique_time_zones <- unique(flightsData$DepartureTimeZone)
num_time_zones <- length(num_time_zones)

cat("Number of time zones:", num_time_zones, "\n")
observations_per_time_zone <- table(flightsData$DepartureTimeZone)

cat("Observation per time zone:\n")
print(observations_per_time_zone)


flightsData |> split(flightsData$DepartureTimeZone) ->split_flightsData
x=1
split_flightsData[[x]] |> dplyr::glimpse()
split_flightsData[[x]] |> View()

split_flightsData[[.x]]$DepartureTime <- 
  lubridate::ymd_hm(
  split_flightsData[[x]]$DepartureTime, 
  tz = split_flightsData[[x]]$DepartureTime[[1]]
)

split_flightsData[[.x]] |>
  dplyr::mutate(
    DepartureTime = 
      lubridate::ymd_hm(
        DepartureTime,
        tz = DepartureTimeZone[[1]])
  
)

flightsData |>
  dplyr::group_by(DepartureTimeZone) |>
  dplyr::mutate(
    DepartureTime = 
      lubridate::ymd_hm(
        DepartureTime,
        tz = DepartureTimeZone[[1]])
  ) |>dplyr::glimpse()