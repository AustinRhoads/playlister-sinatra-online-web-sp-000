require './app/models/concerns/slugifiable.rb'

class Artist < ActiveRecord::Base
   extend Slugifiable::ClassMethods
   include Slugifiable::InstanceMethods
    has_many :songs
    has_many :genres, through: :songs
    def slug
        super
    end
end