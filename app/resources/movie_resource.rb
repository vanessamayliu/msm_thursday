class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :director_id, :integer
  attribute :year, :integer
  attribute :description, :string

  # Direct associations

  belongs_to :director

  has_many   :roles

  # Indirect associations

  many_to_many :cast,
               resource: ActorResource
end
