ActiveAdmin.register Boutique do

	controller do
		before_filter :admin, :except => [:index, :new, :create]
		def admin
			@boutique = Boutique.find(params[:id])
		end
	end

	controller.authorize_resource
  index do
    column :name
    column :phone
    column :phone2
    column :director
    column :address
    column :url_bout
    column "Owner", :admin_user
    default_actions
  end

  show do
    h2 link_to "Edit description page", root_path + "editor/" + boutique.url_bout + "/description", id: "edit_link", 
                data: { save_url: root_path}
    h3 boutique.name
    div do
      simple_format boutique.phone
      simple_format boutique.address
    end
    div do
      if boutique.image?
        image_tag boutique.image.url
      end
    end
  end


  form :partial => 'form'


end
