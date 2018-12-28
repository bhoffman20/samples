<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xml:id="id_1" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/REST/echoRequest_REQUEST/types" xmlns:ns2="http://xmlns.oracle.com/cloud/generic/rest/fault/REST/echoRequest" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nstrgdfl="http://xmlns.oracle.com/cloud/adapter/REST/echoRequest/types" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns1="http://xmlns.oracle.com/cloud/adapter/REST/echoRequest_REQUEST" exclude-result-prefixes=" xp20 fn oraext xsd xsi oracle-xsl-mapper ora xsl ignore01" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr0="http://xml.oracle.com/types/REST/echoRequest_REQUEST">   <oracle-xsl-mapper:schema xml:id="id_2">      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->      <oracle-xsl-mapper:mapSources xml:id="id_3">         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">            <oracle-xsl-mapper:schema location="../../application_8/outbound_9/resourcegroup_10/echoRequest_REQUEST.wsdl" xml:id="id_5"/>            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/echoRequest_REQUEST/types" xml:id="id_6"/>         </oracle-xsl-mapper:source>      </oracle-xsl-mapper:mapSources>      <oracle-xsl-mapper:mapTargets xml:id="id_7">         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">            <oracle-xsl-mapper:schema location="../../application_8/outbound_9/resourcegroup_10/echoRequest_REQUEST.wsdl" xml:id="id_9"/>            <oracle-xsl-mapper:rootElement name="executeResponse" namespace="http://xmlns.oracle.com/cloud/adapter/REST/echoRequest_REQUEST/types" xml:id="id_10"/>         </oracle-xsl-mapper:target>      </oracle-xsl-mapper:mapTargets>      <!--GENERATED BY ORACLE XSL MAPPER 12.1.2.0.0-->   </oracle-xsl-mapper:schema>   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/" xml:id="id_11">      <nstrgmpr:executeResponse xml:id="id_12">         <nstrgdfl:response-wrapper xml:id="id_16">            <nstrgdfl:Message xml:id="id_17">               <xsl:value-of select="/nstrgmpr:execute/nstrgmpr:TemplateParameters/nsmpr0:message" xml:id="id_18"/>            </nstrgdfl:Message>            <nstrgdfl:Welcome xml:id="id_19">"Welcome to OIC!!!  Echo was successful."</nstrgdfl:Welcome>         </nstrgdfl:response-wrapper>      </nstrgmpr:executeResponse>   </xsl:template>
</xsl:stylesheet>