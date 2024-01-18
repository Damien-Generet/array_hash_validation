require_relative ("./02_infocrypto.rb")
@value = @value.map(&:to_f) # CONVERT STRING TO FLOAT
DEVICE_VALUE = Hash[@devise.zip(@value)]
SORTED_CRYPTO =  DEVICE_VALUE.sort_by{|key, value| value}# COMBINED TWO ARRAY IN ONE NEW HASH


#SHOW ME THE MOST VALUE
def bigger_crypto
    biggest_value = {}
    all_biggest_value = SORTED_CRYPTO.reverse
    max_crypto = all_biggest_value[0][1]
    puts " Les ou la valeurs la plus grandes sont/est #{all_biggest_value.select{|key, value| value==max_crypto}}"
end


#FINT THE SMALLST VALUE
def smaller_crypto
    smallest_value = {}
    smallest_value = SORTED_CRYPTO
    min_crypto = smallest_value[0][1]
    puts "Les valeurs ou la valeurs la plus petites sont/est #{smallest_value.select{|key, value| value==min_crypto}}"
end

#FIND THE CRYPTO SMALLER THAN 6000
def under_6000
    lower_crypto = SORTED_CRYPTO.select{|key, value|value <= 6000}
    puts "Les valeurs sous 6000 sont #{lower_crypto}"
end


#FIND THE BIGGEST CRYPTO UNDER 6000
def best_bad_6000
    lower_crypto = SORTED_CRYPTO.select{|key, value|value <= 6000}
    lower_sorted = lower_crypto.sort_by{|key, value| value}.reverse
    best_lower_crypto = lower_sorted[0][1]
    puts "Les crypto les plus hautes sous les 6000 sont #{lower_sorted.select{|key, value|value==best_lower_crypto}} "
end

# bigger_crypto
# smaller_crypto
# under_6000
# best_bad_6000