# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    magazine_hash = {}
    magazine.split("").each {|c| magazine_hash[c].nil? ? magazine_hash[c] = 1 : magazine_hash[c] += 1}
    ransom_note.split("").each do |c|
        current_count = magazine_hash[c]
        return false if current_count.nil? || current_count == 0
        magazine_hash[c] = current_count - 1
    end
    true
end