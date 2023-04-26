defmodule KafkaConsumer.Repo.Migrations.CreateMessage do
  use Ecto.Migration

  def change do
    create table(:messages, primary_key: false) do
      add :id, :uuid, primary_key: true

      add :published_at, :utc_datetime
      add :consumed_at, :utc_datetime
      add :processed_at, :utc_datetime

      add :consumer_type, :string

      add :cycle, :integer

      timestamps(type: :utc_datetime)
    end

    create index(:messages, [:inserted_at, :consumer_type])
  end
end
