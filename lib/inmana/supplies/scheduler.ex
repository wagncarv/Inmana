defmodule Inmana.Supplies.Scheduler do
  use GenServer

  alias Inmana.Supplies.ExpirationNotification

  def init(state \\ %{}) do
    schedule_notification()
    {:ok, state}
  end

  def handle_info(msg, state) do
    {:noreply, state}
  end

  defp schedule_notification do
    Process.send_after(self(), :generate, 1000 * 10)
  end
end
