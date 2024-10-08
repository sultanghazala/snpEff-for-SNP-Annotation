# SnpEff-for-Variant-Annotation

SnpEff is a variant annotation and effect prediction tool. It annotates variants based on their genomic locations and predicts coding effects. Annotated genomic locations include intronic, untranslated region, upstream, downstream, splice site, or intergenic regions. Coding effects such as synonymous or non-synonymous amino acid replacement, start codon gains or losses, stop codon gains or losses, or frame shifts can be predicted.

### Key Features:
- <b> Variant Annotation: </b> SnpEff can annotate various types of genetic variants, including SNPs, indels, CNVs, and structural variants.
- <b> Effect Prediction: </b> It predicts the potential impact of variants on gene function, such as coding changes (e.g., missense, nonsense, frameshift), regulatory changes (e.g., splice site, promoter), and non-coding changes (e.g., intergenic, intronic).
- <b> Gene Ontology (GO) and Pathway Enrichment: </b> SNPEff can identify enriched GO terms and pathways associated with annotated variants, providing insights into their biological functions.

## Requirement
Option 1: Linux <br/>
Option 2: Windows - use Virtual box or Ubuntu terminal environment with WSL (Windows Subsystem for Linux) <br/>
Option 3: Galaxy (web-based platform) <br/>

## Data (Input)
- list of SNPs in VCF file
- reference sequence fasta files
- reference annotation file (gtf, gff)

## Steps of Analysis
This analysis is carried out to annotate list of SNPs obtained from GWAS analysis of wheat genome (Chinese spring v1.0) <br/>
<b> Step 1: </b> Download snpEff <br/>
<b> Step 2: </b> Download [RefSeq fasta (genome sequence)](https://urgi.versailles.inra.fr/download/iwgsc/IWGSC_RefSeq_Assemblies/v1.0/iwgsc_refseqv1.0_all_chromosomes.zip), 
[GTF (annotation file)](http://ftp.ensemblgenomes.org/pub/plants/release-52/gtf/triticum_aestivum/Triticum_aestivum.IWGSC.52.gtf.gz), 
<br>
&emsp;&emsp; &nbsp;&nbsp;&nbsp;&nbsp; [CDS (coding sequence)](http://ftp.ensemblgenomes.org/pub/plants/release-52/fasta/triticum_aestivum/cds/Triticum_aestivum.IWGSC.cds.all.fa.gz), 
[Protein fasta (protein sequence)](http://ftp.ensemblgenomes.org/pub/plants/release-52/fasta/triticum_aes) <br/>
&emsp;&emsp; &nbsp;&nbsp;&nbsp;&nbsp; <b> Note: </b> For fasta files, snpEff have protocol to consider fasta files only with extension .fa  not .fasta <br/>
<b> Step 3: </b> Filter VCF file as per chromosome of interest (or process with all chromosomes) <br/>
<b> Step 4: </b> Convert convert gff to gtf. <br/>
<b> Step 5: </b> Concatenate gff file with fasta, so that when program will read gff file, it will get genome sequence there. <br/>
<b> Step 6: </b> Modify snpEff.config (in editor eg. vim) <br/>
&emsp;&emsp;&emsp; Under Non-standard Databases add the following: <br/>
&emsp;&emsp;&emsp;&emsp; # Wheat genome, version IWGSCv1.0 <br/>
&emsp;&emsp;&emsp;&emsp; IWGSCv1.0.genome : Wheat IWGSCv1.0 <br/>
<b> Step 7: </b> Run snpEff <br/>

## Output
<b> 1. VCF file: </b> Annotated VCF file <br/>
<b> 2. HTML file: </b> Summary statistics (for variants and their annotations) <br/>
<b> 3. Text file: </b> Summary of number of variant types per gene <br/>

<br>

## References
[1] https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3679285/ <br/>
[2] https://pcingola.github.io/SnpEff/

<br>

## Developed by:
<b> Ghazala Sultan, Ph.D. </b> 
<br>
<b> Author name: </b> Ghazala Sultan | Google Scholar | ORCID: 0000-0001-8188-9304
