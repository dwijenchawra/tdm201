data <- read.csv("data_beer.csv")
print(head(data, 5))
print(str(data))

generate_histogram_from <- function(df, ...){
    cols <- list(...)
    # print(df[,])


    # print(head(df, 50))

    # print(cols)
    for (i in cols) {
        print(i)
        print(df[, i][200:400])
        current_col <- df[, i][!is.na(df[, i])]
        print(range(current_col))
        print(current_col[200:400])
        plot.new()
        hist(current_col, plot = TRUE)
    }

}

generate_histogram_from(data, "abv", "brewery_id")
