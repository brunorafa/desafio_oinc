defmodule DesafioOinc.Users.Events.UserCreated do
  @moduledoc false
  @derive Jason.Encoder
  defstruct [:user_id, :name, :bio]
end
