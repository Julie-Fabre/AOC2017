INPUT = as.integer(readLines("day5input.txt"))
steps=0
i=1
while (0 < i & i < length(INPUT)) {
  if (INPUT[i]<3){
    INPUT[i]=INPUT[i]+1
    i=i+INPUT[i]-1
  }else{
    INPUT[i]=INPUT[i]-1
    i=i+INPUT[i]+1
  }
    steps=steps+1
}
steps
