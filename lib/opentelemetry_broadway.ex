defmodule OpentelemetryBroadway do
  @moduledoc """
  OpentelemetryBroadway uses [telemetry](https://hexdocs.pm/telemetry/) handlers
  to create `OpenTelemetry` spans from [Broadway](https://hexdocs.pm/broadway/)
  jobs.

  It supports job start, stop and exception events.

  ## Usage

  In your application start:

  ```
  def start(_type, _args) do
    :ok = OpentelemetryBroadway.setup()

    # ...
  end
  ```
  """

  alias OpentelemetryBroadway.JobHandler

  @doc """
  Attaches the telemetry handlers, returning `:ok` if successful.
  """
  @spec setup :: :ok
  def setup() do
    :ok = JobHandler.attach()
  end
end
