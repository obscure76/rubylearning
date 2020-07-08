class Account
  attr_accessor :name, :email, :notes, :address

  def assign_values(values)
    values.each do |k, v|
      # How send method would look a like
      # self.name = value[k]
      send("#{k}=", v)
    end
  end

  def print
    puts("name: #{@name}")
    puts("email: #{@email}")
    puts("notes: #{@notes}")
    puts("address: #{@address}")
  end
end

user_info = {
    name: 'Matt',
    email: 'test@gms.com',
    address: '132 random st.',
    notes: "annoying customer"
}

account = Account.new
# account.name = user_info[:name]
# account.address = user_info[:address]
# account.email = user_info[:email]
# account.notes = user_info[:notes]
account.assign_values(user_info)
account.print

