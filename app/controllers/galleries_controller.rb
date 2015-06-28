class GalleriesController < ApplicationController
	before_action :find_gallery, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def new
		@gallery = Gallery.new
	end

	def index
		@gallery = Gallery.all.order("created_at DESC")
	end

	def create 
		@gallery = Gallery.new(gallery_params)

		if @gallery.save
			redirect_to @gallery
		else
			render 'new'
		end
	end

	def show
		@gallery = Gallery.friendly.find(params[:id])
	end

	def update
		@gallery = Gallery.find(params[:id])
		if @gallery.update(gallery_params)
				redirect_to @gallery
		else
			render 'edit'
		end

	end

	private
	def find_gallery
		@gallery = Gallery.friendly.find(params[:id])
	end

	def gallery_params
		params.require(:gallery).permit(:name, :description, :url, :image)
	end


end
