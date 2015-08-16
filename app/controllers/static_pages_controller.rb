class StaticPagesController < ApplicationController

  def save
  end

  def spend
  end

  def earn
  end

  def askforfund
  	@wallet = Wallet.all
  	#MASTERCARD API
  	# @create_mapping_request = MasterCardMaping.create_mapping_request(params)
  	# @inquire_mapping_request = MasterCardMaping.inquire_mapping_request(params)
  	# @update_mapping_request = MasterCardMaping.update_mapping_request(params)
  	# payment_request = Transfer.payment_request(@create_mapping_request)
  	# transfer_reversal = Transfer.transer_reversal_request(payment_request)
  end

end
