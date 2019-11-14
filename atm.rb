def withdraw(amount)
 if amount <=0 
 	return false
 end
end

interest_rate = 4.45
balance = balance * interest_rate

array = []
 notes.each_with_index do |note,index|
 	number_of_notes = amount / note

    next_note = notes[index+1]
    number_of_notes -= 1 if next_note && ((amount % note)%next_note) != 0
        number_of_notes.times do 
      array << note
      amount = amount - note
    end

  end
  return false if amount != 0
  array
end

require 'minitest/spec'
require 'minitest/autorun'

describe 'atm' do
  [
    [-1, false],
    [0, false],
    [7, false],
    [29, false],
    [135, false],
    [70, [50, 20]],
    [80, [20, 20, 20, 20]],
    [90, [50, 20, 20]],
    [120, [50, 50, 20]],
    [130, [50, 20, 20, 20, 20]],
    [160, [50, 50, 20, 20, 20]],
    [200, [50, 50, 50, 50]]
  ].each do |amount, expected|
    it "should return #{expected} when $#{amount} is withdrawn" do
      withdraw(amount).must_equal expected
    end
  end
end