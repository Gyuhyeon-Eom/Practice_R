library(dplyr)

df_raw <- data.frame( var1 = c(1,2,3),
                      var2 = c(2,3,4))

df_new <- rename(df_raw, v2 = var2)

df_new
