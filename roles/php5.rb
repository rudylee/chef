# Name of the role should match the name of the file
name "php5"

# Run list function we mentioned earlier
run_list(
  "recipe[apt]",
  "recipe[openssl]",
  "recipe[apache2]",
  "recipe[apache2::mod_php5]",
  "recipe[mysql]",
  "recipe[mysql::server]",
  "recipe[php]",
  "recipe[php::module_mysql]",
  "recipe[apache2::vhosts]",
  "recipe[database::mysql]"
)

override_attributes(
  "mysql" => {
    "server_root_password" => '',
    "server_repl_password" => '',
    "server_debian_password" => ''
  }
)