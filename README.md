# snpEff-for-SNP-Annotation

SNPEff is a variant annotation and effect prediction tool. It annotates variants based on their genomic locations and predicts coding effects. Annotated genomic locations include intronic, untranslated region, upstream, downstream, splice site, or intergenic regions. Coding effects such as synonymous or non-synonymous amino acid replacement, start codon gains or losses, stop codon gains or losses, or frame shifts can be predicted.

### Key Features:
- Variant Annotation: SNPEff can annotate various types of genetic variants, including SNPs, indels, CNVs, and structural variants.
- Effect Prediction: It predicts the potential impact of variants on gene function, such as coding changes (e.g., missense, nonsense, frameshift), regulatory changes (e.g., splice site, promoter), and non-coding changes (e.g., intergenic, intronic).
- Gene Ontology (GO) and Pathway Enrichment: SNPEff can identify enriched GO terms and pathways associated with annotated variants, providing insights into their biological functions.

## Requirement
Option 1: linux OS <br/>
Option 2: Windows OS - use cygwin terminal or virtual box to execute linux commands <br/>
Option 3: Galaxy (web-based platform) <br/>

## Data Used for this analysis
- list of SNPs for wheat genome to annotate
- VCF file from GWAS analysis
- Reference sequence for wheat: Chinese spring v1.0

## Steps of Analysis
Step 1: Download snpEff <br/>
Step 2: Download reference genome, gtf, cds, protein.fa <br/>
Genome fasta - https://urgi.versailles.inra.fr/download/iwgsc/IWGSC_RefSeq_Assemblies/v1.0/iwgsc_refseqv1.0_all_chromosomes.zip <br/>
GTF - http://ftp.ensemblgenomes.org/pub/plants/release-52/gtf/triticum_aestivum/Triticum_aestivum.IWGSC.52.gtf.gz <br/>
CDS - http://ftp.ensemblgenomes.org/pub/plants/release-52/fasta/triticum_aestivum/cds/Triticum_aestivum.IWGSC.cds.all.fa.gz <br/>
Protein/pep - http://ftp.ensemblgenomes.org/pub/plants/release-52/fasta/triticum_aes <br/>
Note: For fasta files, snpEff have protocol to consider fasta files only with extension .fa  not .fasta <br/>
Step 3: Filter VCF file as per chromosome of interest (or process with all chromosomes) <br/>
Step 4: Convert convert gff to gtf. <br/>
Step 5: Concatenate gff file with fasta, so that when program will read gff file, it will get genome sequence there. <br/>
Step 6: Modify snpEff.config (in editor eg. vim) <br/>
</t>    Under Non-standard Databases add the following: <br/>
</t>    # Wheat genome, version IWGSCv1.0 <br/>
</t>    IWGSCv1.0.genome : Wheat IWGSCv1.0 <br/>
Step 7: Run snpEff <br/>

### Output
1. VCF file: Annotated VCF file
2. HTML file: Summary statistics (for variants and their annotations)
3. Text file: Summary of number of variant types per gene

## References
[1] https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3679285/ <br/>
[2] https://pcingola.github.io/SnpEff/
