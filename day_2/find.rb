
[1,2,3,4, "Mickael"].find_all{|i| i.respond_to? :upcase}.find{|j| j.upcase == "mickael".upcase}

[1,2,3, "Mickael"].any? {|i| i.is_a? String}
[1,2,3, "Mickael"].all? {|i| i.is_a? String}
