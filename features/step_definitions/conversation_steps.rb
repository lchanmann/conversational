Given /^(an|\d+) hours? (?:has|have) elapsed since #{capture_model} started$/ do |time, conversation|
  conversation = model!(conversation)
  time = parse_email_count(time)
  conversation.created_at = time.hours.ago
  conversation.save!
end

Given /^#{capture_model} is (.+)$/ do |conversation, state|
  conversation = model!(conversation)
  conversation.state = state
  conversation.save!
end

Given /^no conversations exist with: "([^\"]*)"/ do |with|
  find_models("conversation", "with: \"#{with}\"").each do |instance|
    instance.destroy
  end
end

Given /^I configure Conversation with following finishing keywords: "([^\"]*)"/ do |finishing_strings|
  Conversation.finishing_keywords = finishing_strings.split(", ")
end

When /^I call find_or_create_with\("([^\"]*)", "([^\"]*)"\)$/ do |with, topic|
  Conversation.find_or_create_with(with, topic)
end

When /^I move #{capture_model} along(?: with: "([^\"]*)")?$/ do |name, message|
  model!(name).move_along!(message)
end

Then /^the conversation details should be a (\w+)$/ do |template_name|
  model!("conversation").details.class.should == template_name.constantize
end

Then /^I should (not )?be able to find a conversation with: "([^\"]*)"$/ do |negative, with|
  # Rails 3 => Conversation.with(with).last
  conversation = Conversation.converser(with).in_progress.recent.last
  unless negative
    conversation.should == model!("conversation")
  else
   conversation.should be_nil
  end
end

