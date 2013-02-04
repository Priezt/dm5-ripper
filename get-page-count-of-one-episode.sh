#!/usr/bin/env bash
curl -s $1 | pq-rip.py -s $1 'span#search_fy a' | tail -1

