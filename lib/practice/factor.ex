defmodule Practice.Factor do
  # Set up the function with the accumulator and initial factor candidate.
  def factor(x) do
    factor(x, 2, [])
  end

  # If we're factoring a negative number,
  def factor(x, num, arr) when x < 0 do
    x
    # get the absolute value of x,
    |> abs
    # Then factor the absolute value of x with num and a -1 in the array.
    |> factor(num, List.insert_at(arr, -1, -1))
  end

  # If we're factoring 1 or 0,
  def factor(x, _num, arr) when x <= 1 do
    # We're done, so return the array.
    arr
  end

  # Factor x with the candidate number num and the accumulator array arr.
  def factor(x, num, arr) do
    # If there is no remainder of x/num,
    if Integer.mod(x, num) == 0 do
      # Recursively perform factor function with:
      x
      # x = x/num
      |> div(num)
      # arr has num pushed to the end, and num = 2.
      |> factor(2, List.insert_at(arr, -1, num))
      # Otherwise,
    else
      # Recursively perform factor with num++.
      factor(x, num + 1, arr)
    end
  end
end
