{:ok, input} = File.read("input.txt")

Regex.scan(~r/mul\((\d+),(\d+)\)/, String.replace(input, ~r/don\'t.*?do\(/s, ""))
|> Enum.map(fn [_, x, y] ->
  String.to_integer(x) * String.to_integer(y)
end)
|> Enum.sum()
|> IO.puts()
