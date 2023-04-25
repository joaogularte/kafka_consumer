import Config

config :kafka_consumer, KafkaConsumer.Repo,
  database: "kafka_consumer_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :kafka_consumer, ecto_repos: [KafkaConsumer.Repo]
