require "google/cloud/vision"

vision = Google::Cloud::Vision.new(project: ENV["GOOGLE_PROJECT_ID"])
file_name = "./test.jpg"

labels = vision.image(file_name).labels

puts "Labels:"
labels.each do |label|
  puts label.description
end
