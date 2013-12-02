require 'csv'

file1 = "my_file.csv"
File.open("/home/duclm/Desktop/rubyproject/banhang/db/data.csv", "w") do |csv|
i=0
CSV.open("data.csv", "rb").each do |row|
if row.count==10
 i=i+1
	if i >4
	  if row.count==10
	 	
             	csv << row[0]
		csv << ","
		csv << row[1]
		csv << ","
		csv << row[2]
		csv << ","
		csv << row[3]
		csv << ","
		csv << row[4]
		csv << ","
		csv << row[5]
		csv << ","
		csv << row[6]
		csv << ","
		csv << row[7]
		csv << ","
		csv << row[8]
		csv << ","
		csv << row[9]
		csv << "\n"
	     
	    
	   else
	       
             	csv << row[0]
		csv << ","
		csv << row[1]
		csv << ","
		csv << row[2]
		csv << ","
		csv << row[3]
		csv << ","
		csv << row[4]
		csv << ","
		csv << row[5]
		csv << ","
		csv << row[6]
		csv << ","
		csv << row[7]
		csv << ","
		csv << row[8]
		csv << ","
		csv << row[9]
		csv << ","
		csv << row[10]
		csv << ","
		csv << row[11]
		csv << ","
		csv << row[12]
		csv << "\n"
	    
  	   
          end
	end
else
 i=i+1
	if i >5
	  if row.count==10
	 	
             	csv << row[0]
		csv << ","
		csv << row[1]
		csv << ","
		csv << row[2]
		csv << ","
		csv << row[3]
		csv << ","
		csv << row[4]
		csv << ","
		csv << row[5]
		csv << ","
		csv << row[6]
		csv << ","
		csv << row[7]
		csv << ","
		csv << row[8]
		csv << ","
		csv << row[9]
		csv << "\n"
	     
	    
	   else
	       
             	csv << row[0]
		csv << ","
		csv << row[1]
		csv << ","
		csv << row[2]
		csv << ","
		csv << row[3]
		csv << ","
		csv << row[4]
		csv << ","
		csv << row[5]
		csv << ","
		csv << row[6]
		csv << ","
		csv << row[7]
		csv << ","
		csv << row[8]
		csv << ","
		csv << row[9]
		csv << ","
		csv << row[10]
		csv << ","
		csv << row[11]
		csv << ","
		csv << row[12]
		csv << "\n"
	    
  	   
          end
	end
   end
end
for j in 1..14
i=0
CSV.open("data (#{j}).csv", "rb").each do |row|
if row.count==10
 i=i+1
	if i >4
	  if row.count==10
	 	
             	csv << row[0]
		csv << ","
		csv << row[1]
		csv << ","
		csv << row[2]
		csv << ","
		csv << row[3]
		csv << ","
		csv << row[4]
		csv << ","
		csv << row[5]
		csv << ","
		csv << row[6]
		csv << ","
		csv << row[7]
		csv << ","
		csv << row[8]
		csv << ","
		csv << row[9]
		csv << "\n"
	     
	    
	   else
	       
             	csv << row[0]
		csv << ","
		csv << row[1]
		csv << ","
		csv << row[2]
		csv << ","
		csv << row[3]
		csv << ","
		csv << row[4]
		csv << ","
		csv << row[5]
		csv << ","
		csv << row[6]
		csv << ","
		csv << row[7]
		csv << ","
		csv << row[8]
		csv << ","
		csv << row[9]
		csv << ","
		csv << row[10]
		csv << ","
		csv << row[11]
		csv << ","
		csv << row[12]
		csv << "\n"
	    
  	   
          end
	end
 else
	i=i+1
	if i >5
	  if row.count==10
	 	
             	csv << row[0]
		csv << ","
		csv << row[1]
		csv << ","
		csv << row[2]
		csv << ","
		csv << row[3]
		csv << ","
		csv << row[4]
		csv << ","
		csv << row[5]
		csv << ","
		csv << row[6]
		csv << ","
		csv << row[7]
		csv << ","
		csv << row[8]
		csv << ","
		csv << row[9]
		csv << "\n"
	     
	    
	   else
	       
             	csv << row[0]
		csv << ","
		csv << row[1]
		csv << ","
		csv << row[2]
		csv << ","
		csv << row[3]
		csv << ","
		csv << row[4]
		csv << ","
		csv << row[5]
		csv << ","
		csv << row[6]
		csv << ","
		csv << row[7]
		csv << ","
		csv << row[8]
		csv << ","
		csv << row[9]
		csv << ","
		csv << row[10]
		csv << ","
		csv << row[11]
		csv << ","
		csv << row[12]
		csv << "\n"
	    
  	   
          end
	end
   end
end


end
end
