# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{conversation}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Wilkie"]
  s.date = %q{2010-05-13}
  s.description = %q{Have stateful conversations with your users over SMS, email or whichever service you like}
  s.email = %q{dwilkie@gmail.com}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "app/models/conversation.rb",
     "conversation.gemspec",
     "features/configure_blank_or_unknown_topic.feature",
     "features/configure_finishing_keywords.feature",
     "features/find_existing_conversation.feature",
     "features/find_or_create_with.feature",
     "features/retrieve_conversation_details.feature",
     "features/step_definitions/conversation_steps.rb",
     "features/step_definitions/pickle_steps.rb",
     "features/support/email_spec.rb",
     "features/support/env.rb",
     "features/support/mail.rb",
     "features/support/paths.rb",
     "features/support/pickle.rb",
     "features/support/sample_conversation.rb",
     "lib/conversation.rb",
     "lib/conversation/engine.rb",
     "lib/generators/conversation/skeleton/USAGE",
     "lib/generators/conversation/skeleton/skeleton_generator.rb",
     "lib/generators/conversation/skeleton/templates/initializer.rb",
     "lib/generators/conversation/skeleton/templates/migration.rb",
     "spec/models/conversation_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/dwilkie/conversation}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Have stateful conversations with your users}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/models/conversation_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<state_machine>, [">= 0.9.1"])
    else
      s.add_dependency(%q<state_machine>, [">= 0.9.1"])
    end
  else
    s.add_dependency(%q<state_machine>, [">= 0.9.1"])
  end
end

