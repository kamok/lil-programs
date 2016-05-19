#Table of Contents generator 
lineWidth = 60

array = ["Chapter 1:  Numbers","page 1","Chapter 2:  Letters","page 72","Chapter 3:  Variables","page 118"]

puts "Table of Contents".center lineWidth

puts array[0].ljust(lineWidth/2) + array[1].rjust(lineWidth/2)
puts array[2].ljust(lineWidth/2) + array[3].rjust(lineWidth/2)
puts array[4].ljust(lineWidth/2) + array[5].rjust(lineWidth/2)

#puts array.select{|x| x%2==0}

#needs a more elegant solution