class Configuration < ApplicationRecord
  Configuration.all.each do |config|
    define_singleton_method "#{config.name}" do
			Configuration.find_by_name(config.name).value
		end
		
		define_singleton_method "#{config.name}=" do |new_value|
			Configuration.find_by_name(config.name).update(value: new_value)
		end
	end
end
