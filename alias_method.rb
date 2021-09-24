class String
    def space_out
        chars.join(" ")
    end

    alias_method "original_size", "size"
    #felülírom a size method-ot lent,
    #ezért előtte elmentem az original size methodot
    # mint original_size

    def size
        original_size * 2 - 1
    end
end

puts "abc".space_out
puts "abc".size

