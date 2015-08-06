<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Items.xsl"/>

<xsl:template name="tofollow">

	<xsl:variable name="currentDelivery" select="SFEmailMessages/EmailDataArea/DespatchedDeliveryGroupId" />

	<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item[Status='R']">

		<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0; border-bottom-style: solid; border-bottom-color: #E7E7E7; border-bottom-width: 1px;"><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad twelve sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0; text-align: center;" align="center" valign="top"><h6 class="yourOrder" style="color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: 100; text-align: center; line-height: 21px; word-break: normal; font-size: 18px; letter-spacing: 2px; Margin: 0; padding: 10px;" align="center">Remaining Item(s)</h6></td></tr></table></td></tr>

	</xsl:if>

	<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup[DeliveryGroupId=$currentDelivery]/Items/Item[Status='R']">

		<xsl:call-template name="item" />

	</xsl:for-each>

</xsl:template>

</xsl:stylesheet>