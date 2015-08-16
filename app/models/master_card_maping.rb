class MasterCardMaping < ActiveRecord::Base
# require_relative '../../../services/moneysend/services/CardMappingService'
# require_relative '../../../services/moneysend/domain/card_mapping/CreateMapping'
# require_relative '../../../services/moneysend/domain/card_mapping/CreateMappingRequest'
# require_relative '../../../services/moneysend/domain/common/Address'
# require_relative '../../../services/moneysend/domain/common/CardholderFullName'

	def self.service 
		CardMappingService.new(SANDBOX_CONSUMER_KEY, TestUtils.new.get_private_key(SANDBOX), SANDBOX)
	end	

	def get_private_key(environment)
		if environment.upcase == 'PRODUCTION'
		OpenSSL::PKCS12.new(File.open(PRODUCTION_PRIVATE_KEY_PATH),PRODUCTION_PRIVATE_KEY_PASSWORD).key
		else
		OpenSSL::PKCS12.new(File.open(SANDBOX_PRIVATE_KEY_PATH),SANDBOX_PRIVATE_KEY_PASSWORD).key
		end
	end

	def self.create_mapping_request(params)
		 CreateMappingRequest.new
	end

	def self.inquire_mapping_request
		InquireMappingRequest.new
	end

	def self.update_mapping_request
		options = UpdateMappingRequestOptions.new
		options.mapping_id = inquire_mapping.mappings.mapping[0].mapping_id
	end

end
