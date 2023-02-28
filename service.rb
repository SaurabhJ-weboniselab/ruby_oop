class Services < Company
    attr_accessor :service_id, :no_of_employee, :service_duration
    @revenue = 0
    @customer_support = 0 
    @service_fees=100000
    def initialize(no_of_employee, service_duration, company_name)
      @no_of_employee=no_of_employee
      @service_duration=service_duration
      @service_fees=100000
      super(company_name, "Service")
    end
    public
    def show_details
      revenue_generate
      puts "Service Revenue = #{@revenue}"
    end
    private
    def revenue_generate
      @customer_support = (@no_of_employee + @service_duration * 1000)*0.3
      @revenue = @no_of_employee * @service_duration*1000+@service_fees+@customer_support
    end
  end
  