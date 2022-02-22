puts user = {
    email: "nancy.proctor@tn.gov",
    id: "nproctor"
}

# print user.methods

print user.reject {|k, v| v.start_with?('n')}
puts

print user.keep_if{|k, v| v.start_with?('n')}
puts

print user.map {|k, v| k.upcase}