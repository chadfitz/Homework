json.array! @guests do |guest|
    # json.extract! guest, :name, :age, :favorite_color
    if guest.age.between?(40,50)
      json.partial! 'api/guests/guest', guest: guest
    end
end