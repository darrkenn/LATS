defmodule Lats.Server do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    case File.read("assets/html/index.html") do
      {:ok, contents} ->
        conn
        |> put_resp_content_type("text/html")
        |> send_resp(200, contents)

      {:error, _reason} ->
        send_resp(conn, 404, "File not found")
    end
  end

  get "/css/tailwind.css" do
    case File.read("assets/css/tailwind.css") do
      {:ok, contents} ->
        conn
        |> put_resp_content_type("text/css")
        |> send_resp(200, contents)

      {:error, _} ->
        send_resp(conn, 404, "File not found")
    end
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
