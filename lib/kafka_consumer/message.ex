defmodule KafkaConsumer.Message do
  use Ecto.Schema

  @primary_key {:id, Ecto.UUID, autogenerate: true}
  @timestamps_opts [type: :utc_datetime_usec]

  schema "messages" do
    field(:published_at, :utc_datetime_usec)
    field(:consumed_at, :utc_datetime_usec)
    field(:processed_at, :utc_datetime_usec)

    field(:consumer_type, :string)

    field(:cycle, :integer)

    timestamps()
  end
end
