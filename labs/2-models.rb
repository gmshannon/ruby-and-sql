# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_sp1 = Salesperson.new
new_sp1["first_name"] = "Ben"
new_sp1["last_name"] = "Block"
new_sp1["email"] = "bblock@aol.com"
new_sp1.save

new_sp2 = Salesperson.new
new_sp2["first_name"] = "Brian"
new_sp2["last_name"] = "Eng"
new_sp2["email"] = "beng@gmail.com"
new_sp2.save

# 3. write code to display how many salespeople rows are in the database

puts "Salespeople: #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

block = Salesperson.find_by({"first_name" => "Ben", "last_name" => "Block"})
block["email"] = "bjblock@gmail.com"
block.save

# CHALLENGE:
# 5. write code to display each salesperson's full name
# ---------------------------------
# Salespeople: 2
salespeople = Salesperson.all

for person in salespeople
    first_name = person["first_name"]
    last_name = person["last_name"]
    name = "#{first_name} #{last_name}"
    puts name
end
# Ben Block
# Brian Eng
