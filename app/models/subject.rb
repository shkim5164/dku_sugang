class Subject < ActiveRecord::Base
    has_many :successes
    has_many :users, :through => :successes
end
