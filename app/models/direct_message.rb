class DirectMessage < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :notifications

  validates :message, presence: true

  after_create_commit { DirectMessageBroadcastJob.perform_later self }
end