class Sorter

  def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while(i >= 0 && array[i] > value)
      # copy the element
      array[i+1] = array[i]
      i -= 1
    end

    # insert the actual element
    array[i+1] = value;
  end

  def insertion_sort(array)

    0.upto(array.length - 2) do |i|
      insert(array, i, array[i + 1])
    end   

    array   

  end

  def bubble_sort(array)

    sorted = false
    i = 0
    until sorted
      sorted = true
      0.upto((array.length-2)-i) do |j|
        if array[j] > array[j + 1]
          array[j],array[j+1] = array[j+1], array[j]
          sorted = false
        end
      end
      i += 1
      p array
    end

    array

  end

  def mergesort(array)

    return array if array.length == 1
    new_arr = array.each_slice((array.length/2.0).round).to_a
    p new_arr
    leftArr = mergesort(new_arr[0])
    p leftArr
    rightArr = mergesort(new_arr[1])
    p rightArr
    merge(leftArr, rightArr)

  end

  def merge(leftArr, rightArr)
    
    new_array = []
    i = 0
    j = 0
    until i == leftArr.length && j == rightArr.length
      if i == leftArr.length
        new_array << rightArr[j]
        j += 1
      elsif j == rightArr.length
        new_array << leftArr[i]
        i += 1
      elsif leftArr[i] < rightArr[j]
        new_array << leftArr[i]
        i += 1
      elsif leftArr[i] > rightArr[j]
        new_array << rightArr[j]
        j += 1
      end
    end

    new_array

  end

end