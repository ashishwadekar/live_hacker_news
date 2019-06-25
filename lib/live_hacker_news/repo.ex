defmodule LiveHackerNews.Repo do
  use Ecto.Repo,
    otp_app: :live_hacker_news,
    adapter: Ecto.Adapters.Postgres
end
