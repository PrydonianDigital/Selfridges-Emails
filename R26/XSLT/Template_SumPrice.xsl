<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="sumPrice">
	<xsl:param name="pList"/>
	<xsl:param name="pAccum" select="0"/>
	<xsl:choose>
		<xsl:when test="$pList">
			<xsl:variable name="vHead" select="$pList[1]"/>
			<xsl:call-template name="sumPrice">
				<xsl:with-param name="pList" select="$pList[position() > 1]"/>
				<xsl:with-param name="pAccum" select="$pAccum + $vHead/UnitPrice * $vHead/Qty"/>
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="format-number($pAccum, '###,###,###,###,###.00')"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="sumPriceNoVAT">
	<xsl:param name="pList"/>
	<xsl:param name="pAccum" select="0"/>
	<xsl:choose>
		<xsl:when test="$pList">
			<xsl:variable name="vHead" select="$pList[1]"/>
			<xsl:call-template name="sumPriceNoVAT">
				<xsl:with-param name="pList" select="$pList[position() > 1]"/>
				<xsl:with-param name="pAccum" select="$pAccum + $vHead/TotalPrice"/>
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="format-number($pAccum, '###,###,###,###,###.00')"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>