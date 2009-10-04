#!/bin/bash
# Adds Bio-Linux repository and installs packages
# Uses ~1gb of bandwidth
# tested with ami-eb46a782 Ubuntu 9.04 Jaunty desktop 32-bit http://ec2jaunty-desktop.notlong.com/ http://developer.amazonwebservices.com/connect/entry.jspa?categoryID=101&externalID=1950
# Run user-setup to configure users if desired
# There are a few dialogs, select or enter yes for all of them
# written by Michael Chelen http://mikechelen.com
# license: Creative Commons Public Domain Zero
# references:
# http://nebc.nox.ac.uk/tools/bio-linux/other-bl-docs/package-repository#Location 
# http://nebc.nox.ac.uk/tools/bio-linux/package-list
# https://help.ubuntu.com/community/Repositories/CommandLine#Enabling%20Repositories%20with%20a%20%28non-interactive%29%20Script

# add the repository http://nebc.nox.ac.uk/bio-linux/ debian unstable repository
echo 'deb http://nebc.nox.ac.uk/bio-linux/ unstable bio-linux' >> /etc/apt/sources.list.d/nebc.nox.ac.uk.bio-linux.sources.list

#install the keyring 
apt-get install -y --force-yes bio-linux-keyring

# update and upgrade current system
apt-get update && apt-get upgrade -y

# install all the bio-linux packages except "bio-linux-glimmer3" "bio-linux-themes" "bio-linux-genquery" and "bio-linux-handlebar"
apt-get -y install bio-linux-dotter bio-linux-priam bio-linux-dendroscope bio-linux-rbs-finder bio-linux-mira-3rd-party bio-linux-blast+ bio-linux-muscle bio-linux-mira bio-linux-mspcrunch bio-linux-squint bio-linux-prot4est bio-linux-artemis bio-linux-lamarc bio-linux-taverna bio-linux-tetra bio-linux-tree-puzzle bio-linux-base-directories bio-linux-fasta bio-linux-transterm bio-linux-fluctuate bio-linux-blast+ bio-linux-trace2dbest bio-linux-njplot bio-linux-envbase-for-pedro bio-linux-ape bio-linux-primer3 bio-linux-das-prep bio-linux-happy bio-linux-treeview bio-linux-sequin bio-linux-mrbayes bio-linux-dust bio-linux-msatfinder bio-linux-themes-v5 bio-linux-big-blast bio-linux-assembly-conversion-tools bio-linux-sampledata bio-linux-phyml bio-linux-gsrint bio-linux-emboss bio-linux-mview bio-linux-usb-maker bio-linux-grid-certs bio-linux-omegamap bio-linux-oligoarrayaux bio-linux-lucy bio-linux-paml bio-linux-keyring bio-linux-bldp-files bio-linux-estscan bio-linux-jalview bio-linux-recombine bio-linux-seaview bio-linux-netblast bio-linux-taxinspector bio-linux-emboss-kmenus bio-linux-pftools bio-linux-arb bio-linux-ocount bio-linux-transterm-hp bio-linux-mummer bio-linux-act bio-linux-glimmer bio-linux-hmmer bio-linux-fastDNAml bio-linux-cd-hit bio-linux-migrate bio-linux-readseq bio-linux-qtlcart bio-linux-pedro bio-linux-mesquite bio-linux-mrbayes-multi bio-linux-biojava bio-linux-blast bio-linux-coalesce bio-linux-exchanger bio-linux-t-coffee bio-linux-maxd bio-linux-staden bio-linux-yamap bio-linux-splitstree bio-linux-wise2 bio-linux-prank bio-linux-rasmol bio-linux-grid bio-linux-peptidemapper bio-linux-mountapp bio-linux-mcl bio-linux-eclipse bio-linux-nrdb bio-linux-stars bio-linux-blixem bio-linux-oligoarray bio-linux-backups bio-linux-documentation bio-linux-forester bio-linux-dotur bio-linux-pfaat bio-linux-trnascan bio-linux-cap3 bio-linux-clustal bio-linux-partigene bio-linux-clcworkbench bio-linux-phylip

# refresh menus in case
# disabled due to error "-bash: update-menus: command not found"
# update-menus

# user accounts are optional
echo "Run user-setup to create user accounts"
