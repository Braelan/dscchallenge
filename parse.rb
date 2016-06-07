require 'io/console'
require 'byebug'
$FIFTY=0
$FORTY=0
$THIRTY=0
$TWENTY=0
$FIFTYHASH={}

def handle_log(regexline)
  x =  regexline[2].to_i
  case x
  when 200..299
    $TWENTY+=1
  when 300..399
    $THIRTY+=1
  when 400..499
    $FORTY+=1
  when 500..599
    $FIFTY+=1
    if $FIFTYHASH.include?(regexline[1])
      $FIFTYHASH[regexline[1]]+=1
    else
      $FIFTYHASH[regexline[1]]=1
    end
  end
end



IO.foreach("sample.log") {|line| 
  
  request = /([GDP][EU][TL].*)"(\s\d\d\d\b)/.match(line) 
  
  begin
    handle_log(request)
  rescue
    # puts "regex couldn't find anything"
  end
}

puts "20x : " + $TWENTY.to_s + "|s"
puts "30x : " + $THIRTY.to_s + " |s"
puts "40x: " + $FORTY.to_s + " |s"
puts "50x: " + $FIFTY.to_s + " |s" 

$FIFTYHASH.each do |key, value|
  puts key + " : " + value.to_s
 end


