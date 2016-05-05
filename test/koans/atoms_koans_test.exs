defmodule AtomsTests do
  use ExUnit.Case
  import TestHarness

  test "Atoms" do
    answers = [
      :human,
      {:multiple, [:atomized, "stringified"]},
      {:multiple, ["Jay", "Jay"]},
      #{:multiple, ["Jay", quote(do: map.name), "Jay"]},
      #{:multiple, [nil, quote(do: map.age)]},
      {:multiple, [true, true, true, false]},
      {:multiple, [true, String, "HELLO"]},
      {:multiple, [true, [1,2,3]]},
    ]

    test_all(Atoms, answers)
  end
end
