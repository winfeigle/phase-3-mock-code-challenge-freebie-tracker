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

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
puts "Creating freebies..."
5.times {
    Freebie.create(item_name: "Hoodie", value: 59, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
}

5.times {
    Freebie.create(item_name: "T-Shirt", value: 19, dev_id: Dev.all.sample.id, company_id: Company.all.sample.id)
}

Freebie.create(item_name: "$10k Cash Prize", value: 10000, dev_id: Dev.all.sample.id, company_id: Company.find_by(name: "Enron").id)

Freebie.create(item_name: "Dundie Award", value: 10, dev_id: Dev.find_by(name: "Gazorpazop").id, company_id: Company.find_by(name: "Dunder Mifflin").id)

Freebie.create(item_name: "Facebook Verified Badge", value: 1000, dev_id: Dev.find_by(name: "Rick").id, company_id: Company.find_by(name: "Facebook").id)

puts "Seeding done!"
