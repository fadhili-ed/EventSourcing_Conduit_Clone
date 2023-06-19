defmodule Conduit.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Conduit.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "jake@jake.jake",
        username: "jake",
        hashed_password: "jakejake",
        bio: "I like to skateboard",
        image: "https://i.stack.imgur.com/xHWG8.jpg"
      })
      |> Conduit.Accounts.create_user()

    user
  end
end
