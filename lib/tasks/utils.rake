namespace :utils do
  desc "Run to popupate the Data Base with fake Contacts, Phones and Adressess"
  task seed: :environment do
    
    #To gerate contacts
    10.times do |i|
      Contact.create(
          name: Faker::Name.name, 
          email: Faker::Internet.email, 
          kind: Kind.all.sample ,
          rmk: LeroleroGenerator.sentence([1,2,3].sample))
    end
    
    #To gerate Phones
    Contact.all.each do |contact|
      Random.rand(1..5).times do |i|
        Phone.create!(
          phone: Faker::PhoneNumber.phone_number, 
          contact: contact)
      end
    end
    
    #To gerate Addresses
    Contact.all.each do |contact|
      Address.create!(
          street: Faker::Address.street_address, 
          city: Faker::Address.city, 
          state: Faker::Address.state_abbr ,
          contact: contact)
    end
  end
end
