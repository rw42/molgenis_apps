#MOLGENIS walltime=00:45:00

inputs "${filehandleUpdateSexString}"

${plink} --noweb --silent --bfile ${filehandleUpdateSexString} --het --out ${filehandleHeterozygosityString}  