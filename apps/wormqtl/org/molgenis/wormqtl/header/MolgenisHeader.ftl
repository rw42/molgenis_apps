<#--Date:        November 11, 2009
 * Template:	PluginScreenFTLTemplateGen.ftl.ftl
 * generator:   org.molgenis.generators.ui.PluginScreenFTLTemplateGen 3.3.2-testing
 * 
 * THIS FILE IS A TEMPLATE. PLEASE EDIT :-)
-->
<#macro org_molgenis_wormqtl_header_MolgenisHeader screen>

<div style="height:10px;">&nbsp;</div>

<div id="sample_div" onClick="document.forms.main.__target.value='main';document.forms.main.select.value='QtlFinderPublic';document.forms.main.submit();" style="background-image:url(clusterdemo/bg/baner_wf.png); width: 900px; height: 125px; line-height:7.5em;"></div>

<table style="width: 100%;">
	<tr>
		<td align="right">
			<font style="font-size:14px;">
				<#-->| <a href="api/REST/">JSON api</a> | <a href="api/SOAP/">SOAP api</a> | <a href="api/REST/">REST api</a> | -->
				<a target="_blank" href="http://www.molgenis.org/wiki/xQTL">Help</a> | <a href="generated-doc/fileformat.html">Exchange format</a> | <a href="api/R/">R api</a> | <a href="api/find/">Find api</a> | ${screen.userLogin}
			</font>
		</td>
	</tr>
</table>


<div style="height:10px;">&nbsp;</div>

	
</#macro>