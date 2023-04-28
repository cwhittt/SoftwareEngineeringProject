module ApplicationHelper
    $total = 0
    def get_Total(amount)
        puts($total += amount)
    end
    def reset_Total()
        puts($total = 0)
    end
    def print_Total()
        $total
    end
    def print_unit(waters)
        waters[0].unit
    end
end
