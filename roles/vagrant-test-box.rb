# Name of the role should match the name of the file
name "vagrant-test-box"

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
        "server_root_password" => 'root',
        "server_repl_password" => 'root',
        "server_debian_password" => 'root'
    }
)