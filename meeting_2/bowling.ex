defmodule Bowling do
  # scores = [[1,2], [3,4], [6, 3]]

  def calculate_score(scores), do: calculate_score(scores, 0)

  def calculate_score([], score), do: score

  def calculate_score([[first_roll, second_roll] | other_frames], score) do
    calculate_score(other_frames, score + first_roll + second_roll)
  end
end
