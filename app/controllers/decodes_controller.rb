class DecodesController < ApplicationController
  before_action :set_decode, only: [:show, :edit, :update, :destroy]

  # GET /decodes
  # GET /decodes.json
  def index
    @decodes = Decode.all
  end

  # GET /decodes/1
  # GET /decodes/1.json
  def show
  end


  def rundecryption
    @input_encrypt = params[:enc_message]
    @input_key = params[:enc_key]
    decrypt
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_decode
      @decode = Decode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def decode_params
      params.require(:decode).permit(:inputed_encode, :inputed_key)
    end

    def decrypt
      counter = 0
      @finished_decrypt = ""
      @ascii_message = ""
      @ascii_key = ""
      @input_encrypt.each_byte do |d|
        @ascii_message += d.chr('UTF-8')
      end
      @input_key.each_byte do |z|
        ascii_key += z.to_i
      end
      while counter < length(finished_decrypt)
        @ascii_message -= @ascii_key
        @ascii_message.each do |k|
          @finished_decrypt << @k.chr('UTF-8')
        end
        counter += 1
      end
    end




end
