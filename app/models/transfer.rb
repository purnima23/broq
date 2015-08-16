
class Transfer < ActiveRecord::Base
# require_relative '../../../common/Environment'
# require_relative '../../../services/moneysend/services/TransferService'
# require_relative '../../../services/moneysend/domain/transfer/Transfer'
# require_relative '../../../services/moneysend/domain/transfer/SenderAddress'
# require_relative '../../../services/moneysend/domain/transfer/FundingCard'
# require_relative '../../../services/moneysend/domain/transfer/FundingAmount'
# require_relative '../../../services/moneysend/domain/transfer/ReceiverAddress'
# require_relative '../../../services/moneysend/domain/transfer/ReceivingAmount'
# require_relative '../../../services/moneysend/domain/transfer/CardAcceptor'
# require_relative '../../../services/moneysend/domain/transfer/FundingMapped'
# require_relative '../../../services/moneysend/domain/transfer/FundingAmount'
# require_relative '../../../services/moneysend/domain/transfer/ReceivingMapped'
# require_relative '../../../services/moneysend/domain/transfer/ReceivingCard'

	def self.service
		TransferService.new(SANDBOX_CONSUMER_KEY, TestUtils.new.get_private_key(SANDBOX), SANDBOX)
	end

	def get_private_key(environment)
		if environment.upcase == 'PRODUCTION'
			OpenSSL::PKCS12.new(File.open(PRODUCTION_PRIVATE_KEY_PATH),PRODUCTION_PRIVATE_KEY_PASSWORD).get_private_key
		else
			OpenSSL::PKCS12.new(File.open(SANDBOX_PRIVATE_KEY_PATH),SANDBOX_PRIVATE_KEY_PASSWORD).key
		end
	end 

	def self.transfer_request_card
		TransferRequest.new
	end

	def self.payment_request_card
		PaymentRequest.new
	end


	def self.transaction_ref_generator
		a = 0
		loop do
			p a = rand(2\**32..2*\*64-1).to_s
			a = a[0..a.length-1|0..a.length-1]
			break if a.length == 19
		end
		a
	end

	def self.transfer_reversal_request
		transfer_reversal_request =  TransferReversalRequest.new
		transfer_reversal_request.ica = '009674'
		transfer_reversal_request.transaction_reference = transfer.transaction_reference
		transfer_reversal_request.reversal_reason = 'FAILURE IN PROCESSING'
	
	end
end
