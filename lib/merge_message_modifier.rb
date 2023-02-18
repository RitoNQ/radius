
# Modifies the default commit message before it is set.
#
# Fancies up "Merge," replaces local branch name, and removes 'remote-tracking branch.'
class MergeMessageModifier

  attr_reader :commit_message_file, :repo

  def initialize(filename, repo)
    @commit_message_file = filename
    @repo                = repo
  end

  def self.perform(filename, repo)
    modifier = new filename, repo
    modifier.modify!
  end

  def modify!