class BillboardsController < ApplicationController
  def index
    @billboards = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def new
    @billboard = Billboard.new
    render partial: 'form'
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      redirect_to billboards_path
    else
      render :new
    end
  end

  def edit
    @billboard = Billboard.find(params[:id])
    render partial: 'form'
  end
end

def update
  @billboard = Billboard.find(params[:id])
  if @billboard.update(billboard_params)
    redirect_to billboards_path
  else
    render :edit
  end
end

def destroy
  Billboard.find(params[:id]).destroy
  redirect_to billboards_path
end

private
  def billboard_params
    params.require(:billboard).permit(:name)
  end
end

# def index
#   @subs = Sub.all
#   # render index.html.erb
# end

# def show
#   @sub = Sub.find(params[:id])
#   # render show.html.erb
# end

# def new
#   @sub = Sub.new
#   render partial: 'form'
#   # render new.html.erb
# end

# def create
#   @sub = Sub.new(sub_params)
#   if @sub.save
#     redirect_to subs_path
#   else
#     render :new
#   end
# end

# def edit
#   @sub = Sub.find(params[:id])
#   render partial: 'form'
#   # render edit.html.erb edit form
# end

# def update
#   # look up a record and return the record
#   @sub = Sub.find(params[:id])
#   if @sub.update(sub_params)
#     redirect_to subs_path
#   else
#     render :edit
#   end
# end

# def destroy
#   # @sub = Sub.find(params[:id])
#   # @sub.destroy
#   # redirect_to_subs_path
#   # or
#   Sub.find(params[:id]).destroy
#   redirect_to subs_path
# end

# private
#   def sub_params
#     # { sub: {name: 'puppies', age: 12, pass: select + password from user } }
#     params.require(:sub).permit(:name)
#   end
# end