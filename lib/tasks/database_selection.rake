namespace :db do
  namespace :select do
    desc "Select SQLite as the development database"
    task :sqlite do
      config_dir = File.join(Rails.root, 'config')
      sqlite_yml_path = File.join(config_dir, 'database.sqlite.yml')
      database_yml_path = File.join(config_dir, 'database.yml')
      puts "Copying #{sqlite_yml_path} to #{database_yml_path}"
      FileUtils.cp sqlite_yml_path, database_yml_path
    end

    desc "Select Postgres as the development database"
    task :postgres do
      config_dir = File.join(Rails.root, 'config')
      postgres_yml_path = File.join(config_dir, 'database.postgres.yml')
      database_yml_path = File.join(config_dir, 'database.yml')
      puts "Copying #{postgres_yml_path} to #{database_yml_path}"
      FileUtils.cp postgres_yml_path, database_yml_path
    end
  end
end