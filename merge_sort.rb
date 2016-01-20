# Build a method #merge_sort that takes in an array
# and returns a sorted array, using a recursive merge sort methodology.
def merge(a, b)
  sorted = []
  until a.empty? || b.empty?
    a[0] <= b[0] ? sorted << a.shift : sorted << b.shift
  end
  sorted += a + b
end

def merge_sort(arr)
  return arr if arr.length <= 1 
  a = merge_sort(arr[0..(arr.length / 2 - 1)])
  b = merge_sort(arr[(arr.length / 2)..-1])
  new_arr = merge(a, b)
end