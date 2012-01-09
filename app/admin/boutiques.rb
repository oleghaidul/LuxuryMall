ActiveAdmin.register Boutique do

	controller do
		before_filter :admin, :except => :index
		def admin
			@boutique = Boutique.find(params[:id])
		end
	end

	controller.authorize_resource
  index do
    column :name
    column :phone
    column :address
    column "Owner", :admin_user
    default_actions
  end

  show do
    h3 boutique.name
    div do
      simple_format boutique.phone
      simple_format boutique.address
    end
  end

  form :partial => 'form'


end
