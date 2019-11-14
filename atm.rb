def withdraw(amount)
 if amount <=0 
 	return false
 end
end

array = []
 notes.each_with_index do |note,index|
 	number_of_notes = amount / note
 	
    next_note = notes[index+1]
    number_of_notes -= 1 if next_note && ((amount % note)%next_note) != 0