use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :live_hacker_news, LiveHackerNewsWeb.Endpoint,
  secret_key_base: "IAxushA3GjFnmBps2RMocI10UJKeqBqEoAqe6xRWPZA86AboIbW6pUZDTgEAw8bg"

# Configure your database
config :live_hacker_news, LiveHackerNews.Repo,
  ssl: true,
  url: database_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")