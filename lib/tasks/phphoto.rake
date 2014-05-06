namespace :phphoto do
  desc "TODO"
  task :gallery_from_folder, [:path, :name] => :environment do |t, args|
    path = args[:path]
    name = args[:name]
    path.gsub!("~", Dir.home) if path[0] == "~"
    gallery = Gallery.create name: name || path.split("/").last
    Dir.foreach(path) do |file|
      if /.jpg$/ =~ file
        image = File.open(path+file)
        Photo.create(image: image, gallery: gallery)
        image.close
      end
    end
  end
end
