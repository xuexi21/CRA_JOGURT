# load csv files and inspect data

# load all csv files one by one
calender <- read.csv("Dim_calendar.csv")
products <- read.csv("Dim_products.csv")
sales <- read.csv("Fact_sales.csv")

# inspect data
View(calender)
View(products)
View(sales)

# calender shape
dim(calender)
dim(products)
dim(sales)

# structure of datasets
str(calender)
str(products)
str(sales)

# Join sales and products on column name article_id

# column names of sales, products and calender
colnames(sales)
colnames(products)

#colnames(calender)

# change the column name of products and sales to article_name
colnames(sales)[1] <- "article_name"
colnames(products)[1] <- "article_name"

# join sales and products on column name article_name
sales_products <- merge(sales, products, by = "article_name")

View(sales_products)
dim(sales_products)
dim(sales)

# Save the joined dataset as csv file
write.csv(sales_products, "sales_products.csv")

# read the csv file
sales_products <- read.csv("sales_products.csv")
view(sales_products)
