<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Items.xsl"/>

<xsl:template name="completed">

	<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item[Status='d']">

		<xsl:call-template name="item" />

	</xsl:for-each>

</xsl:template>

</xsl:stylesheet>