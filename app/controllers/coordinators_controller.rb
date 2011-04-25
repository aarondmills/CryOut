class CoordinatorsController < ApplicationController
  # GET /coordinators
  # GET /coordinators.xml
  def index
    @coordinators = Coordinator.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coordinators }
    end
  end

  # GET /coordinators/1
  # GET /coordinators/1.xml
  def show
    @coordinator = Coordinator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @coordinator }
    end
  end

  # GET /coordinators/new
  # GET /coordinators/new.xml
  def new
    @coordinator = Coordinator.new
		@county = County.find(params[:county_id])

  end

  # GET /coordinators/1/edit
  def edit
    @coordinator = Coordinator.find(params[:id])
  end

  # POST /coordinators
  # POST /coordinators.xml
  def create
		@county = County.find(params['coordinator']['county_id'])
		@coordinator = @county.build_coordinator(params[:coordinator]) 
      if @coordinator.save
        redirect_to(@county, :notice => 'Thank you for your application. We will respond as soon as possible!')
				CoordinatorMailer.registration_confirmation(@coordinator).deliver
      else
         render :action => "new"

   	  end
  end

  # PUT /coordinators/1
  # PUT /coordinators/1.xml
  def update
    @coordinator = Coordinator.find(params[:id])

    respond_to do |format|
      if @coordinator.update_attributes(params[:coordinator])
        format.html { redirect_to(@coordinator, :notice => 'Coordinator was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @coordinator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinators/1
  # DELETE /coordinators/1.xml
  def destroy
    @coordinator = Coordinator.find(params[:id])
    @coordinator.destroy

    respond_to do |format|
      format.html { redirect_to(coordinators_url) }
      format.xml  { head :ok }
    end
  end
end
