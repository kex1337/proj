class ItemsController < ApplicationController


	def create
		#@item = Item.create(item_params)
	end

	def destroy

	end



	def index
	 @items = Item.all.paginate(page: params[:page], per_page: 10)
	end

	def show
		@item = Item.find(params[:id])
	end

	def update
	  @item = Item.find(params[:id])
	  if @item.update(item_params)
	    redirect_to(@item)
	  else
	    render "edit"
	  end
	end

	def item_params
		params.require(:item).permit(:name, :price, :picture)
	end

	def admin
		@item = Item.new
		@item.save
	end

end
