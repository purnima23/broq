# require 'mastercard_api'

# SANDBOX_CONSUMER_KEY = 'jZPI-gW7GNImLhG7EmUbYjrC97KKWzVoARKXgQiV4415ab9d!4d6534784632716e5042362b563973685957313959673d3d'

# # Path to the private key in .p12 format.
# SANDBOX_PRIVATE_KEY_PATH = ''

# private_key = OpenSSL::PKCS12.new(File.open(SANDBOX_PRIVATE_KEY_PATH), '<password>').key

# service =
# Mastercard::Services::LostStolen::LostStolenService.new(SANDBOX_CONSUMER_KEY,
# private_key, 'SANDBOX')

# account = service.get_account('5343434343434343')

# puts account.listed
# puts account.reason