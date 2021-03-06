ActiveAdmin.register Item do

	index do
    column :name
    column :category, :sortable => false
    column :brand, :sortable => false
    column :season, :sortable => false
    column :structure
    column :price
    column :discount
    column :sex
    default_actions
  end

	controller do
		before_filter :admin, :except => [:index, :new, :create]
		def admin
			@item = Item.find(params[:id])
		end

		def new
			super do
				@item.pictures.build
			end
		end
	end

	controller.authorize_resource
	
	show do
    h3 item.name
    div do
    	item.pictures.each do |ff|
    		image_tag ff.image.url
    	end
    end
  end

  form :html => { :enctype => "mmultipart/form-data" } do |f|


	f.inputs do
		f.input :admin_user, :as => :select, :collection => AdminUser.all.collect {|p| [ p.email, p.id ] }, :include_blank => "Select your account", :label => "Owner"
		f.input :name, :label => "Item name"
		f.input :category
		f.input :brand
		f.input :season, :as => :select, :collection => Season.all.collect {|p| [ p.year.to_s+" "+p.name.to_s, p.id ] }, :include_blank => false
	    
		f.input :structure
		f.input :description
		f.input :price
		f.input :discount
		f.input :sex, :as => :radio, :collection => [["Male", "male"], ["Female", "female"]]
		# f.input :pictures, :as => :check_boxes, :label_method => Proc.new { |image| "#{image.name}"}
	end

  f.inputs do
    f.has_many :pictures do |p|
    	p.inputs :name
      p.inputs :image, :label_method => :name, :as => :file
    end
   end

  

  f.buttons
end
end
