class Employee

  attr_reader :name

  def name=(name)
    # Code to validate and set @name
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def initialize(name = "Anonymous")
    self.name = name
  end

  def print_name
    puts "name: #{name}"
  end

end


class SalariedEmployee < Employee

  attr_reader :Salary 

  def salary = (salary)
    # Code to validate and set @salary
    if salary < 0 
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end 


  def initialize(name = "Anonymous", salary = 0.0)
    super(name)
    #self.name = name
    self.salary = salary
  end


  def print_pay_stub
    print_name
    pay_for_period = (salary / 365) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end


end


salaried_employee = SalarieEmployee.new("karen", 50000)
# salaried_employee.name = "Karen"
# salaried_employee.salary = 50000
salaried_employee.print_pay_stub


class HourlyEmployee < Employee

  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wage, :hourly_per_week

  

  def hourly_wage=(hourly_wage)
    # Code to validate and set @hourly_wage
    if hourly_wage < 0
      raise "An hourly wage of #{hourly_wage} isn't valid!"
    end
    @hourly_wage = hourly_wage
  end

  def hourly_per_week=(hours_per_week)
    # Code to validate and set @hours_per_week
    if hourly_per_week < 0
      raise "#{hourly_per_week} hours per week isn't valid!"
    end
    @hourly_per_week = hourly_per_week
  end

  def initialize(name="Anonymous", hourly_wage= 0.0, hourly_per_week= 0.0)
    super(name)
    #self.name = name
    self.hourly_wage = hourly_wage
    self.hourly_per_week = hourly_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay} "
  end
end

jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_pay_stub
ivan.print_pay_stub



hourly_employee = HourlyEmployee.new("karen", 14.97, 30)
# hourly_employee.name = "Karen"
# hourly_employee.hourly_wage = 14.97
# hourly_employee.hourly_per_week = 30
hourly_employee.print_pay_stub










