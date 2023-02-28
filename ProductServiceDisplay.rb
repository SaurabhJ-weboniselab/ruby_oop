$LOAD_PATH << "."
require 'file_link'
require 'csv'
require 'company'
require 'product'
require 'service'

product = Product.new(1, "web", 100000,100,"something")
product.show_details
product.show_employee_details

service = Services.new(10, 1,"webonise")
service.show_details
