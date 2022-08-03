def bubble_sort(numbers)
  sorted = false
  until sorted == true
    sorted_counter = 0
    numbers.each_with_index do |number, index|
      break if index == (numbers.length - 1)
      if number > numbers[index + 1]
        numbers[index] = numbers[index + 1]
        numbers[index + 1] = number
      else 
        sorted_counter += 1
      end
    end
    sorted = true if sorted_counter == numbers.length - 1
  end
  numbers
end
p bubble_sort([4,3,78,2,0,2])