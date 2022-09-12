defmodule Bonfire.PublisherThesis.Web.Router do
  defmacro __using__(_) do
    quote do
      # alias Bonfire.PublisherThesis.Web.Router.Helpers, as: MeRoutes

      # visible to everyone
      scope "/", Bonfire.PublisherThesis.Web do
        pipe_through(:browser)
        live("/", IndexLive, :index)
      end

      # visible only to guests
      scope "/", Bonfire.PublisherThesis.Web do
        pipe_through(:browser)
        pipe_through(:guest_only)
        # guest visible pages
      end

      # visible only to users and account holders
      scope "/~", Bonfire do
        pipe_through(:browser)
        pipe_through(:auth_required)
      end
    end
  end
end
