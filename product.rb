class Product < Company
    attr_accessor :prod_id, :prod_name, :prod_price, :prod_sold
    @revenue = 0
  
    def initialize(prod_id, prod_name, prod_price, prod_sold, company_name)
      @prod_id=prod_id
      @prod_name=prod_name
      @prod_price=prod_price
      @prod_sold = prod_sold
      @company_name = company_name
      super(company_name, "Product")
    end
  
    public
    def show_details
      puts "Product Name #{prod_name}"
      puts "Product Company #{company_name}"
      puts "Product Price #{prod_price}"
      puts "Product Sold #{prod_sold}"
      revenue_generate
      puts "Revenue Generated #{@revenue}"
    end
  
    private
    def revenue_generate
      @revenue = prod_price * prod_sold
    end
  end
  