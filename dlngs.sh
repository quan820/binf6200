#!/bin/sh
BASE=https://raw.githubusercontent.com/quan820/binf6200/main
for F in SRR020192.fastq.gz 10_Normal_Chr21.bam 10_Normal_Chr21.bam.bai; do
  echo -n "Downloading $F... "
  rm -f $F
  wget -q -O $F $BASE/$F
  echo "done."
done
touch 10_Normal_Chr21.bam.bai
gunzip -c SRR020192.fastq.gz > SRR020192.fastq
rm -f SRR020192.fastq.gz
