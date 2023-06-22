# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
SuperPower.destroy_all
User.destroy_all

User.create(
  name: "Alexandra Delory",
  email: "alexandra@example.com",
  password: "password"
)

# 10.times do
#   super_power1 = SuperPower.new(
#     name: Faker::Movie.title,
#     description: Faker::Movie.title,
#     price: rand(200..500),
#     user: User.last
#   )
  # file1 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687352664/development/cnwz4gebvoo1moni6cn79maqgytq.jpg")
  # super_power1.poster_url.attach(io: file1, filename: "super", content_type: "image/png")
  # super_power1.save
# end

# SuperPower.create!([
# { name: "Fire control", description: "You'll be able to control fire, burn the city and all your enemies", price: 200, user: User.last, file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# { name: "Walk on water", description: "You'll be like your idol Jesus", price: 300, user: User.last },
# { name: "Breathe in the water", description: "Because drowning is not fun", price: 400, user: User.last },
# { name: "Invisibility robe", description: "To have the opportunity to slap your haters without them knowing", price: 350, user: User.last }

# ])

file1 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687429926/7263e07d-0b65-46c2-b50d-9d6f7f1faca7-1024x682_720_ydcuqv.jpg")
super_power1 = SuperPower.new(name: "Invisibility Robe", description: "Invisibility Robe is a superpower that grants the user the ability to become invisible at will. The robe is made from a special material that harnesses the power of light refraction, allowing the user to bend light around their body and disappear from view. With the robe on, the user can move around undetected, sneak past security systems, and infiltrate enemy territory without being seen. The user can also use the robe to observe others without being noticed, making it a powerful tool for espionage and intelligence gathering. However, the robe does not provide protection against other senses such as hearing, smell, or touch, and the user must still take care not to make noise or leave any traces behind. The Invisibility Robe is a highly coveted superpower among spies, thieves, and anyone who wants to stay hidden and undetected. With this power, the user can go anywhere and do anything without fear of being detected.", price: 350, user: User.last )
super_power1.poster_url.attach(io: file1, filename: "Invisibility robe", content_type: "image/jpg")
super_power1.save!

file2 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687429933/18839119-un-homme-marche-dans-l-eau-avec-les-vagues-se-se__pare__rent_720_ncspsy.jpg")
super_power2 = SuperPower.new(name: "Walk on water", description: "You'll be like your idol Jesus. Walk on water is a superpower that allows the user to defy the laws of physics and walk on the surface of water. With this power, the user gains the ability to move across oceans, lakes, and rivers as if they were solid ground, making it an incredibly useful ability for travel, exploration, and rescue operations. The user can also use this power to cross bodies of water that would otherwise be impossible to navigate, such as deep and turbulent rivers or the open sea. Moreover, the user can move quickly and efficiently without the need for boats, bridges, or other means of transportation. However, the user must be careful when using this power, as it requires a great deal of concentration and control to maintain balance and avoid falling into the water. Additionally, the user must be mindful of the potential consequences of their actions, as the ability to walk on water could be seen as a threat or miracle by others and could attract unwanted attention. Walk on Water is a highly sought-after superpower, particularly among adventurers, explorers, and those who seek to test the limits of human ability.", price: 450, user: User.last )
super_power2.poster_url.attach(io: file2, filename: "Walk on water", content_type: "image/jpg")
super_power2.save!

file3 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687429954/1f322443-phpvjgprz_720_izo5s7.jpg")
super_power3 = SuperPower.new(name: "Breathe in the water", description: "Breathe in the water is a superpower that allows the user to breathe underwater without any external assistance. With this power, the user can stay submerged for extended periods, and explore the depths of oceans, lakes, and rivers without the need for any breathing apparatus. The user can also use this power to perform underwater tasks, such as repairing ships or structures, surveying marine life, and recovering lost objects. Moreover, the user gains a significant advantage in underwater combat situations, as they can breathe and move freely while their opponents struggle to survive. However, the user must be cautious when using this power, as they are still susceptible to the dangers of underwater environments, such as pressure changes, temperature fluctuations, and the risk of encountering dangerous marine life. Additionally, the user must be mindful of the need to resurface for air periodically, as the power only allows them to breathe underwater and not indefinitely. Breathe in the Water is a highly desirable superpower, particularly among scientists, divers, and adventurers who seek to explore the uncharted depths of the ocean.", price: 500, user: User.last )
super_power3.poster_url.attach(io: file3, filename: "Breathe in the water", content_type: "image/jpg")
super_power3.save!

file4 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687429963/lg_ae454_720_lkhunq.jpg")
super_power4 = SuperPower.new(name: "Nature Control", description: "Nature control is a superpower that grants the user the ability to manipulate the natural elements of the environment. With this power, the user can control the forces of nature, such as wind, water, earth, and fire, and use them to their advantage. The user can create storms, summon earthquakes, start wildfires, and manipulate the growth of plants and trees. This power also allows the user to communicate with animals and command them to do their bidding, making it a valuable tool for hunting, tracking, and defense. Additionally, the user can use their powers to heal the environment, restore ecosystems, and protect habitats from harm. However, the user must be careful when using this power, as it can have unintended consequences and lead to ecological imbalances. Moreover, the user's powers may be limited by their own abilities and the natural limitations of the environment they are in. Nature Control is a highly coveted superpower, particularly among environmentalists, conservationists, and those who seek to protect and preserve the natural world. With this power, the user can shape the world around them to their will and become a force for good in the fight against climate change and environmental degradation", price: 350, user: User.last )
super_power4.poster_url.attach(io: file4, filename: "Nature Control", content_type: "image/jpg")
super_power4.save!

file5 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687440889/n6fq3xn_480_k3qmbq.jpg")
super_power5 = SuperPower.new(name: "Flying Man", description: "Flying Man is a superpower that grants the user the ability to fly through the air at will. With this power, the user gains the freedom of movement in three dimensions, allowing them to soar through the skies, navigate around obstacles, and travel long distances quickly. The user can also use their power to perform aerial acrobatics, evade pursuit, and survey the surrounding terrain from a bird's eye view. Additionally, the user can use their power to transport themselves and others through the air, making it a valuable tool for rescue operations, transportation, and combat situations. However, the user must be careful when using this power, as they are vulnerable to environmental hazards such as wind, turbulence, and low temperatures. Moreover, the user's powers may be limited by their own physical and mental abilities, as well as their need for rest and sustenance. Flying Man is a highly desirable superpower, particularly among adventurers, explorers, and those who seek to experience the world from a unique perspective. With this power, the user can transcend the limitations of the ground and become a symbol of freedom and hope for others.", price: 256, user: User.last )
super_power5.poster_url.attach(io: file5, filename: "Flying Man", content_type: "image/jpg")
super_power5.save!

file6 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687429941/maxresdefault_720_z7fyjx.jpg")
super_power6 = SuperPower.new(name: "Extreme Strength", description: "Extreme Strength is a superpower that grants the user immense physical strength beyond human limits. With this power, the user can lift and move objects that would normally require machinery or multiple people to handle. They can also punch through walls, bend metal, and jump incredible distances. This power also provides the user with enhanced durability and resistance to injury, making them nearly invulnerable to physical harm. Additionally, the user can use their strength to perform incredible feats of athleticism and combat, overpowering opponents and dominating in any physical competition. However, the user must exercise caution when using this power, as their actions may have unintended consequences and lead to destruction or harm to others. Moreover, the user's powers may be limited by their own physical and mental abilities and the laws of physics. Extreme Strength is a highly sought-after superpower, particularly among athletes, soldiers, and those who seek to protect others and uphold justice. With this power, the user can become a force for good and inspire others to push beyond their own physical limitations.", price: 375, user: User.last )
super_power6.poster_url.attach(io: file6, filename: "Extreme Strength", content_type: "image/jpg")
super_power6.save!

file7 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687429969/super-pouvoirs1_360_nlxmwv.jpg")
super_power7 = SuperPower.new(name: "Super Intelligence", description: "Super Intelligence gives the ability to process and analyze vast amounts of information at a rapid pace, making them a valuable asset in scientific research, strategy planning, or problem-solving. They may also have a photographic memory, or the ability to learn and recall information with ease, making them highly knowledgeable in a wide range of subjects. Additionally, they may have heightened cognitive abilities, such as enhanced perception, creativity, and reasoning, that allow them to excel in creative or intellectual pursuits. However, it's important to note that intelligence is not a superpower in and of itself, but rather a characteristic or trait that can be developed through education, training, and experience. While superpowers can enhance or amplify one's natural abilities, they do not necessarily determine a person's intelligence or potential.", price: 300, user: User.last )
super_power7.poster_url.attach(io: file7, filename: "Super Intelligence", content_type: "image/jpg")
super_power7.save!

file8 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687429947/cover-r4x3w1200-5a9d52ef1311d-wimhoffroid_720_gtb7md.jpg")
super_power8 = SuperPower.new(name: "Cold Immunity", description: "Cold Resistance is a superpower that grants the user the ability to withstand extreme cold temperatures without experiencing discomfort or harm. With this power, the user's body is able to regulate its temperature and maintain warmth in even the coldest of environments. The user can function normally in snow and ice-covered environments, such as the Arctic or high-altitude mountain ranges, without needing any special equipment or clothing. Additionally, the user may have the ability to resist the effects of cold-based attacks, such as those from ice-based weapons or cryokinetic powers. However, the user may still be vulnerable to other environmental hazards, such as wind, precipitation, or low oxygen levels. Cold Resistance is a highly specialized superpower, particularly useful for those who work or live in extreme cold environments, such as mountaineers, polar explorers, or arctic researchers.", price: 200, user: User.last )
super_power8.poster_url.attach(io: file8, filename: "Cold Immunity", content_type: "image/jpg")
super_power8.save!

file9 = URI.open("https://res.cloudinary.com/dwl5s1v4k/image/upload/v1687429976/pyrokinesis-superpower-3_720_bs2gl3.png")
super_power9 = SuperPower.new(name: "Fire Control", description: "Fire Control is a superpower that grants the user the ability to manipulate and control fire at will. With this power, the user can create, extinguish, and shape flames to their liking, making it a valuable tool for both offense and defense. The user can generate flames of varying intensity, from small sparks to raging infernos, and can use them to burn, melt, or incinerate objects or enemies. Additionally, the user can control the direction and behavior of flames, making it possible to create walls of fire, fire tornadoes, or other complex fire-based structures. The user may also have a heightened resistance to heat and fire-based attacks, reducing the risk of harm from their own powers or those of others. However, the user must be careful when using this power, as fire can be unpredictable and dangerous, and can easily get out of control. Additionally, the user's powers may be limited by their own physical and mental abilities, as well as by the availability of fuel sources for their flames. Fire Control is a highly sought-after superpower, particularly among those who seek to protect and defend others.", price: 250, user: User.last )
super_power9.poster_url.attach(io: file9, filename: "Fire Control", content_type: "image/jpg/png")
super_power9.save!


puts "c'est cool "
