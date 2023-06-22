#!/bin/bash
echo Borramos la lista de nodos anterior
wwsh -y node delete node*

echo Añadimos los nodos de supercomputación del 6 al 40
wwsh -y node new node05 -D em1 --ipaddr=192.168.10X.25 --hwaddr=D0:94:66:1F:15:6B
wwsh -y node new node06 -D em1 --ipaddr=192.168.10X.26 --hwaddr=D0:94:66:1E:F4:2D
wwsh -y node new node07 -D em1 --ipaddr=192.168.10X.27 --hwaddr=D0:94:66:1F:07:F8
wwsh -y node new node08 -D em1 --ipaddr=192.168.10X.28 --hwaddr=D0:94:66:1F:08:10
wwsh -y node new node09 -D em1 --ipaddr=192.168.10X.29 --hwaddr=D0:94:66:1C:51:84
wwsh -y node new node10 -D em1 --ipaddr=192.168.10X.30 --hwaddr=D0:94:66:1C:59:9F
wwsh -y node new node11 -D em1 --ipaddr=192.168.10X.31 --hwaddr=D0:94:66:1C:5A:95
wwsh -y node new node12 -D em1 --ipaddr=192.168.10X.32 --hwaddr=D0:94:66:1F:1B:7C
wwsh -y node new node13 -D em1 --ipaddr=192.168.10X.33 --hwaddr=D0:94:66:1E:DC:10
wwsh -y node new node14 -D em1 --ipaddr=192.168.10X.34 --hwaddr=D0:94:66:1C:50:72
wwsh -y node new node15 -D em1 --ipaddr=192.168.10X.35 --hwaddr=D0:94:66:1E:D8:7F
wwsh -y node new node16 -D em1 --ipaddr=192.168.10X.36 --hwaddr=D0:94:66:1F:10:D4
wwsh -y node new node17 -D em1 --ipaddr=192.168.10X.37 --hwaddr=D0:94:66:1F:0F:EC
wwsh -y node new node18 -D em1 --ipaddr=192.168.10X.38 --hwaddr=D0:94:66:1E:D9:AB
wwsh -y node new node19 -D em1 --ipaddr=192.168.10X.39 --hwaddr=D0:94:66:1A:75:9C
wwsh -y node new node20 -D em1 --ipaddr=192.168.10X.40 --hwaddr=D0:94:66:1F:07:B0
wwsh -y node new node21 -D em1 --ipaddr=192.168.10X.41 --hwaddr=D0:94:66:1E:DC:70
wwsh -y node new node22 -D em1 --ipaddr=192.168.10X.42 --hwaddr=D0:94:66:1F:14:6C
wwsh -y node new node23 -D em1 --ipaddr=192.168.10X.43 --hwaddr=D0:94:66:1E:DB:98
wwsh -y node new node24 -D em1 --ipaddr=192.168.10X.44 --hwaddr=D0:94:66:1F:18:F1
wwsh -y node new node25 -D em1 --ipaddr=192.168.10X.45 --hwaddr=D0:94:66:1E:DB:50
wwsh -y node new node26 -D em1 --ipaddr=192.168.10X.46 --hwaddr=D0:94:66:1C:62:D3
wwsh -y node new node27 -D em1 --ipaddr=192.168.10X.47 --hwaddr=D0:94:66:1E:DD:7E
wwsh -y node new node28 -D em1 --ipaddr=192.168.10X.48 --hwaddr=D0:94:66:1F:12:7B
wwsh -y node new node29 -D em1 --ipaddr=192.168.10X.49 --hwaddr=D0:94:66:1E:DC:82
wwsh -y node new node30 -D em1 --ipaddr=192.168.10X.50 --hwaddr=D0:94:66:1C:5C:E1
wwsh -y node new node31 -D em1 --ipaddr=192.168.10X.51 --hwaddr=D0:94:66:19:36:DA
wwsh -y node new node32 -D em1 --ipaddr=192.168.10X.52 --hwaddr=D0:94:66:1F:14:00
wwsh -y node new node33 -D em1 --ipaddr=192.168.10X.53 --hwaddr=D0:94:66:19:35:4E
wwsh -y node new node34 -D em1 --ipaddr=192.168.10X.54 --hwaddr=D0:94:66:1C:52:73
wwsh -y node new node35 -D em1 --ipaddr=192.168.10X.55 --hwaddr=D0:94:66:19:52:30
wwsh -y node new node36 -D em1 --ipaddr=192.168.10X.56 --hwaddr=D0:94:66:1F:15:5F
wwsh -y node new node37 -D em1 --ipaddr=192.168.10X.57 --hwaddr=D0:94:66:19:34:70
wwsh -y node new node38 -D em1 --ipaddr=192.168.10X.58 --hwaddr=D0:94:66:1C:6A:36
wwsh -y node new node39 -D em1 --ipaddr=192.168.10X.59 --hwaddr=D0:94:66:18:06:22
wwsh -y node new node40 -D em1 --ipaddr=192.168.10X.60 --hwaddr=D0:94:66:1F:14:06

wwsh -y node set node05 -D ib0 --ipaddr=192.168.11X.25 --netmask=255.255.255.0
wwsh -y node set node06 -D ib0 --ipaddr=192.168.11X.26 --netmask=255.255.255.0
wwsh -y node set node07 -D ib0 --ipaddr=192.168.11X.27 --netmask=255.255.255.0
wwsh -y node set node08 -D ib0 --ipaddr=192.168.11X.28 --netmask=255.255.255.0
wwsh -y node set node09 -D ib0 --ipaddr=192.168.11X.29 --netmask=255.255.255.0
wwsh -y node set node10 -D ib0 --ipaddr=192.168.11X.30 --netmask=255.255.255.0
wwsh -y node set node11 -D ib0 --ipaddr=192.168.11X.31 --netmask=255.255.255.0
wwsh -y node set node12 -D ib0 --ipaddr=192.168.11X.32 --netmask=255.255.255.0
wwsh -y node set node13 -D ib0 --ipaddr=192.168.11X.33 --netmask=255.255.255.0
wwsh -y node set node14 -D ib0 --ipaddr=192.168.11X.34 --netmask=255.255.255.0
wwsh -y node set node15 -D ib0 --ipaddr=192.168.11X.35 --netmask=255.255.255.0
wwsh -y node set node16 -D ib0 --ipaddr=192.168.11X.36 --netmask=255.255.255.0
wwsh -y node set node17 -D ib0 --ipaddr=192.168.11X.37 --netmask=255.255.255.0
wwsh -y node set node18 -D ib0 --ipaddr=192.168.11X.38 --netmask=255.255.255.0
wwsh -y node set node19 -D ib0 --ipaddr=192.168.11X.39 --netmask=255.255.255.0
wwsh -y node set node20 -D ib0 --ipaddr=192.168.11X.40 --netmask=255.255.255.0
wwsh -y node set node21 -D ib0 --ipaddr=192.168.11X.41 --netmask=255.255.255.0
wwsh -y node set node22 -D ib0 --ipaddr=192.168.11X.42 --netmask=255.255.255.0
wwsh -y node set node23 -D ib0 --ipaddr=192.168.11X.43 --netmask=255.255.255.0
wwsh -y node set node24 -D ib0 --ipaddr=192.168.11X.44 --netmask=255.255.255.0
wwsh -y node set node25 -D ib0 --ipaddr=192.168.11X.45 --netmask=255.255.255.0
wwsh -y node set node26 -D ib0 --ipaddr=192.168.11X.46 --netmask=255.255.255.0
wwsh -y node set node27 -D ib0 --ipaddr=192.168.11X.47 --netmask=255.255.255.0
wwsh -y node set node28 -D ib0 --ipaddr=192.168.11X.48 --netmask=255.255.255.0
wwsh -y node set node29 -D ib0 --ipaddr=192.168.11X.49 --netmask=255.255.255.0
wwsh -y node set node30 -D ib0 --ipaddr=192.168.11X.50 --netmask=255.255.255.0
wwsh -y node set node31 -D ib0 --ipaddr=192.168.11X.51 --netmask=255.255.255.0
wwsh -y node set node32 -D ib0 --ipaddr=192.168.11X.52 --netmask=255.255.255.0
wwsh -y node set node33 -D ib0 --ipaddr=192.168.11X.53 --netmask=255.255.255.0
wwsh -y node set node34 -D ib0 --ipaddr=192.168.11X.54 --netmask=255.255.255.0
wwsh -y node set node35 -D ib0 --ipaddr=192.168.11X.55 --netmask=255.255.255.0
wwsh -y node set node36 -D ib0 --ipaddr=192.168.11X.56 --netmask=255.255.255.0
wwsh -y node set node37 -D ib0 --ipaddr=192.168.11X.57 --netmask=255.255.255.0
wwsh -y node set node38 -D ib0 --ipaddr=192.168.11X.58 --netmask=255.255.255.0
wwsh -y node set node39 -D ib0 --ipaddr=192.168.11X.59 --netmask=255.255.255.0
wwsh -y node set node40 -D ib0 --ipaddr=192.168.11X.60 --netmask=255.255.255.0

wwsh -y provision set node[06-42] --vnfs=centos7.5 --bootstrap=`uname -r` --files=dynamic_hosts,passwd,group,shadow,slurm.conf,munge.key,network,ifcfg-ib0

systemctl restart dhcpd
wwsh pxe update
