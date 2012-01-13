ActiveAdmin.register Picture do
  index do
  	column :id
    column :name
    column "Image" do |picture|
    	image_tag picture.image.url(:medium)
    end
    column :image_file_name
    column :item
    default_actions
  end

  show do
    h3 picture.name
    h2 picture.item.name
    div do
      image_tag picture.image.url
    end
  end

  form do |f|
  	f.inputs do 
	  	f.input :name
	  	f.input :item
	  	f.input :image, :as => :file
	  end
	  f.buttons
  end

end
