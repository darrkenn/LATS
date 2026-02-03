defmodule LatsWeb.PageController do
  use LatsWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
