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
		<xsl:when test="$dd = 01">1st</xsl:when>
		<xsl:when test="$dd = 02">2nd</xsl:when>
		<xsl:when test="$dd = 03">3rd</xsl:when>
		<xsl:when test="$dd = 04">4th</xsl:when>
		<xsl:when test="$dd = 05">5th</xsl:when>
		<xsl:when test="$dd = 06">6th</xsl:when>
		<xsl:when test="$dd = 07">7th</xsl:when>
		<xsl:when test="$dd = 08">8th</xsl:when>
		<xsl:when test="$dd = 09">9th</xsl:when>
		<xsl:when test="$dd = 10">10th</xsl:when>
		<xsl:when test="$dd = 11">11th</xsl:when>
		<xsl:when test="$dd = 12">12th</xsl:when>
		<xsl:when test="$dd = 13">13th</xsl:when>
		<xsl:when test="$dd = 14">14th</xsl:when>
		<xsl:when test="$dd = 15">15th</xsl:when>
		<xsl:when test="$dd = 16">16th</xsl:when>
		<xsl:when test="$dd = 17">17th</xsl:when>
		<xsl:when test="$dd = 18">18th</xsl:when>
		<xsl:when test="$dd = 19">19th</xsl:when>
		<xsl:when test="$dd = 20">20th</xsl:when>
		<xsl:when test="$dd = 21">21st</xsl:when>
		<xsl:when test="$dd = 22">22nd</xsl:when>
		<xsl:when test="$dd = 23">23rd</xsl:when>
		<xsl:when test="$dd = 24">24th</xsl:when>
		<xsl:when test="$dd = 25">25th</xsl:when>
		<xsl:when test="$dd = 26">26th</xsl:when>
		<xsl:when test="$dd = 27">27th</xsl:when>
		<xsl:when test="$dd = 28">28th</xsl:when>
		<xsl:when test="$dd = 29">29th</xsl:when>
		<xsl:when test="$dd = 30">30th</xsl:when>
		<xsl:when test="$dd = 31">31st</xsl:when>
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