require_relative 'data_instance'

class Customer < DataInstance
  attr_reader :repository, :first_name, :last_name, :created_at, :updated_at
end
