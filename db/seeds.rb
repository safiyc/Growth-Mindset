category = [
  "Health",
  "Skills",
  "Misc"
]

projects = [
  ["Cook", "Learn to cook a new dish every other week.", 1, 2, "plushy1.jpg", "image/jpeg"],
  ["Meditation", "Meditate for 10 minutes every morning.", 1, 1, "plushy1.jpg", "image/jpeg"],
  ["Guitar", "Practice the guitar for 15 to 30 minutes a day.", 1, 2, "plushy1.jpg", "image/jpeg"],
  ["Run", "Run every other day for 30 minutes.", 1, 1, "plushy1.jpg", "image/jpeg"],
  ["Code", "Code daily.", 1, 2, "plushy1.jpg", "image/jpeg"]
]

category.each do |name|
  Category.create( name: name )
end

projects.each do |name, desc, user_id, category_id, img_name, img_type|
  Project.create( name: name, desc: desc, user_id: user_id, category_id: category_id, image_file_name: img_name, image_content_type: img_type )
end
