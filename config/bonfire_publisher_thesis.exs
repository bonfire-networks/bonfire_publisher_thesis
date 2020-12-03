use Mix.Config

config :bonfire_publisher_thesis, :web_module, Bonfire.Web
config :bonfire_publisher_thesis, :repo_module, Bonfire.Repo
config :bonfire_publisher_thesis, :templates_path, "lib"


# Thesis Main Config
config :thesis,
  store: Thesis.EctoStore,
  authorization: BonfirePublisherThesis.ThesisAuth,
  uploader: Thesis.RepoUploader

# Thesis Store Config
config :thesis, Thesis.EctoStore, repo: BonfirePublisherThesis.Repo

# Thesis Notifications Config
# config :thesis, :notifications,
#   add_page: [],
#   page_settings: [],
#   import_export_restore: []

# Thesis Dynamic Pages Config
# config :thesis, :dynamic_pages,
#   view: BonfirePublisherThesisWeb.PageView,
#   templates: ["index.html", "otherview.html"],
#   not_found_view: BonfirePublisherThesisWeb.ErrorView,
#   not_found_template: "404.html"
