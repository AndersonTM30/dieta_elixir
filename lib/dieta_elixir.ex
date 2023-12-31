defmodule DietaElixir do
  @moduledoc """
  Documentation for `DietaElixir`.
  """

  @doc """

  ## Example

      iex> DietaElixir.metabolismoBasal(84, 170, 31)
      1864.4

  """
  def metabolismoBasal(peso, altura, idade) do
    # IO.puts("Peso: #{peso} - Altura: #{altura} - Idade: #{idade}")
    formulaPeso = 13.8 * peso
    # IO.puts("Form Peso: #{formulaPeso}")
    formulaAltura = 5 * altura
    # IO.puts("Form Altura: #{formulaAltura}")
    formulaIdade = 6.8 * idade
    # IO.puts("Form Idade: #{formulaIdade}")
    _resultado = (66 + (formulaPeso + formulaAltura) - formulaIdade) |> Float.ceil(2)
  end

  @doc """

  ## Example

      iex> DietaElixir.quantidadeDeAguaDiaria(84)
      2940

  """
  def quantidadeDeAguaDiaria(peso) do
    _resultado = 35 * peso
  end

  @doc """

  ## Example

      iex> DietaElixir.retornaPorcentagem(35)
      0.35

  """
  def retornaPorcentagem(porcentagem) do
    _resultado = (porcentagem / 100) |> Float.ceil(2)
  end

  @doc """

  ## Example

      iex> DietaElixir.retornarDefcitCalorico(1864.4, 20)
      391.53

  """
  def retornarDefcitCalorico(tmb, porcentagem) do
    porcentagem = DietaElixir.retornaPorcentagem(porcentagem)
    _converterPorcentagemEmNumero = (tmb * porcentagem) |> Float.ceil(2)
  end

  @doc """

  ## Example

      iex> DietaElixir.retornarTMBEmDefictCalorico(1864.4, 391.53)
      1472.88

  """
  def retornarTMBEmDefictCalorico(tmb, defcitCalorico) do
    taxaTMB = tmb
    taxaDefcit = defcitCalorico
    _resultado = (taxaTMB - taxaDefcit) |> Float.ceil(2)
  end
end
