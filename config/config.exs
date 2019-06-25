# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_hacker_news,
  ecto_repos: [LiveHackerNews.Repo]

# Configures the endpoint
config :live_hacker_news, LiveHackerNewsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ElLspxf53WMi2g27r0SLg+Yo3U4KcxAxMuMEzmSyF4Vat3vqNXKjEMmhGxgcTFcK",
  render_errors: [view: LiveHackerNewsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveHackerNews.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# LiveView Signing Salt
config :live_hacker_news, LiveHackerNewsWeb.Endpoint,
   live_view: [
     signing_salt: "VhKbwUCvgHscMehkIrGl8wN4JTeYOsGK"
   ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
