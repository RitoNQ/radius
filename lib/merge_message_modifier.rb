
# Modifies the default commit message before it is set.
#
# Fancies up "Merge," replaces local branch name, and removes 'remote-tracking branch.'
class MergeMessageModifier

  attr_reader :commit_message_file, :repo

  def initialize(filename, repo)