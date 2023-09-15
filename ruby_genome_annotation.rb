def rubyAnnotationparse
  #A genome annotation length calculator written in ruby. 
  #It invokes the shell subprocess with in ruby to parse 
  #the iterators at the faster rate. if you have dozens of
  #genome sequenced, simply mention the column number and the iterator
  #will hash the length
  start_split = `for j in $(cat Athaliana_447_Araport11.gene.gff3 | cut -f 4 | grep "^[0-9]"); do echo $j; done | head -n 10`.split.map{|each| each.to_i}
  end_split = `for j in $(cat Athaliana_447_Araport11.gene.gff3 | cut -f 5 | grep "^[0-9]"); do echo $j; done | head -n 10`.split.map{|each| each.to_i}
  for i in 0..start_split.length
      for j in 0..end_split.length
          puts end_split[j] - start_split[i]
      end
  end
end
