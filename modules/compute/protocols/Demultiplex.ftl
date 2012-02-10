#
# =====================================================
# $Id$
# $URL$
# $LastChangedDate$
# $LastChangedRevision$
# $LastChangedBy$
# =====================================================
#

<#assign runtimelog=runtimelogdemultiplex />
<#include "macros.ftl"/>
<@begin/>
#MOLGENIS walltime=20:00:00 nodes=1 cores=1 mem=10
#FOREACH flowcell, lane

inputs "${leftinputfile}"
inputs "${rightinputfile}"
<#include "helpers.ftl"/>
alloutputsexist ${ssvQuoted(leftbarcodefq)} ${ssvQuoted(rightbarcodefq)}


# create directories to put demultiplexed files in
<#list projectrawdatadir as thisoutputdir>
mkdir -p ${thisoutputdir}
</#list>
mkdir -p ${demultiplexinfodir}

# do the work
${demultiplexscript} \
--bc '${csv(barcode)}' \
--mismatches 1 \
--left  ${leftinputfile} \
--right ${rightinputfile} \
--check \
--out '${csv(outputleftright)}' \
--log ${logfile} \
--discardleft  ${discardleft} \
--discardright ${discardright}
<@end/>