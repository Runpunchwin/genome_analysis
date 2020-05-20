#!/usr/bin/env python3
import sys
import re
import numpy as np

count_file = open(sys.argv[1], "r")
count_file_lines = count_file.readlines()
map_file = open(sys.argv[2], "r")
map_file_lines = map_file.readlines()
genelengths = np.zeros((5000,2))
i = 0
sumReads = 0

for line in count_file_lines:
    if line not in ["\n", "\r\n"]:
        words = line.split()
        sumReads += float(words[1])
        if re.match(r'^__', words[0]):
            continue
        else:
            for line2 in map_file_lines:
                if re.match(r'^##', line2):
                    continue
                else:
                    split1 = line2.split("ID=")
                    if len(split1) > 1:
                        #print(split1[1])
                        regvar = split1[1]
                        # my_regex = r'^' + split1[1]
                        #print(words[0] + split1[1])
                        #print(words[0].startswith(split1[1]))
                        if split1[1].startswith(words[0]):
                            split2 = split1[0].split("\t")
                            print(split2)
                            print(words[0])
                            print(float(split2[4]))
                            print(float(split2[3]))
                            genelengths[i, 0] = (float(words[1]))
                            genelengths[i, 1] = (float(split2[4])-float(split2[3]))
                            i += 1
print(genelengths)
print(sumReads)

def rpkm(geneReads, geneLength, totReads):
    return geneReads/(geneLength/1000*totReads/1000000)


count_file2 = open(sys.argv[1], "r")
count_file_lines2 = count_file2.readlines()
j = 0
for line in count_file_lines2:
    if j < i:
        words = line.split()
        print(words[0] + "\t" + rpkm(genelengths[j, 0], genelengths[j, 1], sumReads))
        j += 1
