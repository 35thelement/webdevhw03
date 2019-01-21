defmodule Practice.Calc do

  def calc(expr) do
    # If the string is formatted like this:
    # Start of string:
    # (optionally: -)(numbers)(optionally: .(numbers))(one of +,-,*,/)
    # {Repeat the previous any number of times}
    # String does not end with (one of +,-,*,/)
    # End of string
    if String.match?(expr, ~r/^(-?\d+(\.\d+)?[-+\/*]?)*(?<![+-\/*])$/) do
      expr
      # Evaluate the string mathematically,
      |> Code.eval_string
      # and return the first element of the tuple.
      |> elem(0)
    else
      "Error: Non-Equational Input!"
    end
  end
end
