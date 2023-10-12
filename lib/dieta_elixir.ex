defmodule DietaElixir do
  @moduledoc """
  Documentation for `DietaElixir`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> DietaElixir.metabolismoBasal(84, 170, 31)
      1864.3999999999999

  """
  def metabolismoBasal(peso, altura, idade) do
    IO.puts("Peso: #{peso} - Altura: #{altura} - Idade: #{idade}")
    formulaPeso =  13.8 * peso
    IO.puts("Form Peso: #{formulaPeso}")
    formulaAltura = 5 * altura
    IO.puts("Form Altura: #{formulaAltura}")
    formulaIdade = 6.8 * idade
    IO.puts("Form Idade: #{formulaIdade}")
    _resultado =  (66 + (formulaPeso + formulaAltura)) - formulaIdade
  end
end
