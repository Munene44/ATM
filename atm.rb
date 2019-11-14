def withdraw(amount)
 if amount <=0 
 	return false
 end
end

array = []
 notes.each_with_index do |note,index|
 	number_of_notes = amount / note