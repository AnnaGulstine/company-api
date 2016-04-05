json.id company.id
json.companyName company.name
json.slogan company.catchphrase
json.nameSlogan company.name_slogan
json.einNumber company.ein
json.logo company.logo
json.addresses company.addresses do |address|
  json.address1 address.address_1
  json.address2 address.address_2
end