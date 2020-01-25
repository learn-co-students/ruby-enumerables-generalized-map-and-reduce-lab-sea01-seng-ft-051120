def map(arr)
  newArr = []
  
  i = 0
  while i < arr.length do
    newArr << yield(arr[i])
    i += 1
  end
  
  newArr
end


def reduce(arr, start=nil)
  if start
    result = start
    i = 0
  else
    result = arr[0]
    i = 1
  end
  
  while i < arr.length do
    result = yield(result, arr[i])
    puts arr[i], result
    i += 1
  end
  
  result
end