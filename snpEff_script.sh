# Genome
# IWGSCv1.0- International Wheat Genome Sequencing Consortium

# Execution Platform
# Working - Ubuntu 20.04 LST [Windows Subsystem for Linux]

# Locate LST files in the Windows 
# C:\Users\GhazalaSultan\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu20.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\ghazalas\snpEff_latest_core\

#=============================#
# Input files & folders order
#=============================#
# Folder: snpEff_latest_core/snpEff/data/
# File: 1. snpeff.config (modified by adding genome of interest)
#		2. input_snp.vcf
# 
# Folder: snpEff_latest_core/snpEff/data/genomes/
# File: 1. IWGSCv1.0.fa
#		2. input_snp.vcf
# 	  
# Folder: snpEff_latest_core/snpEff/data/genomes/IWGSv1.0/
# File: 1. sequence.fa 
#		2. genes.gtf/gff
#		3. cds.fa
#		4. protein.fa				    					
										
#===========================#
# SnpEff Script [Complete]
#===========================#
su - root 
cd /home/ghazalas/

#download snpEff
wget https://snpeff.blob.core.windows.net/versions/snpEff_latest_core.zip
gunzip snpEff_latest_core.zip

#move to snpEff directory
cd /home/ghazalas/snpEff_latest_core/snpEff/

#edit snpEff.config file in vi editor by adding IWGSCv1.0 genome name(if it is not already available in snpEff.config)
vi snpEff.config
#search for Non-standard Databases, add following 2 lines of info below the hyphen line
    # Wheat genome, version IWGSCv1.0
    # IWGSCv1.0.genome : Wheat IWGSCv1.0
	
# download refernce genome fasta file
wget https://urgi.versailles.inra.fr/download/iwgsc/IWGSC_RefSeq_Assemblies/v1.0/iwgsc_refseqv1.0_all_chromosomes.zip

#build database for IWGSCv1.0 (after modifying snpEff.config file)
java -Xmx8g -jar snpEff.jar build -gtf22 -v IWGSCv1.0

#vcf annotation (it will use snpEffectPredictor.bin file from IWGSv1.0 folder)
java -Xmx8g -jar snpEff.jar -v IWGSCv1.0 input_snp.vcf > output/annotated_snp.vcf

#==============================#
# Output files & folders order
#==============================#
# Folder: snpEff_latest_core/snpEff/output/
# File: 1. annotated_snp.vcf
#		2. snpEff_genes.txt
#		3. snpEff_summary.html
