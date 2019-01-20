defmodule Practice.Factor do
  # Set up the function with the accumulator and initial factor candidate.
  def factor(x) do
    factor(x, 2, [])
  end

  # If we're factoring 1, we're done, so return the array.
  def factor(1, _num, arr) do
    arr
  end

  # Factor x with the candidate number num and the accumulator array arr.
  def factor(x, num, arr) do
    # If there is no remainder of x/num,
    if Integer.mod(x, num) == 0 do
      # Recursively perform factor function with:
      x
      # x = x/num
      |> Integer.floor_div(num)
      # arr has num pushed to the end, and num = 2.
      |> factor(2, List.insert_at(arr, -1, num))
      # Otherwise,
    else
      # Recursively perform factor with num++.
      factor(x, num + 1, arr)
    end
  end
end
