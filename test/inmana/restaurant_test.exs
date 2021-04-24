defmodule Inmana.RestaurantTest do
  use Inmana.DataCase, async: true
  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do
    test "When all params are valid, returns a valid changeset" do
      params = %{name: "Siri cascudo", email: "siri@cascudo.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{changes: %{name: "Siri cascudo", email: "siri@cascudo.com"}, valid?: true} =
               response
    end

    test "When there are invalid params, returns an invalid changeset" do
      params = %{name: "S", email: "siricascudo.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response

      assert errors_on(response) == %{
               email: ["has invalid format"],
               name: ["should be at least 2 character(s)"]
             }
    end
  end
end
