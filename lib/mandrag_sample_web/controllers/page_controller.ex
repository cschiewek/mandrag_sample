defmodule MandragSampleWeb.PageController do
  use MandragSampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
