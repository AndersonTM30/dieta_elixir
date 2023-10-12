defmodule DietaElixirTest do
  use ExUnit.Case
  doctest DietaElixir

  test "deve retornar a taxa de metabolismo basal" do
    assert DietaElixir.metabolismoBasal(84, 170, 31) == 1864.4
  end

  test "deve retornar a quantidade de água que deve tomar e ml" do
    assert DietaElixir.quantidadeDeAguaDiaria(84) == 2940
  end

  test "deve retornar porcentagem" do
    assert DietaElixir.retornaPorcentagem(35) == 0.35
  end

  test "deve retornar o défcit calórico" do
    assert DietaElixir.retornarDefcitCalorico(DietaElixir.metabolismoBasal(84, 170, 31), 20) == 391.53
  end
end
