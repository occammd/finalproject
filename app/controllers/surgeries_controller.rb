class SurgeriesController < ApplicationController
  


   require 'uri'
  Twilio_sid = 'ACee185e4fdf1ff6dac321d90841f23f25'
  Twilio_token = '6fcd44041f413e6db99c8513673e0a5a'
  Twilio_phone_number = "6479311279"
  BASE_URL= 'localhost:3000/clients'
  def sms
    @client = Client.find(params[:id])
    
    @twilio_client = Twilio::REST::Client.new Twilio_sid, Twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{Twilio_phone_number}",
      :to => @client.phone,
      :body => @client.message[0..139]
    )
  end

  def makecall
    @client = Client.find(params[:id])
    @url='http://twimlets.com/message?Message%5B0%5D=' + ERB::Util.url_encode( ',,Hello' + @client.name+',,' + @client.message) 
    @url = @url + '&Message%5B1%5D=http%3A%2F%2Foccam.md%2Fhs.mp3&'
    begin
      @twilio_client = Twilio::REST::Client.new Twilio_sid, Twilio_token
      @twilio_client.account.calls.create(
      :from => "+1#{Twilio_phone_number}",
      :to => @client.phone,
      :url => @url
      )
    rescue StandardError => bang
      redirect_to :action => '.', 'msg' => "Error #{bang}"
      return
    end# GET /surgeries
  # GET /surgeries.json
  def index
    @surgeries = Surgery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @surgeries }
    end
  end

  # GET /surgeries/1
  # GET /surgeries/1.json
  def show
    @surgery = Surgery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @surgery }
    end
  end

  # GET /surgeries/new
  # GET /surgeries/new.json
  def new
    @surgery = Surgery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @surgery }
    end
  end

  # GET /surgeries/1/edit
  def edit
    @surgery = Surgery.find(params[:id])
  end

  # POST /surgeries
  # POST /surgeries.json
  def create
    @surgery = Surgery.new(params[:surgery])

    respond_to do |format|
      if @surgery.save
        format.html { redirect_to @surgery, notice: 'Surgery was successfully created.' }
        format.json { render json: @surgery, status: :created, location: @surgery }
      else
        format.html { render action: "new" }
        format.json { render json: @surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /surgeries/1
  # PUT /surgeries/1.json
  def update
    @surgery = Surgery.find(params[:id])

    respond_to do |format|
      if @surgery.update_attributes(params[:surgery])
        format.html { redirect_to @surgery, notice: 'Surgery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgeries/1
  # DELETE /surgeries/1.json
  def destroy
    @surgery = Surgery.find(params[:id])
    @surgery.destroy

    respond_to do |format|
      format.html { redirect_to surgeries_url }
      format.json { head :no_content }
    end
  end
end
