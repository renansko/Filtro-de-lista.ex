defmodule ListFilter do
  def call(list), do: filter(list)

  defp filter(list) do
    list
    |> Enum.flat_map(fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.filter(fn x -> rem(x, 2) != 0 end)
  end
end
