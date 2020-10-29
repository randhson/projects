class Project < ApplicationRecord
    has_many :tasks
    
    stringify :dt_inicio, format: "%d/%m/%Y"
    stringify :dt_final, format: "%d/%m/%Y"

    validates :title, presence: true
    validates :dt_inicio, presence: true
    validates :dt_final, presence: true

    def complet
        qtde_tasks = self.tasks
        qtde_tasks_done = self.tasks.where(finish: true)
        
        if qtde_tasks.count > 0
            total = (qtde_tasks_done.count.to_f / qtde_tasks.count) * 100
            
        end
        if total.present?
            return total.to_i
        else
            return 0
        end
    end

    def status
        today = Date.today
        dt_final = self.dt_final
        comp = complet
        if dt_final < today
            if comp < 100
                return 'Sim'
            else
                return 'Não'
            end
        else
            return 'Não'
        end
    end
    
end
