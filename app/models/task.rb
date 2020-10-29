class Task < ApplicationRecord
    belongs_to :project

    stringify :dt_inicio, format: "%d/%m/%Y"
    stringify :dt_final, format: "%d/%m/%Y"

    validates :title, presence: true
    validates :dt_inicio, presence: true
    validates :dt_final, presence: true
    
end
