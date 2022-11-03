import sys
import os
import subprocess

from pgpipe import four_gamete, vcf_split_pysam, vcf_to_ima, vcf_filter, vcf_calc, vcf_sampler, vcf_phase, stat_sampler, vcf_split
from pgpipe.logging_module import initLogger
from pgpipe.informative_loci_filter import filter_bed_regions
from pgpipe.subtract_bed import filter_stat
import pysam

print ("Imports complete")

work_dir='/home/tuf29140/work/Harmonia2bRAD/'
data_dir=work_dir
vcf_dir= work_dir+'vcfs/'

main_vcf_name = data_dir+'SNP.final.recode.vcf'
filtered_vcf_name = data_dir+'SNP.final_filtered.vcf'
stat_file_name = work_dir+'fst_regions.bed'
model_file = data_dir+'harmonia.model'

logfile = '/home/tuf29140/work/Harmonia2bRAD/testppp.log'

loci = 200

if not os.path.exists(vcf_dir):
    os.makedirs(vcf_dir)
    os.makedirs(vcf_dir+'four_gamete/')
    os.makedirs(vcf_dir+'Sampled_nonmissing/')
    os.makedirs(vcf_dir+'Phased/')

vcf_filter.run(['--vcf', main_vcf_name, '--model-file',model_file,'--model','3Pop', '--filter-min-alleles', '2', '--filter-max-alleles', '2', '--out-format', 'vcf', '--out', filtered_vcf_name, '--overwrite','--filter-maf-min', '0.05', '--filter-max-missing', '0.25'])

#pysam.tabix_index(filtered_vcf_name,preset='vcf')
print("Filtering complete")

vcf_calc.run(['--vcf', filtered_vcf_name, '--out', stat_file_name+'fst','--calc-statistic', 'weir-fst', '--model', '3Pop', '--model-file', model_file, '--overwrite'])

print("Fst calculation complete")


vcf_calc.run(['--vcf', filtered_vcf_name, '--out', stat_file_name+'sitepi','--calc-statistic', 'site-pi', '--model', '3Pop', '--model-file', model_file, '--overwrite'])

print("Site pi calculation complete")

#ADMIXTURE analyses

from pgpipe import convert, admixture, graph_plotter
convert.run(['--vcf',filtered_vcf_name,'--out-format','binary-ped','--out-prefix',vcf_dir+'harmonia','--overwrite'])

#Convert chromosome names
rc = subprocess.call("./convertchromosomes.sh")

#awk '{$1=0;print $0}' harmonia.bim > harmonia.bim.tmp
#mv harmonia.bim.tmp harmonia.bim

for k in range (1, 10):
	admixture.run(['--binary-ped-prefix',vcf_dir+'harmonia','--pop','%d'%(k)])
	graph_plotter.bar_plot('harmonia.%d.Q'%(k))
print ("Plots created")


