class Company
    attr_accessor :company_id, :company_name, :division_name
    include File_link 
    def initialize(company_name, division_name)
      @company_name= company_name
      @division_name=division_name
      puts @company_name
      puts @division_name
    end
    public
    def show_employee_details
      read_csv
    end
  
    private
    def read_csv
      employee_details_array = []
      file = CSV.parse(File.open(File_link.get_file_name,'r'))
      file.each do |row|
        puts "#{row[0]} #{row[1]} #{row[2]}"
      end
    end
  end
  