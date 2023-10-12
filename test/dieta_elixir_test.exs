defmodule DietaElixirTest do
  use ExUnit.Case
  doctest DietaElixir

  test "deve retornar a taxa de metabolismo basal" do
    assert DietaElixir.metabolismoBasal(84, 170, 31) == 1864.3999999999999
  end
end
