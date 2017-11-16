defmodule Bowling do
  def calculate_score(scores), do: calculate_score(scores, 0)

  def calculate_score([], score), do: score

  def calculate_score([[first_roll, second_roll] | rest], score) do
    calculate_score(rest, score + first_roll + second_roll)
  end
end
