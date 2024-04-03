with open("test/backend.conf") as fh:
    data = fh.read()
    lines = data.splitlines()

for line in lines:
    line = line.replace(" ", "")
    line = line.replace('"','')
    line = line.split("=")
    print(line)

# exit(1)