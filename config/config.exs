# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :seemecmd,
  ecto_repos: [Seemecmd.Repo]

# Configures the endpoint
config :seemecmd, SeemecmdWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+2NP3wLlXvyFdjmzireC+gO+d15XaFuo+qi+SHYP4chum0MELGJoJp3MLLnY/0+v",
  render_errors: [view: SeemecmdWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Seemecmd.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
