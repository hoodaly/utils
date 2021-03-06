defmodule Entice.Utils.StructOpsTest do
  use ExUnit.Case, async: true
  import Entice.Utils.StructOps

  defmodule A, do: defstruct a: 1, b: 2, c: 3
  defmodule B, do: defstruct b: 1, c: 2, d: 3
  defmodule ACoolStruct, do: defstruct a: 1

  test "struct copying" do
    assert copy_into(%B{}, %A{}) == %B{b: 2, c: 3, d: 3}
  end

  test "struct name" do
    assert to_name(%ACoolStruct{}) == "ACoolStruct"
    assert to_underscore_name(%ACoolStruct{}) == "a_cool_struct"
  end
end
