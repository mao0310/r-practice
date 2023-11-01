
flights = readRDS("data/flights.rds")
str(flights)

flightsdata <- flights$data[[1]]$data_frame
#Or
flightsdata <- flights[["data"]][[1]][["data_frame"]]

names(flightsData)





head(flightsData)

class(flightsData$AirlineID)




householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)

class(householdIncomes)

householdIncomes[[1]] < "high income"

flightsData$AirlineID <- factor(  
  flightsData$AirlineID
)

class(flightsData$AirlineID)
head(flightsData$AirlineID)


fct_householdIncome <- factor(householdIncomes)

ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income")

                                   