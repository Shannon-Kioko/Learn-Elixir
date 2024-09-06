# Todomvc
To install phoenix:
 * `mix archive.install hex phx_new`
To generate the Phoenix Project without Brunch (to build assets)
 * `mix phx.new todomvc --no-assets`
### Development Process
 * `mix phoenix.gen.html TaskManagement Task tasks description:string status:string` to generate a model, controller, view and templates for the task model
 * **Schema** defines the way your application interacts with the database.
 * A **migration** is responsible for creating or modifying the structure of your database. You run migrations once with `mix ecto.migrate` after which the database schema is altered.
 * Add valid and invalid attributes to the tests of the model and controller.
 * `lib/todomvc` hosts all business logic and business domain. Typically interacts with the db it is the **Model** in MVC.
 * `lib/todomvc_web` **View** and **Controller** in MVC exposes business domain to the world.
 * `priv` keeps all necessary resources.

### To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
# Learn-Elixir
