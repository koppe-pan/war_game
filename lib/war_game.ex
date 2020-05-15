defmodule WarGame do
  @moduledoc """
  WarGame keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  @id_length Application.get_env(:war_game, :id_length)

  def generate_player_id do
    @id_length
    |> :crypto.strong_rand_bytes()
    |> Base.url_encode64()
    |> binary_part(0, @id_length)
  end
end
