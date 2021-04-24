defmodule Inamana.WelcomerTest do
  use ExUnit.Case, async: true
  alias Inmana.Welcomer

  describe "welcome/1" do
    test "When the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}

      result = Welcomer.welcome(params)
      expected_result = {:ok, "You are a very special banana"}

      assert result == expected_result
    end

    test "When the user is not special, returns a message" do
      params = %{"name" => "Cassius", "age" => "35"}

      result = Welcomer.welcome(params)
      expected_result = {:ok, "Welcome cassius"}

      assert result == expected_result
    end

    test "When the user is under age, returns an error" do
      params = %{"name" => "Cassius", "age" => "17"}

      result = Welcomer.welcome(params)
      expected_result = {:error, "You shall not pass cassius"}

      assert result == expected_result
    end
  end
end
