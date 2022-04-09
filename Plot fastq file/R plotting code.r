reads = list(1:4929438)
read_count = as.numeric(unlist(reads))

my_data <- read.delim("read_score.txt", stringsAsFactor = FALSE)
read_score_list = as.numeric(unlist(my_data))

x = read_count[1:8]
y = read_score_list[1:4929438]
plot(x,y)