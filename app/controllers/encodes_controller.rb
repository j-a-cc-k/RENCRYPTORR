class EncodesController < ApplicationController
  before_action :set_encode, only: [:show, :edit, :update, :destroy]

  # GET /encodes
  # GET /encodes.json
  def index
    @encodes = Encode.all
  end

  # GET /encodes/1
  # GET /encodes/1.json
  def show
  end

  def runencryption
    @plain_message = params[:message]
    encrypt
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encode
      @encode = Encode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encode_params
      params.require(:encode).permit(:plain_message, :generated_key)
    end



    def encrypt
      @generated_key = []
      @plain_message.each_byte do |l|
        new_value = rand(33..110)
        @generated_key << new_value
      end

      counter = 0
      @finished_message = ""
      @encoded_message = []
      @finished_key = ""
      @plain_message.each_byte do |l|
        letter = l.to_i
        letter += @generated_key[counter].to_i
        @encoded_message << letter
        counter += 1
      end

      @encoded_message.each do |m|
        @finished_message += m.chr('UTF-8')
      end
      @generated_key.each do |t|
        @finished_key += t.chr('UTF-8')
      end
    end

  
        


end
