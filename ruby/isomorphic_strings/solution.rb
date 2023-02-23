# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    hash = {}
    s.split("").each_with_index do |c, i|
        hash[c] = t[i] if hash[c].nil? && hash.key(t[i]).nil?
        return false if hash[c] != t[i]
    end
    true

end