#!/usr/bin/env python3
import sys
import re
import numpy as np

count_file = sys.argv[1]
map_file = sys.argv[2]
genelengths = np.zeros((2,5000))
i = 0
sumReads = 0

for line in count_file:
    if line not in ["\n", "\r\n"]:
        words = line.split("\t")
        sumReads += float(words[1])
        if re.match(r'^__', words[0]):
            continue
        else:
            for line2 in map_file:
                if re.match(r'^##', line2):
                    continue
                else:
                    split1 = line2.split("ID=")
                    if split1[1] == words[0]:
                        split2 = split1[1].split("\t")
                        genelengths[i, 0] = (float(words[1]))
                        genelengths[i, 1] = (float(split2[4])-float(split2[3]))
                        i += 1


def rpkm(geneReads, geneLength, totReads):
    return geneReads/(geneLength/1000*totReads/1000000)


j = 0
for line in count_file:
    words = line.split()
    print(words[0])
    print("\t")
    print(rpkm(genelengths[j, 1], genelengths[j, 2], sumReads))
    j += 1
    print("\n")