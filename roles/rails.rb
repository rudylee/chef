# Name of the role should match the name of the file
name "rails"

# Run list function we mentioned earlier
run_list(
  "recipe[apt]",
  "recipe[git]",
  "recipe[tmux]",
  "recipe[vim]",
  "recipe[sqlite]",
  "recipe[openssl]",
  "recipe[mysql::client]",
  "recipe[mysql::ruby]",
  "recipe[mysql::server]",
  "recipe[postgresql::ruby]",
  "recipe[postgresql::server]",
  "recipe[ruby_build]",
  "recipe[rbenv::system]",
  "recipe[rbenv::vagrant]",
  "recipe[database]"
)

override_attributes(
  "mysql" => {
    "server_root_password" => '',
    "server_repl_password" => '',
    "server_debian_password" => ''
  },
  "postgresql" => {
    "password" => {
      'postgres' => ''
    }
  }
)