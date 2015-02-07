require_relative 'encrypter'
require_relative 'string_io_adapter'

#adaptery programowe
#strona 182
#zaszyfruj
message = File.open('message.txt', 'rb' )
message_encrypted = File.open('message.encrypted.txt', 'wb')
encrypter = Encrypter.new('super tajny klucz')
encrypter.encrypt(message, message_encrypted)

message.close
message_encrypted.close

#zaszyfruj raz jeszcze, czyli odszyfruj
decrypter = Encrypter.new('super tajny klucz')
message_encrypted = File.open('message.encrypted.txt' , 'rb')
message_decrypted = File.open('message.decrypted.txt', 'wb')
decrypter.encrypt(message_encrypted, message_decrypted)

message_encrypted.close
message_decrypted.close

#strona 183
encrypter = Encrypter.new('super tajny klucz')
reader = StringIOAdapter.new('zaatakujemy o świcie')
writer = File.open('message2.encrypted.txt', 'wb')
encrypter.encrypt(reader, writer)
