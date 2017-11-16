# Run me by navigating to this directory and running
# iex hospital.ex

defmodule Hospital do
  def top_department do
    "Big Toe Stub Unit"
  end

  def address do
    "The bottom of the ocean"
  end

  ################
  # FLOW CONTROL #
  ################
  # If/unless
  def go_to_medical_school(person)
    if person.first_name == nil do
      "The amazing nameless doctor"
    end

    if person.first_name == "Javier" do
      "Rejected"
    end

    "Dr. #{person.first_name}, Phd"
  end

  # case
  def go_to_medical_school(person)
    case person.first_name do
      nil -> "The amazing nameless doctor"
      "Javier" -> "Rejected"
      name -> "Dr. #{name}, Phd"
    end
  end

  # Multiple function heads
  person = %{first_name: "Catfish", last_name: "McGee", age: 37}

  def go_to_medical_school(%{first_name: nil}), do: "The amazing nameless doctor"
  def go_to_medical_school(%{first_name: "Javier"}), do: "Rejected"
  def go_to_medical_school(%{first_name: first_name}) do
    "Dr. #{first_name}, Phd"
  end

  #############
  # Iteration #
  #############

  # For loops
  def cure_patients_for(patients) do
    cures = [
      "I feel great now",
      "I am cured!",
      "I am literally 20 years younger now!",
    ]

    for patient <- patients do
      cure = cures |> Enum.shuffle |> List.first
      IO.puts "#{patient} says: " <> cure
    end

    {:ok, "The doctor heads home for the day, her hands weary from a hard day's work."}
  end

  # Iterators
  def cure_patients_each(patients) do
    patients
    |> Enum.each(&cure_patient/1)

    {:ok, "The doctor heads home for the day, her hands weary from a hard day's work."}
  end

  def cure_patient(patient) do
    cures = [
      "I feel great now",
      "I am cured!",
      "I am literally 20 years younger now!",
    ]

    cure = cures |> Enum.shuffle |> List.first
    IO.puts "#{patient} says: " <> cure
  end

  # Recursion.  This is probably the preferred implementation
  def cure_patients([]), do: {:ok, "The doctor heads home for the day, her hands weary from a hard day's work."}
  def cure_patients([patient | others]) do
    cures = [
      "#{patient} says: I feel great now",
      "#{patient} says: I am cured!",
      "#{patient} says: I am literally 20 years younger now!",
    ]

    IO.puts cures |> Enum.shuffle |> List.first

    cure_patients(others)
  end
end
