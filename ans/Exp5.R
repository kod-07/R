marks = c(45, 60, 75, 80, 90, 55, 70, 65, 85, 50,
          72, 68, 77, 83, 91, 58, 63, 74, 88, 52,
          66, 79, 81, 69, 73, 59, 62, 84, 87, 53,
          71, 76, 82, 64, 67, 54, 61, 78, 86, 57,
          92, 48, 56, 89, 93, 47, 95, 49, 94, 51)

students <- paste("S", 1:50, sep="")

barplot(marks,
        names.arg=students,
        col="steelblue",
        main="Bar Chart of Student Marks",
        xlab="Students",
        ylab="Marks",
        las=2)

pie(marks,
    labels=students,
    col=rainbow(50),
    main="Pie Chart Showing Proportion of Marks")

hist(marks,
     col="darkgreen",
     main="Histogram of Student Marks",
     xlab="Marks",
     ylab="Frequency",
     border="white")

plot(density(marks),
     col="red",
     lwd=3,
     main="Density Plot of Student Marks",
     xlab="Marks",
     ylab="Density")

boxplot(marks,
        col="orange",
        main="Box Plot of Student Marks",
        ylab="Marks")