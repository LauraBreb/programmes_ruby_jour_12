def caesar_cipher(string,k)
  string.split(//).map!{|l|
    if (65..(90-k)).include?(l.ord) || (97..(122-k)).include?(l.ord)
      l.tr(l,(l.ord + k).chr)
    elsif ((90-k)...91).include?(l.ord) || ((122-k)...123).include?(l.ord)
      l.tr(l,(l.ord - (26 - k)).chr)
    else
      l
    end
  }.join()
end