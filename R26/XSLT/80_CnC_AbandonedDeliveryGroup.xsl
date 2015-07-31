<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Items.xsl"/>
<xsl:import href="Template_Items.xsl"/>
<xsl:import href="Template_Currency.xsl"/>
<xsl:import href="Template_FormatDate.xsl"/>
<xsl:import href="Template_ThisDelivery.xsl"/>
<xsl:import href="Template_OrderTotals.xsl"/>
<xsl:import href="Template_AbandonedDeliveryGroupId.xsl"/>

<xsl:template match="/">

<html><body>

	<table><tr><td>

		<xsl:call-template name="AbandonedDeliveryGroupId"/>

		<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

			<!-- show this delivery -->
			<xsl:call-template name="thisdelivery" />
			<!-- end show this delivery -->

		</table>

		<!-- show despatched subtotal -->
		<xsl:call-template name="orderTotals" />
		<!-- end show despatched subtotal -->

		<table class="row itemDetails" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; position: relative; display: block; line-height: 20px; padding: 0px 0px 0px;">

		</table>

	</td></tr></table>

</body></html>

</xsl:template>


</xsl:stylesheet>