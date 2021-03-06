module ApplicationHelper
    def check_access(user,location,status)
        if (user.admin? || user.supervisor?) && [1,2,4,5].include?(status)
            true
        elsif (user.location == location) && [3,6].include?(status)
            true
        else 
            false
        end        
    end

    def user_can_edit_requisition(user,location,status)
        unless check_access(user,location,status)            
            'disabled'
        end
    end

    def sortable(column, title = nil)        
        title ||= column.titleize
        css_class = column == sort_column ? "current #{sort_direction}" : nil
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        link_to title,request.query_parameters.merge({ sort: column, direction: direction }), {class: css_class}
    end

    def show_all_items(filter, title = nil)   
        title ||= filter.titleize
        link_to title,request.query_parameters.merge({ filter: filter })
    end

    def same_location(user,location)
        if user.location == location
            true
        else
            false
        end
    end

    def report_type
        Report.distinct_type
    end

    

end
