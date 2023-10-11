class PetsController < ApplicationController

  get "/pets/new" do
    if logged_in?
      erb :"/pets/new"
    else
      redirect to "/login"
    end
  end

  post "/pets" do
    if params[:name] ==""
      redirect to "/pets/new"
    else
      user = current_user
      @pet = Pet.create(
        name: params[:name],
        species: params[:species],
        breed: params[:breed],
        microchip_number: params[:microchip_number],
        microchip_registry: params[:microchip_registry],
        vet_name: params[:vet_name],
        vet_phone: params[:vet_phone],
        vaccinations: params[:vaccinations],
        flea_treatment_type: params[:flea_treatment_type],
        heartworm_treatment_type: params[:heartworm_treatment_type])
      redirect to "/pets/#{@pet.id}"
    end
  end

  get "/pets" do
    if logged_in?
      @user = current_user
      @pets = @user.pets.all
      erb :"/pets/index"
    else
      redirect to '/login'
    end
  end

  get "/pets/:id" do
    if logged_in?
      @pet = Pet.find_by_id(params[:id])
      if @pet.user_id == session[:user_id]
        erb :"/pets/show"
      else @pet.user_id != session[:user_id]
        redirect to "/pets"
      end
    else
      redirect to "/login"
    end
  end

  get "/pets/:id/edit" do
    if logged_in?
      @pet = Pet.find_by_id(params[:id])
      if @pet.user_id == session[:user_id]
        erb :"/pets/edit"
      else
        redirect to "/pets"
      end
    else
      redirect to "/login"
    end
  end

  patch "/pets/:id" do
    if params[:name] == ""
      redirect to "/pets/#{params[:id]}/edit"
    else
      @pet = Pet.find_by_id(params[:id])
      @pet.name = params[:name]
      @pet.species = params[:species]
      @pet.breed = params[:breed]
      @pet.microchip_number = params[:microchip_number]
      @pet.microchip_registry = params[:microchip_registry]
      @pet.vet_name = params[:vet_name]
      @pet.vet_phone = params[:vet_phone]
      @pet.vaccinations = params[:vaccinations]
      @pet.flea_treatment_type = params[:flea_treatment_type]
      @pet.heartworm_treatment_type = params[:heartworm_treatment_type]
      redirect to "/pets/#{@pet.id}"
    end
  end

  delete "/pets/:id/delete" do
    if logged_in?
      @pet = Pet.find_by_id(params[:id])
      if @pet.user_id == session[:user_id]
        @pet.delete
        redirect to "/pets"
      end
    else
      redirect to "/login"
    end
  end

end
