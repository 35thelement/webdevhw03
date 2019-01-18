defmodule Practice.Palindrome do
  def palindrome?(text) do
    text
    |> String.replace(" ", "")
    |> String.reverse()
    ==
    text
    |> String.replace(" ", "")
  end
end
