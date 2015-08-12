<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Currency.xsl"/>
<xsl:import href="Template_SumPrice.xsl"/>

<xsl:template name="orderTotals">

	<table class="block-grid two-up orderTotals" style="border-spacing: 0; border-collapse: collapse; width: 100%; vertical-align: top; text-align: left; max-width: 600px; padding: 0; border-top-width:1px; border-top-style:solid;border-top-color: #e7e7e7;">

		<xsl:for-each select="SFEmailMessages/EmailDataArea/PaymentMethods/PaymentMethod">

			<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
				<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
					Payment method
				</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
					<xsl:if test="TenderType !=''"><span><xsl:value-of select="TenderType"/> </span></xsl:if>
					<xsl:choose>
						<xsl:when test="Last4Digits !=''">
							<span> (<xsl:value-of select="Last4Digits"/>) </span>
						</xsl:when>
						<xsl:otherwise>
							<span>&#xA0;<xsl:call-template name="currency"/><xsl:value-of select="Value"/> </span>
						</xsl:otherwise>
					</xsl:choose>
				</td>
			</tr>

			</xsl:for-each>

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Subtotal
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:call-template name="currency"/>
			<xsl:if test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item">
			<xsl:choose>
				<!-- WONDER ROOM -->
				<xsl:when test="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/hasWonderRoomItems='True'">
					<xsl:call-template name="sumPrice">
						<xsl:with-param name="pList" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item[WonderRoomItem='True']"/>
					</xsl:call-template>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="sumPrice">
						<xsl:with-param name="pList" select="SFEmailMessages/EmailDataArea/Order/OrderDeliveryGroups/OrderDeliveryGroup/Items/Item[WonderRoomItem='false']"/>
					</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>
			</xsl:if>
			<xsl:if test="(SFEmailMessages/emailHeader/emailType='RETURN_RECEIVED') or (SFEmailMessages/emailHeader/emailType='INSTORE_REFUND') or (SFEmailMessages/emailHeader/emailType='RETURN_REFUNDED') or (SFEmailMessages/emailHeader/emailType='GOODWILL_REFUND')">
				<xsl:value-of select="format-number(sum(SFEmailMessages/EmailDataArea/PaymentMethods/PaymentMethod/Value), '###,###,###.00')"/>
			</xsl:if>
		</td>
	</tr>

	<!-- RETURN REFUND -->

	<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/GiftboxRefundValue !='0.00'">
	<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/GiftboxRefundValue !=''">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Gift Box
	</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

	<xsl:call-template name="currency" /><xsl:value-of select="format-number(SFEmailMessages/EmailDataArea/ReturnDetails/GiftboxRefundValue,'###,###,###.00')"/>

	</td></tr>
	</xsl:if>
	</xsl:if>

	<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ShippingRefundValue !='0.00'">
	<xsl:if test="SFEmailMessages/EmailDataArea/ReturnDetails/ShippingRefundValue !=''">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Delivery
	</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

	<xsl:call-template name="currency" /><xsl:value-of select="format-number(SFEmailMessages/EmailDataArea/ReturnDetails/ShippingRefundValue,'###,###,###.00')"/>

	</td></tr>
	</xsl:if>
	</xsl:if>

	<!-- end RETURN REFUND -->

	<!-- GOODWILL -->

	<xsl:if test="SFEmailMessages/EmailDataArea/RefundDetails/giftingRefundValue !='0.00'">
	<xsl:if test="SFEmailMessages/EmailDataArea/RefundDetails/giftingRefundValue !=''">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Gift Box
	</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

	<xsl:call-template name="currency" /><xsl:value-of select="format-number(SFEmailMessages/EmailDataArea/RefundDetails/giftingRefundValue,'###,###,###.00')"/>

	</td></tr>
	</xsl:if>
	</xsl:if>

	<xsl:if test="SFEmailMessages/EmailDataArea/RefundDetails/ShippingRefundValue !='0.00'">
	<xsl:if test="SFEmailMessages/EmailDataArea/RefundDetails/ShippingRefundValue !=''">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Delivery
	</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">

	<xsl:call-template name="currency" /><xsl:value-of select="format-number(SFEmailMessages/EmailDataArea/RefundDetails/ShippingRefundValue,'###,###,###.00')"/>

	</td></tr>
	</xsl:if>
	</xsl:if>

	<!-- end GOODWILL -->

	<xsl:for-each select="SFEmailMessages/EmailDataArea/Order/OrderHeader">

	<xsl:if test="OrderDiscount !='0.00'">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Discount
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:if test="OrderDiscount !=''"><xsl:variable name="OD" select="OrderDiscount"/><span>-<xsl:call-template name="currency"/><xsl:apply-templates select="currency" /><xsl:value-of select="translate($OD, '-', '')"/></span></xsl:if>
		</td>
	</tr>

	</xsl:if>

	<xsl:if test="StaffDiscount !='0.00'">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Staff Discount
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:if test="StaffDiscount !=''"><xsl:variable name="SD" select="StaffDiscount"/><span>-<xsl:call-template name="currency"/><xsl:apply-templates select="currency" /><xsl:value-of select="translate($SD, '-', '')"/></span></xsl:if>
		</td>
	</tr>

	</xsl:if>

	<xsl:if test="OrderTax !='0.00'">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Tax
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:if test="OrderTax !=''"><span><xsl:call-template name="currency"/><xsl:value-of select="OrderTax"/></span> </xsl:if>
		</td>
	</tr>

	</xsl:if>

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Delivery
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
			<xsl:if test="ShippingPrice !=''"><span><xsl:call-template name="currency"/><xsl:value-of select="ShippingPrice"/></span> </xsl:if>
		</td>
	</tr>

	<xsl:if test="DeductedVAT !='0.00'">
	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="left" valign="top">
			Deducted VAT
		</td><td class="textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px;" align="right" valign="top">
		<xsl:if test="DeductedVAT !=''"><xsl:variable name="DV" select="DeductedVAT"/><span>-<xsl:call-template name="currency"/><xsl:apply-templates select="currency" /><xsl:value-of select="translate($DV, '-', '')"/></span></xsl:if>
		</td>
	</tr>

	</xsl:if>

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
		<td class="total" style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="left" valign="top">
			<strong style="font-weight: bold;">Total</strong>
		</td><td class="textright total" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="right" valign="top">
		<xsl:if test="OrderPrice !=''"><span><xsl:call-template name="currency"/><xsl:value-of select="OrderPrice"/></span> </xsl:if>
		</td>
	</tr>

	</xsl:for-each>

	<xsl:if test="(SFEmailMessages/emailHeader/emailType='RETURN_RECEIVED') or (SFEmailMessages/emailHeader/emailType='INSTORE_REFUND') or (SFEmailMessages/emailHeader/emailType='RETURN_REFUNDED') or (SFEmailMessages/emailHeader/emailType='GOODWILL_REFUND')">
		<tr style="vertical-align: top; text-align: left; padding: 0;" align="left">
			<td class="total" style="border-collapse: collapse !important; vertical-align: top; text-align: left; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: bold; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="left" valign="top">
				<strong style="font-weight: bold;">Refunded Total</strong>
			</td><td class="textright total" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; display: inline-block; width: 270px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 18px; Margin: 0; padding: 10px;" align="right" valign="top">
				<xsl:call-template name="currency"/><xsl:value-of select="format-number(sum(SFEmailMessages/EmailDataArea/PaymentMethods/PaymentMethod/Value), '###,###,###.00')"/>
			</td>
		</tr>
	</xsl:if>

	</table>

</xsl:template>

</xsl:stylesheet>