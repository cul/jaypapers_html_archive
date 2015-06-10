#!ruby
open('jaypapers-local-urls.txt') do |b|
  b.each do |l|
    l.strip!
    dir = File.join('data','items',l[-2..-1])
    id = l.split("key=")[-1]
    fname = id + ".html"
    outpath = File.join(dir,fname)
    system "curl -o \"#{outpath}\" \"#{l}\""
  end
end