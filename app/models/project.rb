class Project < ApplicationRecord
    has_many :tasks

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
end
