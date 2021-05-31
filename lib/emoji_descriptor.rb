# If there is no description set for the current branch, choose
# a random GitHub emoji code to use as the description.
#
# This can always be overwritten with `git branch --edit-description branch-name`
class EmojiDescriptor

  attr_reader :repo

  def initialize(repo)
    @r