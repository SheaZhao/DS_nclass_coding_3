# install packages
install.packages("utils")

library(utils)

library(readr)
realData <- read_csv("~/Documents/stanford_classes/data_sci/class_3/Sacramentorealestatetransactions.csv")
View(Sacramentorealestatetransactions)

# if your dataset has blank rows at begining, read_csv gives an error 
# use realData=read.csv(...., skip = 0) skip allows you to skip first n rows that
# are blank

colnames(realData)
# "street"    "city"      "zip"       "state"     "beds"      "baths"     "sq__ft"   
# "type"      "sale_date" "price"     "latitude"  "longitude"

cor(realData$sq__ft,realData$price)
install.packages("ggplot2")
library(ggplot2)

ggplot(realData, aes(sq__ft, price)) +  # 0 sq ft outliers
    geom_point()

ind <- which(realData$sq__ft == 0) # don't press more than once

realData <- realData[-ind,] # ideally should call this realData_2 or something

ggplot(realData, aes(sq__ft, price)) +  # still have some outliers, but better
    geom_point()

cor(realData$sq__ft,realData$price) # cor went from .3ish to almost .7



