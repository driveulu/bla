import Config

config :kafka_ex,
  brokers: [
    {"localhost", 9092}
  ],
  consumer_group: "dev-bla"

# Ulu ELK configuration
config :bla,
  cluster: [
    "http://127.0.0.1:9200"
  ]
