#!/bin/bash
# installs bio-linux packages from nebc repository
# tested with ubuntu 10.10 server

# add the repository list
echo "deb http://nebc.nox.ac.uk/bio-linux/ unstable bio-linux" | sudo tee /etc/apt/sources.list.d/nebc.nox.ac.uk.bio-linux.sources.list > /dev/null

# update
sudo apt-get update

# install keyring
sudo apt-get install -y --force-yes bio-linux-keyring

# update
sudo apt-get update

# install base directories
sudo apt-get -y install bio-linux-base-directories

# install packages
sudo apt-get -y install bio-linux-paml bio-linux-base-directories bio-linux-phyml bio-linux-dotter bio-linux-mountapp bio-linux-treeview bio-linux-ape bio-linux-blixem bio-linux-fasta bio-linux-oligoarrayaux bio-linux-hmmer bio-linux-fastDNAml bio-linux-tree-puzzle bio-linux-estscan bio-linux-sequin bio-linux-migrate bio-linux-fluctuate bio-linux-recombine bio-linux-coalesce bio-linux-usb-maker bio-linux-nrdb bio-linux-grid bio-linux-grid-certs bio-linux-transterm-hp bio-linux-happy bio-linux-qtlcart bio-linux-cap3 bio-linux-blast+ bio-linux-clcsequenceviewer bio-linux-mothur bio-linux-mummer bio-linux-mrbayes-multi bio-linux-splitstree bio-linux-tetra bio-linux-trnascan bio-linux-arb bio-linux-mspcrunch bio-linux-lucy bio-linux-njplot bio-linux-netblast bio-linux-readseq bio-linux-seaview bio-linux-primer3 bio-linux-glimmer3 bio-linux-assembly-conversion-tools bio-linux-staden bio-linux-wise2 bio-linux-exchanger bio-linux-documentation bio-linux-rasmol bio-linux-ocount bio-linux-peptidemapper bio-linux-phylip bio-linux-dotur bio-linux-prank bio-linux-dust bio-linux-cd-hit bio-linux-mrbayes bio-linux-transterm bio-linux-mira bio-linux-omegamap bio-linux-chimeraslayer bio-linux-cdbfasta bio-linux-rbs-finder bio-linux-mview bio-linux-cytoscape bio-linux-python-cogent bio-linux-themes bio-linux-samtools bio-linux-clustal bio-linux-mesquite bio-linux-handlebar bio-linux-genquery bio-linux-sampledata bio-linux-das-prep bio-linux-dialign bio-linux-xcut bio-linux-backups bio-linux-ncbi-tools-x11 bio-linux-bldp-files bio-linux-big-blast bio-linux-priam bio-linux-blast bio-linux-tutorials bio-linux-jprofilegrid bio-linux-muscle bio-linux-rdp-classifier bio-linux-trace2dbest bio-linux-zsh bio-linux-artemis bio-linux-act bio-linux-mira-3rd-party bio-linux-pfaat bio-linux-pedro bio-linux-squint bio-linux-oligoarray bio-linux-prot4est bio-linux-maxd bio-linux-mcl bio-linux-keyring bio-linux-dendroscope bio-linux-denoiser bio-linux-envbase-for-pedro bio-linux-taxinspector bio-linux-forester bio-linux-partigene bio-linux-taverna bio-linux-jalview bio-linux-t-coffee bio-linux-stars bio-linux-biojava bio-linux-assembly-conversion-tools

# all packages except:
# bio-linux-emboss bio-linux-emboss-kmenus bio-linux-glimmer3 bio-linux-pftools bio-linux-qiime bio-linux-themes-v5 bio-linux-clcworkbench bio-linux-barcodebase bio-linux-fasttree bio-linux-lamarc bio-linux-msatfinder bio-linux-yamap
# see readme.txt for details

