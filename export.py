import json
import os
 

with open('/Users/rolfberkenbosch/Projects/Git/openplantdatabase.io/file.json', 'r') as f:
    plants_dict = json.load(f)

data = {}
count=0
sample = open('/Users/rolfberkenbosch/Projects/Git/openplantdatabase.io/samplefile.json', 'w') 

for plant in plants_dict:
    count=count+1
 #   print(plant['display_pid'])
#    print(plant['pid'])
#    data[plant['pid']] = plant['pid']
    data[plant['pid']] = plant['display_pid']
    print('{"latin_name": "%s","common_name": "%s","more_information": "db/%s/%s.json"},' % (plant['pid'], plant['display_pid'], plant['pid'][0:2], plant['pid']),file = sample)

    dir = os.path.join("/Users/rolfberkenbosch/Projects/Git/openplantdatabase.io/db",plant['pid'][0:2])
    if not os.path.exists(dir):
        os.mkdir(dir)
#json_data = json.dumps(data)
#print(json_data)
sample.close()
print(count)