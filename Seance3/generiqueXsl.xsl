<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" />

  <xsl:template match="*" >
    Feuille "<xsl:value-of select="name(.)"/>" : 
    <xsl:if test="count(@*) > 0">
      Attribut :
      <xsl:apply-templates select="@*"/>
    </xsl:if>
    <br/>
    <xsl:apply-templates select="./*"/>
	</xsl:template>
  
</xsl:stylesheet>