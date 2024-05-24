import Config

# Ulu RabbitMQ config
config :bla, RabbitMQ,
  host: "localhost",
  username: "service",
  password: "securegeslo",
  virtual_host: "/",
  connection_timeout: 2_000,
  heartbeat: 30

config :bla,
  topics: ["aws-connect", "aws-connect-legacy", "aws-cloud-processing"]

# config :kafka_ex,
#   brokers: [
#     {"localhost", 9092}
#   ],
#   consumer_group: "dev-bla"

# Ulu ELK configuration
config :bla,
  cluster: [
    "http://127.0.0.1:9200"
  ]

# Core configuration
# config :ecto, json_library: Jason

config :bla,
  core_pool_options: [
    size: 5,
    max_overflow: 0
  ]
