#The method for 99 Bottles of beer. Tricky part is num_string2

def Bottles_99 bottles
  if bottles <= 0  
    return 'If there are no bottles of beer on the wall, we can\'t really sing about it.'
  end
  if bottles > 999
    return 'Excessive drinking is bad for your health. Please enter a less ridiculous number of beers.' 
  end

  onesPlace = ['one',     'two',       'three',    'four',     'five',         #unique building blocks for all numbers 1-999
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']     


  until bottles < 2
    
    num_string = ""  #to be used on the first line of the song
    num_string2 = ""  #to be used on the second line of the song
   
    left = bottles     #this takes the initial bottles count and breaks it down. First hundreds place, then tens, then ones.
    write = left/100
    left = left - write*100

    if write > 0       #meaning if there's something on the hundredths place in the inital number.
      hundreds  = Bottles_99 write
      num_string = num_string + hundreds + ' hundred'

      if left > 0
        num_string = num_string + ' '   #adds a space behind to prepare for the tenths place, in words.
      end
    end
                             
    write = left/10          
    left  = left - write*10  
                             

    if write > 0
      if ((write == 1) and (left > 0))
        num_string = num_string + teenagers[left-1]
        left = 0
      else
        num_string = num_string + tensPlace[write-1]
      end

      if left > 0
        # So we don't write 'sixtyfour'...
        num_string = num_string + '-'
      end
    end
                           
    write = left           
    left  = 0              

    if write > 0
      num_string2 = num_string + onesPlace[write-2] #the write-2 makes it so the character number is one less than num_string
                                                    #it is added into the second line of each repetition.
      num_string = num_string + onesPlace[write-1] #adds onesPlace string to the num_string
     
    end
    bottles = bottles - 1
    puts "#{num_string.capitalize} bottles of beer on the wall, #{num_string} bottles of beer."
    if num_string2 == "one"
      puts "Take one down and pass it around, #{num_string2} bottle of beer on the wall."
      else 
      puts "Take one down and pass it around, #{num_string2} bottles of beer on the wall."
      end
  end
  puts "One bottle of beer on the wall, one bottle of beer." #writing conditionals for these variations will make code longer
  puts "Take one down and pass it around, no more bottles of beer on the wall."
end

puts "How many bottles of beer are on the wall?"
puts Bottles_99(gets.chomp.to_i)