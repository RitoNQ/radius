
# Prepends the branch description to each commit message, after the commit message has been set.
#
# Add Branch description with git branch --edit-description branch-name
class DescriptionPrepender

  attr_reader :commit_message_file, :repo

  def initialize(filename, repo)
    @commit_message_file = filename
    @repo                = repo
  end

  def self.perform(filename, repo)
    prepender = new filename, repo
    prepender.prepend!
  end

  # Public: If a branch description exists, constructs a new commit message from the description
  #         and the set message, and writes the message to the `commit_message_file`.
  def prepend!
    return if description.empty?