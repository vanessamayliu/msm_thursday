class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dob, :date
  attribute :bio, :string

  # Direct associations

  has_many   :roles

  # Indirect associations

  many_to_many :filmography,
               resource: MovieResource

end
