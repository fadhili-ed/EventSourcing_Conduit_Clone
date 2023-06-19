defmodule Conduit.Accounts.Events.UserRegistered do
  @deprive [Poison.Encoder]
  defstruct [
    :user_uuid,
    :username,
    :email,
    :hashed_password,
  ]
end
