=begin
	
Exercise File
Code File

Exercise Description
Build out a method that takes two arguments: the total amount of money requested and the denominations that can be returned. And return the count of how many bills of each denomination should be returned to a user.

Example Data Input
245, [20, 10, 5]
In this example, 245 is the total amount requested at the ATM, and the array represents 20, 10, and 5 dollar bills.

Expected Output
{20=>12, 10=>0, 5=>1}
This hash represents 12 $20 dollar bills and 1 $5 dollar bills.
	
=end


=begin
  Build out a method that takes two arguments: the total amount of money requested and the denominations that can be returned. And return the count of how many bills of each denomination should be returned to a user.

Example Data Input

245, [20, 10, 5]

In this example, 245 is the total amount requested at the ATM, and the array represents 20, 10, and 5 dollar bills.

Expected Output
{20=>12, 10=>0, 5=>1}

This hash represents 12 $20 dollar bills and 1 $5 dollar bills.
=end


def atm_dispensor money_requested, denomination
  
  min_value = money_requested % denomination.min
  if min_value !=0
    puts "Please enter a denomination in multiples of #{denomination.min}" 
  else 
	  if (money_requested >= denomination[0])
      first_note = money_requested / denomination[0]        
      first_modulo = money_requested % denomination[0]   
      if first_modulo == 0 
        hash = {denomination[0]=> first_note, denomination[1]=> 0, denomination[2]=> 0 }
      elsif (first_modulo >= denomination[1])
        second_note = first_modulo / denomination[1]        
        second_modulo = first_modulo % denomination[1]
        if second_modulo == 0
          hash = {denomination[0]=> first_note, denomination[1]=> second_note, denomination[2]=> 0 }
        else
          third_note = second_modulo / denomination[2]      
          hash = {denomination[0]=> first_note, denomination[1]=> second_note, denomination[2]=> third_note }
        end
      else
        second_note = first_modulo / denomination[2]
        hash = {denomination[0]=> first_note, denomination[1]=> 0, denomination[2]=> second_note }
      end
    elsif (money_requested >= denomination[1])
    	first_note = money_requested / denomination[1]        
    	first_modulo = money_requested % denomination[1]
    	if first_modulo == 0 
      	hash = {denomination[0]=> 0, denomination[1]=> first_note, denomination[2]=> 0 }
    	else
      	second_note = money_requested / denomination[1]        
      	hash = {denomination[0]=> 0, denomination[1]=> first_note, denomination[2]=> second_note }
    	end
  	else
    	first_note = money_requested / denomination[2]        
    	hash = {denomination[0]=> 0, denomination[1]=> 0, denomination[2]=> first_note }
  	end
	end 
end

atm_dispensor 255 , [20,10,5]