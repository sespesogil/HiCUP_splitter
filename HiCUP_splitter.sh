
#!/bin/bash


filtered=$1
name=$2

awk -F"\t" '($1 ~ /^@/) || ($20 == "CT:Z:CLOSE") { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"\t"$12"\t"$13"\t"$14"\t"$15"\t"$16"\t"$17"\t"$18"\t"$19"\t"$20}' $filtered > $name.cis_close.sam


awk -F"\t" '($1 ~ /^@/) || ($20 == "CT:Z:TRANS") { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"\t"$12"\t"$13"\t"$14"\t"$15"\t"$16"\t"$17"\t"$18"\t"$19"\t"$20}' $filtered > $name.trans_close.sam


awk -F"\t" '($1 ~ /^@/) || ($20 == "CT:Z:FAR") { print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"\t"$12"\t"$13"\t"$14"\t"$15"\t"$16"\t"$17"\t"$18"\t"$19"\t"$20}' $filtered > $name.cis_far.sam
