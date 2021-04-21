defmodule Teste do
  use Timex

  def teste do
    # month = 4
    # today = Date.utc_today()
    # Timex.end_of_month(today)
    # Timex.today.year
    # Date.range(Date.utc_today(), Timex.end_of_month(Date.utc_today()))
    # |> Enum.map(fn e -> Date.to_string(e) end)

    # year = 2021
    # month = 4
    # day = 10
    # {_, first} = Date.new(year, month, day)
    # {_, last} = Date.new(2021, 4, 20)
    # Date.range(first, last)
    # |> Enum.map(fn e ->
    #   {_, time} = Time.new(0, 0, 0)
    #   {_, datetime} = DateTime.new(e, time)
    #   DateTime.to_string(datetime)
    # end)
  end
end
