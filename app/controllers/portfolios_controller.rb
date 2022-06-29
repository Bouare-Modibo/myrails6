class PortfoliosController < ApplicationController
	def index
		@pf_items = Portfolio.all 
	end

	def new
		@pf_items = Portfolio.new
	end


	def create
	    @pf_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

	    respond_to do |format|
		      if @pf_items.save
		        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully created." }
		      else
		        format.html { render :new, status: :unprocessable_entity }
		      end
	    end
  	end

  	def edit
  		@pf_items = Portfolio.find(params[:id])
  	end

  	def update

  		@pf_items = Portfolio.find(params[:id])

	    respond_to do |format|
	      if @pf_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
	        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
	      else
	        format.html { render :edit, status: :unprocessable_entity }
	      end
	    end
  end


	def show
		@pf_items = Portfolio.find(params[:id])
	end

	def destroy
		@pf_item = Portfolio.find(params[:id])
		@pf_item.destroy

	    respond_to do |format|
	      format.html { redirect_to portfolios_path, notice: "Portfolio was successfully destroyed." }
	    end
	end

end
