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

  end

  def bubble_sort(array)

    # [3, 5, 1, 2, 9, 6, 4, 8, 7]

    # 0.upto(array.length - 1) do |i|
    #   i.upto(array.length-1) do |j|
    #     array[i], array[j] = array[j], array[i] if array[i] > array[j]
    #   end
    #   p array
    # end

    0.upto(array.length-2) do |i|
      0.upto((array.length-2)-i) do |j|
        array[j],array[j+1] = array[j+1], array[j] if array[j] > array[j + 1]
      end
      p array
    end

  end

end