#!/usr/bin/env python3

import sys
from collections import Counter
import argparse
import functools
import math

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('-v', dest="verbose", default=False, action='store_true',
                    help='Verbose output')
parser.add_argument('--data', dest="data", help='Specify data as an argument')

args = parser.parse_args()

if args.data == None:
    buffer = sys.stdin.buffer.read()
else:
    buffer = args.data 
counter = Counter(buffer)

probability = {}
length = len(buffer)
for key, value in counter.items():
    probability[key] = value/float(length)

entropy =  -sum(p* math.log(p, 2) for p in probability.values())
if entropy == -0.0:
    entropy = 0

if args.verbose != None:
    print(f"{entropy}:{buffer.decode()}")
else:
    print(entropy)
