INPUT = as.matrix(read.table("AoC_day2.csv", sep=",", header=FALSE))
result_sum = 0
for (row in 1:16) {
    for (col in 1:16) {
      for (c in 1:16) {
             if (INPUT[row,col]%%INPUT[row,c]==0 & INPUT[row,col]/INPUT[row,c]!=1){
                 result_sum = result_sum + (INPUT[row,col]/INPUT[row,c])
             }
      }
    }
}
print(result_sum)
