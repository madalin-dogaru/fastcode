file = open('/File/Address/filename', 'r')
value1 = 'zone "'
value2 = '"  {type master; file "/etc/bind/blockeddomain.hosts";};'

lines = file.readlines()

for index, line in enumerate(lines):
    print(value1.rstrip()+line.rstrip()+value2.rstrip())
    
file.close()