defmodule Hospital do
  def address do
    "132 Dog Street"
  end

  def med_school_if(person) do
    result = "burp"
    if person.first_name == nil do
      result = "The amazing nameless doctor"
    end

    if person.first_name == "Javier" do
      result = "rejected"
    end

    if person.first_name != nil && person.first_name != "Javier" do
      result = "Dr. #{person.first_name}, Phd"
    end

    result
  end

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end


  def piping_example do
    Integer.to_string(Enum.reduce([1, 2], fn val, acc -> val + acc end))

    [1, 2]
    |> Enum.reduce(fn val, acc -> val + acc end)
    |> Integer.to_string()
  end

  def med_school_case(person) do
    case person.first_name do
      nil -> "Nameless"
      "Javier" -> "Rejected"
      name -> "Dr. #{name}, Phd"
    end
  end

  def med_school(%{first_name: nil}), do: "Nameless Doctor"
  def med_school(%{first_name: "Javier"}), do: "Rejected"
  def med_school(%{first_name: first_name}) do
    "Dr. #{first_name}, Phd"
  end
end
