vehicle_data <- data.frame(
  speed = c(20,22,25,28,30,32,35,38,40,42,45,48,50,52,55,58,60,62,65,68,
            70,72,75,78,80,82,85,88,90,92,95,98,100,102,105,108,110,112,
            115,118,120,122,125,128,130,132,135,138,140,145),
  
  fuel_consumption = c(5.2,5.3,5.5,5.7,5.8,6.0,6.1,6.3,6.5,6.6,6.8,7.0,
                       7.1,7.3,7.5,7.7,7.9,8.0,8.3,8.5,8.7,8.9,9.2,9.4,
                       9.6,9.8,10.1,10.4,10.6,10.8,11.0,11.3,11.5,11.7,
                       12.0,12.3,12.5,12.8,13.1,13.4,13.6,13.9,14.2,
                       14.5,14.8,15.1,15.5,15.8,16.2,16.8)
)

vehicle_data

model <- lm(fuel_consumption ~ speed, data = vehicle_data)

summary(model)

plot(vehicle_data$speed,
     vehicle_data$fuel_consumption,
     main = "Speed vs Fuel Consumption",
     xlab = "Speed (km/h)",
     ylab = "Fuel Consumption (L/100 km)",
     pch = 19,
     col = "blue")

abline(model, col = "red", lwd = 2)

predict(model, newdata = data.frame(speed = 95))