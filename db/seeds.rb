puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(name: "Hat", dev_id: 9, company_id: 11, value: 10)
Freebie.create(name: "Fidget Spinner", dev_id: 9, company_id: 10, value: 3)
Freebie.create(name: "Shirt", dev_id: 9, company_id: 9, value: 12)
Freebie.create(name: "Mousepad", dev_id: 11, company_id: 12, value: 7)
Freebie.create(name: "Coozie", dev_id: 12, company_id: 12, value: 2)
Freebie.create(name: "Pen", dev_id: 10, company_id: 11, value: 1)
Freebie.create(name: "Backpack", dev_id: 9, company_id: 11, value: 25)

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
