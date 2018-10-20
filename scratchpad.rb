my_hash = {"yes" => 1, "no" => 2}


def my_array(hash)
    my_array = []
    hash.each {|key, value|
        my_array << value
    }
    return my_array
end

print my_array(my_hash)


def my_array_2
    mult_arr = my_array(my_hash)
    mult_arr.map {|k, v| v*3}
    return mult_arr
end

print my_array_2