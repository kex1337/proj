class ItemsController < ApplicationController

	def index
	    @items = Item.all
	end

	def update
	  @item = Item.find(params[:id])
	  if @item.update(item_params)
	    redirect_to(@item)
	  else
	    render "edit"
	  end
	end



end
