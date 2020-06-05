Gem::Specification.new do |s|
    s.name = "welcome_to_hogwarts_cli"
    s.version = "0.0.1"
    s.date = "2020-06-07"
    s.summary = "Sorts the user into their new house at Hogwarts and provides information on the school's four houses"
    s.authors = "Christine Zosche"
    s.homepage = "https://rubygems.org/gems/welcome_to_hogwarts_cli"
    s.files = [
      "lib/hogwarts_cli/api.rb",
      "lib/hogwarts_cli/cli.rb",
      "lib/hogwarts_cli/hogwarts_houses.rb",
      "lib/hogwarts_cli_environment.rb"
      ]
    s.require_paths = ["lib", "bin"]
    s.license = "MIT"
  end