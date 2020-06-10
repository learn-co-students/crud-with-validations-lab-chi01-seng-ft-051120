class Song < ApplicationRecord
    validates :title, presence: true 
    validates :title, uniqueness: { scope: :release_year}
    validates :released, inclusion: {in: [true, false]}
    validates :artist_name, presence: true
    include ActiveModel::Validations
    validates_with ReleaseYearValidator
end
