
colnames(training)

#### store 1 ####
store1 = training[which(training$StoreNumber == 1000),]

# subset of data for store1, 1st bucket
s1_sub1 <- subset(store1, `3HourBucket` == 1, select = c(dayOfTheYear, GrossSoldQuantity))
s1_sub2 <- subset(store1, `3HourBucket` == 2, select = c(dayOfTheYear, GrossSoldQuantity))
s1_sub3 <- subset(store1, `3HourBucket` == 3, select = c(dayOfTheYear, GrossSoldQuantity))
s1_sub4 <- subset(store1, `3HourBucket` == 4, select = c(dayOfTheYear, GrossSoldQuantity))

## store 1 qty_sold
# plot
par(xpd = FALSE)
plot(s1_sub1$dayOfTheYear, s1_sub1$GrossSoldQuantity, type = 'l', 
     main = 'Store 1 Quantity Sold vs. Day', 
     xlab = 'Day', ylab = 'Quantity')
# 2nd 
lines(s1_sub2$dayOfTheYear, s1_sub2$GrossSoldQuantity, 
      col = rgb(red = 1, green = 0, blue = 0, alpha = 0.3))
# 3rd
lines(s1_sub3$dayOfTheYear, s1_sub3$GrossSoldQuantity, 
      col = rgb(red = 0, green = 1, blue = 0, alpha = 0.3))
# 4th
lines(s1_sub4$dayOfTheYear, s1_sub4$GrossSoldQuantity, 
      col = rgb(red = 0, green = 0, blue = 1, alpha = 0.3))
par(xpd = TRUE)
legend(x = 325, y = 150, title = 'Bucket',
       c('1', '2', '3', '4'),
       col = c('black', 'red', 'green', 'blue'), lty = rep(1, 4))




#### store 2 ####
store2 = training[which(training$StoreNumber == 2000),]

# subset of data for store2, 1st bucket
s2_sub1 <- subset(store2, `3HourBucket` == 1, select = c(dayOfTheYear, GrossSoldQuantity))
s2_sub2 <- subset(store2, `3HourBucket` == 2, select = c(dayOfTheYear, GrossSoldQuantity))
s2_sub3 <- subset(store2, `3HourBucket` == 3, select = c(dayOfTheYear, GrossSoldQuantity))
s2_sub4 <- subset(store2, `3HourBucket` == 4, select = c(dayOfTheYear, GrossSoldQuantity))

## plot
# 1st bucket
par(xpd = FALSE)
plot(s2_sub1$dayOfTheYear, s2_sub1$GrossSoldQuantity, type = 'l', 
     main = 'Store 2 Quantity Sold vs. Day', 
     xlab = 'Day', ylab = 'Quantity', ylim = c(0,80))
# 2nd 
lines(s2_sub2$dayOfTheYear, s2_sub2$GrossSoldQuantity, 
      col = rgb(red = 1, green = 0, blue = 0, alpha = 0.3))
# 3rd
lines(s2_sub3$dayOfTheYear, s2_sub3$GrossSoldQuantity, 
      col = rgb(red = 0, green = 1, blue = 0, alpha = 0.3))
# 4th
lines(s2_sub4$dayOfTheYear, s2_sub4$GrossSoldQuantity, 
      col = rgb(red = 0, green = 0, blue = 1, alpha = 0.3))
par(xpd = TRUE)
legend(x = 325, y = 120, title = 'Bucket',
       c('1', '2', '3', '4'),
       col = c('black', 'red', 'green', 'blue'), lty = rep(1, 4))



#### store 3 ####
store3 = training[which(training$StoreNumber == 3000),]

# subset of data for store3, 1st bucket
s3_sub1 <- subset(store3, `3HourBucket` == 1, select = c(dayOfTheYear, GrossSoldQuantity))
s3_sub2 <- subset(store3, `3HourBucket` == 2, select = c(dayOfTheYear, GrossSoldQuantity))
s3_sub3 <- subset(store3, `3HourBucket` == 3, select = c(dayOfTheYear, GrossSoldQuantity))
s3_sub4 <- subset(store3, `3HourBucket` == 4, select = c(dayOfTheYear, GrossSoldQuantity))

## plot
# 1st bucket
par(xpd = FALSE)
plot(s3_sub1$dayOfTheYear, s3_sub1$GrossSoldQuantity, type = 'l', 
     main = 'Store 3 Quantity Sold vs. Day', 
     xlab = 'Day', ylab = 'Quantity', ylim = c(0,80))
# 2nd 
lines(s3_sub2$dayOfTheYear, s3_sub2$GrossSoldQuantity, 
      col = rgb(red = 1, green = 0, blue = 0, alpha = 0.3))
# 3rd
lines(s3_sub3$dayOfTheYear, s3_sub3$GrossSoldQuantity, 
      col = rgb(red = 0, green = 1, blue = 0, alpha = 0.3))
# 4th
lines(s3_sub4$dayOfTheYear, s3_sub4$GrossSoldQuantity, 
      col = rgb(red = 0, green = 0, blue = 1, alpha = 0.3))
par(xpd = TRUE)
legend(x = 325, y = 120, title = 'Bucket',
       c('1', '2', '3', '4'),
       col = c('black', 'red', 'green', 'blue'), lty = rep(1, 4))


#### store 4 ####
store4 = training[which(training$StoreNumber == 4000),]

# subset of data for store4, 1st bucket
s4_sub1 <- subset(store4, `3HourBucket` == 1, select = c(dayOfTheYear, GrossSoldQuantity))
s4_sub2 <- subset(store4, `3HourBucket` == 2, select = c(dayOfTheYear, GrossSoldQuantity))
s4_sub3 <- subset(store4, `3HourBucket` == 3, select = c(dayOfTheYear, GrossSoldQuantity))
s4_sub4 <- subset(store4, `3HourBucket` == 4, select = c(dayOfTheYear, GrossSoldQuantity))

## plot
# 1st bucket
par(xpd = FALSE)
plot(s4_sub1$dayOfTheYear, s4_sub1$GrossSoldQuantity, type = 'l', 
     main = 'Store 4 Quantity Sold vs. Day', 
     xlab = 'Day', ylab = 'Quantity', ylim = c(0,180))
# 2nd 
lines(s4_sub2$dayOfTheYear, s4_sub2$GrossSoldQuantity, 
      col = rgb(red = 1, green = 0, blue = 0, alpha = 0.3))
# 3rd
lines(s4_sub3$dayOfTheYear, s4_sub3$GrossSoldQuantity, 
      col = rgb(red = 0, green = 1, blue = 0, alpha = 0.3))
# 4th
lines(s4_sub4$dayOfTheYear, s4_sub4$GrossSoldQuantity, 
      col = rgb(red = 0, green = 0, blue = 1, alpha = 0.3))
par(xpd = TRUE)
legend(x = 325, y = 250, title = 'Bucket',
       c('1', '2', '3', '4'),
       col = c('black', 'red', 'green', 'blue'), lty = rep(1, 4))


#### cycles ####

plot(x1_day_hr1[1:21], y1_qty_hr1[1:21], type = 'l')

plot(x1_day_hr1[x1_day_hr1 %% 8 == 0], y1_qty_hr1[y1_qty_hr1 %% 8 == 0], type = 'l')


plot(s4_sub1$dayOfTheYear[1:14], s4_sub1$GrossSoldQuantity[1:14], type = 'l', 
     main = 'Store 4 Quantity Sold vs. Day', 
     xlab = 'Day', ylab = 'Quantity')


# weekends <- 

# s4_sub1$GrossSoldQuantity[s4_sub1$dayOfTheYear %% 7 == 5 | 
#                              s4_sub1$dayOfTheYear %% 7 == 6 | 
#                              s4_sub1$dayOfTheYear %% 7 == 0 | 
#                              s4_sub1$dayOfTheYear %% 7 == 1]

y <- s4_sub1$GrossSoldQuantity[s4_sub1$dayOfTheYear %% 7 == 5]
x <- s4_sub1$dayOfTheYear[s4_sub1$dayOfTheYear %% 7 == 5]

y <- s4_sub1$GrossSoldQuantity[s4_sub1$dayOfTheYear %% 7 == 6]
x <- s4_sub1$dayOfTheYear[s4_sub1$dayOfTheYear %% 7 == 6]

y <- s4_sub1$GrossSoldQuantity[s4_sub1$dayOfTheYear %% 7 == 3]
x <- s4_sub1$dayOfTheYear[s4_sub1$dayOfTheYear %% 7 == 3]

# store 4's outlier,  %% 7 == 3
s4_sub1$dayOfTheYear[s4_sub1$GrossSoldQuantity > 100]
s4_sub1$dayOfTheYear[-which(s4_sub1$dayOfTheYear == 185)]
no_outlier <- s4_sub1[-which(s4_sub1$dayOfTheYear == 185)]

y <- s4_sub1$GrossSoldQuantity[s4_sub1$dayOfTheYear %% 7 == 3]
x <- s4_sub1$dayOfTheYear[s4_sub1$dayOfTheYear %% 7 == 3]

y <- y[-which(s4_sub1$dayOfTheYear == 185)]
x <- x[-which(s4_sub1$dayOfTheYear == 185)]

plot(x,y)

mean(s4_sub1$GrossSoldQuantity[s4_sub1$dayOfTheYear %% 7 == 6])
mean(s4_sub1$GrossSoldQuantity[s4_sub1$dayOfTheYear %% 7 == 5])
mean(s4_sub1$GrossSoldQuantity[s4_sub1$dayOfTheYear %% 7 == 3])



