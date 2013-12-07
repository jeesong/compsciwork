require 'pry'
developers = ["John","Jee","Bob","Bobo","Del","Feather","Jackie","Anil",
              "Kyle","Tripta"]

schedule = {"Monday"=> {"Morning"=> nil, "Afternoon"=> nil},
            "Tuesday"=> {"Morning"=> nil, "Afternoon"=> nil},
            "Wed"=> {"Morning"=> nil, "Afternoon"=> nil},
            "Thur"=> {"Morning"=> nil, "Afternoon"=> nil},
            "Fri"=> {"Morning"=> nil, "Afternoon"=> nil},
            "Sat"=> {"Morning"=> nil, "Afternoon"=> nil},
            "Sun"=> {"Morning"=> nil, "Afternoon"=> nil}
            }

schedule.each do |day, time|
  time["Morning"] = developers.sample
  time["Afternoon"] = developers.sample
  while time["Morning"] == time["Afternoon"]
    time["Morning"] = developers.sample
  end
end
binding.pry
