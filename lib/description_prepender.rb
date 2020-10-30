
# Prepends the branch description to each commit message, after the commit message has been set.
#
# Add Branch description with git branch --edit-description branch-name
class DescriptionPrepender

  attr_reader :commit_message_file, :repo