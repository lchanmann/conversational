require 'rails/generators'
require 'rails/generators/migration'
module Conversation
  class SkeletonGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    def self.source_root
       @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    def copy_initializer_file
      copy_file "initializer.rb", "config/initializers/conversation.rb"
    end
    
    def create_conversations_directory
      empty_directory "app/conversations"
    end

    def self.next_migration_number(dirname)
      if ActiveRecord::Base.timestamped_migrations
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      else
        "%.3d" % (current_migration_number(dirname) + 1)
       end
    end

    def create_migration_file
      migration_template 'migration.rb', 'db/migrate/create_conversations.rb'
    end
  end
end
