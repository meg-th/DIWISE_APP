# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: 'Activities for Kids', description: 'Any acitivities and craft projects to be enjoyed by adults and children alike.', font_awesome_icon: 'fas fa-child')
Category.create(name: 'Arts and Crafts', description: 'Get creative! We want to see all of your hacks for making art!', font_awesome_icon: 'fas fa-palette')
Category.create(name: 'Automobiles and Bikes', description: 'Tips for customising, fixing, and creating anything with wheels!', font_awesome_icon: 'fas fa-cogs')
Category.create(name: 'Electronics', description: 'Computers, phones, gadgets - our ambitious community have hacks for them all.', font_awesome_icon: 'fas fa-tv')
Category.create(name: 'Fashion and Textiles', description: 'Whether it is darning socks, making ballgowns or curtains, we have done it all.', font_awesome_icon: 'fas fa-tshirt')
Category.create(name: 'Games', description: 'Board games, video games - we want to see how you made yours!', font_awesome_icon: 'fas fa-puzzle-piece')
Category.create(name: 'Horticulture and Gardening', description: 'Everything from veggie patches to formal gardens.', font_awesome_icon: 'fas fa-seedling')
Category.create(name: 'Interior Decorating', description: 'Painting your lounge the perfect shade of shocking pink? We know how to do that.', font_awesome_icon: 'fas fa-home')
Category.create(name: 'Plumbing', description: 'How to fix yer pipes. Or make statement water-feature.', font_awesome_icon: 'fas fa-faucet')
Category.create(name: 'Recyling and Re-using', description: 'We love our Eco-Warriors.', font_awesome_icon: 'fas fa-recycle')
Category.create(name: 'Self-Care', description: 'Homemade soaps, face masks - anything to indulge the senses.', font_awesome_icon: 'fas fa-heart')
Category.create(name: 'Woodworking and Carpentry', description: 'So you want to make a work-bench - join the club!', font_awesome_icon: 'fas fa-pencil-ruler')

Tool.create(name: 'Baking Soda', category_id: 1)
Tool.create(name: 'Ball', category_id: 1)
Tool.create(name: 'Card', category_id: 1)
Tool.create(name: 'Clay', category_id: 1)
Tool.create(name: 'Corn Flour', category_id: 1)
Tool.create(name: 'Crayons', category_id: 1)
Tool.create(name: 'Dish Soap', category_id: 1)
Tool.create(name: 'Eraser', category_id: 1)
Tool.create(name: 'Felt Tip Pens', category_id: 1)
Tool.create(name: 'Food Coloring', category_id: 1)
Tool.create(name: 'Glitter', category_id: 1)
Tool.create(name: 'Glue', category_id: 1)
Tool.create(name: 'Paint', category_id: 1)
Tool.create(name: 'Paint Brush', category_id: 1)
Tool.create(name: 'Paper', category_id: 1)
Tool.create(name: 'Pencils', category_id: 1)
Tool.create(name: 'Playdough', category_id: 1)
Tool.create(name: 'Rubber Bands', category_id: 1)
Tool.create(name: 'Ruler', category_id: 1)
Tool.create(name: 'Scissors', category_id: 1)
Tool.create(name: 'Sticky Tape', category_id: 1)
Tool.create(name: 'String', category_id: 1)
Tool.create(name: 'Water', category_id: 1)

Tool.create(name: 'Acrylic Paint', category_id: 2)
Tool.create(name: 'Water-color Paint', category_id: 2)
Tool.create(name: 'Paper', category_id: 2)
Tool.create(name: 'Oil Paint', category_id: 2)

Tool.create(name: 'Cable Cutter', category_id: 3)
Tool.create(name: 'Cable Puller', category_id: 3)
Tool.create(name: 'Chain Wear Gauge', category_id: 3)
Tool.create(name: 'Floor Pump', category_id: 3)
Tool.create(name: 'Lubricants', category_id: 3)
Tool.create(name: 'Multi-Metre', category_id: 3)
Tool.create(name: 'Pliers', category_id: 3)
Tool.create(name: 'Screwdrivers', category_id: 3)
Tool.create(name: 'Sockets', category_id: 3)
Tool.create(name: 'Spanner', category_id: 3)
Tool.create(name: 'Torque Wrench', category_id: 3)
Tool.create(name: 'Tyre Levers', category_id: 3)
Tool.create(name: 'Wrench', category_id: 3)
Tool.create(name: 'Zip Tyes', category_id: 3)

Tool.create(name: '3D Printer', category_id: 4)
Tool.create(name: 'Clamp', category_id: 4)
Tool.create(name: 'Hot Glue Gun', category_id: 4)
Tool.create(name: 'Jump Wires', category_id: 4)
Tool.create(name: 'LEDs', category_id: 4)
Tool.create(name: 'Precision Screwdriver', category_id: 4)
Tool.create(name: 'Push Buttons', category_id: 4)
Tool.create(name: 'Resistors', category_id: 4)
Tool.create(name: 'Solder', category_id: 4)
Tool.create(name: 'Tweezer', category_id: 4)
Tool.create(name: 'Wire Stripper', category_id: 4)

Tool.create(name: 'Needle', category_id: 5)

Tool.create(name: 'Rope', category_id: 6)

Tool.create(name: 'Spade', category_id: 7)

Tool.create(name: 'Paint', category_id: 8)

Tool.create(name:'Pipe', category_id: 9)

Tool.create(name: 'Composting Bin', category_id: 10)

Tool.create(name: 'Sugar', category_id: 11)

Tool.create(name: 'Hammer', category_id: 12)

