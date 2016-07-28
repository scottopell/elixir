defmodule Euler do
  def problem_one do
    IO.puts 1..999
      |> Enum.filter(&(rem(&1, 3) == 0 or rem(&1, 5) == 0))
      |> Enum.sum
  end

  def fibseq(max_entry, seq \\ [1, 0]) do
    candidate = hd(seq) + hd(tl(seq))
    if candidate < max_entry do
      fibseq(max_entry, [candidate | seq])
    else
      seq
    end
  end

  def problem_two do
    even? = &(rem(&1, 2) == 0)
    IO.puts fibseq(4_000_000)
      |> Enum.filter(even?)
      |> Enum.sum
  end

  def problem_three, do: IO.puts("Hello World")
end

#Euler.problem_one
#Euler.problem_two
Euler.problem_three
