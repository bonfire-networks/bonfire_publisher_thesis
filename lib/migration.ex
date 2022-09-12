defmodule Bonfire.PublisherThesis.Migration do
  use Ecto.Migration

  def migrate_thesis() do
    create table(:thesis_pages) do
      add(:slug, :string)
      add(:title, :string, size: 512)
      add(:description, :string, size: 1024)
      add(:template, :string)
      add(:redirect_url, :string)

      timestamps()
    end

    create(index(:thesis_pages, [:slug]))

    create table(:thesis_page_contents) do
      add(:page_id, references(:thesis_pages, on_delete: :delete_all))
      add(:name, :string, nil: false)
      add(:content, :text, default: "", nil: false)
      add(:content_type, :string, default: "html")
      add(:meta, :text)

      timestamps
    end

    create table(:thesis_files) do
      add(:slug, :string)
      add(:content_type, :string)
      add(:filename, :string)
      add(:data, :binary)

      timestamps()
    end

    create(unique_index(:thesis_files, [:slug]))

    create table(:thesis_backups) do
      add(:page_id, references(:thesis_pages, on_delete: :delete_all))
      add(:page_revision, :integer)
      add(:page_data, :text)

      timestamps()
    end
  end
end
