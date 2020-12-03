defmodule Bonfire.PublisherThesis.Repo.Migrations.ImportThesis do
  use Ecto.Migration

  import Bonfire.PublisherThesis.Migration
  # accounts & users

  def change, do: migrate_thesis

end
