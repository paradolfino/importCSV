class Participant < ApplicationRecord
    require 'csv'
    validates :name, presence: true
    validates :points, presence: true
    validates_numericality_of :points, only_integer: true
    
    def self.import(file)
        CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
            Participant.create!(row.to_hash)
        end
    end
end
