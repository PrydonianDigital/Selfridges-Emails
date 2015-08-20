<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="formatdate">
	<xsl:param name="datestr" />
    <xsl:variable name="yyyy">
       <xsl:value-of select="substring($datestr,1,4)" />
    </xsl:variable>
	<xsl:variable name="mm">
		<xsl:value-of select="substring($datestr,5,2)" />
	</xsl:variable>
    <xsl:variable name="dd">
       <xsl:value-of select="substring($datestr,7,2)" />
    </xsl:variable>
	<xsl:choose>
		<xsl:when test="$dd = 01">1</xsl:when>
		<xsl:when test="$dd = 02">2</xsl:when>
		<xsl:when test="$dd = 03">3</xsl:when>
		<xsl:when test="$dd = 04">4</xsl:when>
		<xsl:when test="$dd = 05">5</xsl:when>
		<xsl:when test="$dd = 06">6</xsl:when>
		<xsl:when test="$dd = 07">7</xsl:when>
		<xsl:when test="$dd = 08">8</xsl:when>
		<xsl:when test="$dd = 09">9</xsl:when>
		<xsl:when test="$dd = 10">10</xsl:when>
		<xsl:when test="$dd = 11">11</xsl:when>
		<xsl:when test="$dd = 12">12</xsl:when>
		<xsl:when test="$dd = 13">13</xsl:when>
		<xsl:when test="$dd = 14">14</xsl:when>
		<xsl:when test="$dd = 15">15</xsl:when>
		<xsl:when test="$dd = 16">16</xsl:when>
		<xsl:when test="$dd = 17">17</xsl:when>
		<xsl:when test="$dd = 18">18</xsl:when>
		<xsl:when test="$dd = 19">19</xsl:when>
		<xsl:when test="$dd = 20">20</xsl:when>
		<xsl:when test="$dd = 21">21</xsl:when>
		<xsl:when test="$dd = 22">22</xsl:when>
		<xsl:when test="$dd = 23">23</xsl:when>
		<xsl:when test="$dd = 24">24</xsl:when>
		<xsl:when test="$dd = 25">25</xsl:when>
		<xsl:when test="$dd = 26">26</xsl:when>
		<xsl:when test="$dd = 27">27</xsl:when>
		<xsl:when test="$dd = 28">28</xsl:when>
		<xsl:when test="$dd = 29">29</xsl:when>
		<xsl:when test="$dd = 30">30</xsl:when>
		<xsl:when test="$dd = 31">31</xsl:when>
		<xsl:when test="$dd = 32">32</xsl:when>
	</xsl:choose>
    <xsl:value-of select="' '" />
	<xsl:choose>
		<xsl:when test="$mm = 01">January</xsl:when>
		<xsl:when test="$mm = 02">February</xsl:when>
		<xsl:when test="$mm = 03">March</xsl:when>
		<xsl:when test="$mm = 04">April</xsl:when>
		<xsl:when test="$mm = 05">May</xsl:when>
		<xsl:when test="$mm = 06">June</xsl:when>
		<xsl:when test="$mm = 07">July</xsl:when>
		<xsl:when test="$mm = 08">August</xsl:when>
		<xsl:when test="$mm = 09">September</xsl:when>
		<xsl:when test="$mm = 10">October</xsl:when>
		<xsl:when test="$mm = 11">November</xsl:when>
		<xsl:when test="$mm = 12">December</xsl:when>
	</xsl:choose>
	<!--xsl:value-of select="', '" />
	<xsl:value-of select="$yyyy" /-->
</xsl:template>

</xsl:stylesheet>