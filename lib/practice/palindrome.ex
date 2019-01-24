defmodule Practice.Palindrome do
  def palindrome?(text) do
    text
    # Remove all non-letter characters.
    |> String.replace(~r/[^a-zA-Z]/, "")
    # Convert to lower case.
    |> String.downcase()
    # Reverse the string.
    |> String.reverse()
    # Return whether or not the reversed and formatted string is equal to:
    ==
    text
    # Remove all non-letter characters.
    |> String.replace(~r/[^a-zA-Z]/, "")
    # Convert to lower case.
    |> String.downcase()
  end
end
