<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="Template_Currency.xsl"/>

<xsl:template name="item">

	<xsl:variable name="special" select="àáâãäåæçèéêëìíîïðñòóôõöùúûüýÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞß" />

	<xsl:variable name="translated" select="&#xE0;&#xE1;&#xE2;&#xE3;&#xE4;&#xE5;&#xE6;&#xE7;&#xE8;&#xE9;&#xEA;&#xEB;&#xEC;&#xED;&#xEE;&#xEF;&#xF0;&#xF1;&#xF2;&#xF3;&#xF4;&#xF5;&#xF6;&#xF9;&#xFA;&#xFB;&#xFC;&#xFD;&#xC0;&#xC1;&#xC2;&#xC3;&#xC4;&#xC5;&#xC6;&#xC7;&#xC8;&#xC9;&#xCA;&#xCB;&#xCC;&#xCD;&#xCE;&#xCF;&#xD0;&#xD1;&#xD2;&#xD3;&#xD4;&#xD5;&#xD6;&#xD8;&#xD9;&#xDA;&#xDB;&#xDC;&#xDD;&#xDE;&#xDF;" />

	<xsl:choose>

		<xsl:when test="position() != last()">

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0; border-bottom-style: solid; border-bottom-color: #E7E7E7; border-bottom-width: 1px; "><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: center; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="center" valign="top">
			<xsl:if test="thumbnail !=''"><img src="{thumbnail}&amp;$PDP_ALSOLIKE_x10$" style="outline: none; text-decoration: none; image-rendering: auto; -ms-interpolation-mode: nearest-neighbor; width: auto; max-width: 100%; float: none; clear: both; display: inline-block; Margin: 20px auto;" align="none" /></xsl:if>
			<xsl:if test="Thumbnail !=''"><img src="{Thumbnail}&amp;$PDP_ALSOLIKE_x10$" style="outline: none; text-decoration: none; image-rendering: auto; -ms-interpolation-mode: nearest-neighbor; width: auto; max-width: 100%; float: none; clear: both; display: inline-block; Margin: 20px auto;" align="none" /></xsl:if>
	</td><td class="text-pad five sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 41.666666%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">
		<xsl:if test="Brand !=''"><strong><xsl:value-of select="translate(Brand, $special, $translated)"/></strong><br /></xsl:if>
		<xsl:if test="Description !=''"><span><xsl:value-of select="translate(Description, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SkuCode !=''"><small style="font-size: 12px; color: #898989; line-height: 13px;">Product code: <xsl:value-of select="SkuCode"/></small><br /></xsl:if><br />
		<span style="font-size: 12px; line-height: 18px;">
			<xsl:if test="Colour !=''">Colour: <span> <xsl:value-of select="translate(Colour, $special, $translated)"/></span><br /> </xsl:if>
			<xsl:if test="Size !=''">Size: <span> <xsl:value-of select="translate(Size, $special, $translated)"/></span><br /></xsl:if>
			<xsl:if test="Qty !=''">Quantity: <span> <xsl:value-of select="format-number(Qty, '###')"/><br /></span></xsl:if> <xsl:if test="ItemRefundValue !=''"><span> x <xsl:call-template name="currency"/><xsl:value-of select="format-number(ItemRefundValue, '###,###,###,###,###.00')"/></span><br /></xsl:if>
			<xsl:if test="giftMessage !=''">Gift Message: <span> "</span><em><xsl:value-of select="translate(giftMessage, $special, $translated)"/></em><span>"</span><br /></xsl:if>
			<xsl:if test="Personalization/Text !=''"><strong style="font-weight: bold">Your Personalisation <br /></strong></xsl:if>

			<xsl:if test="Personalization/Text !=''">Text: <span> "</span><strong><xsl:value-of select="translate(Personalization/Text, $special, $translated)"/></strong><span>"</span><br /></xsl:if>
			<xsl:if test="Personalization/Font !=''">Font style: <span> "</span><strong><xsl:value-of select="translate(Personalization/Font, $special, $translated)"/></strong><span>"</span><br /></xsl:if>
			<xsl:if test="Personalization/Colour !=''">Font colour: <span> "</span><strong><xsl:value-of select="translate(Personalization/Colour, $special, $translated)"/></strong><span>"</span><br /></xsl:if>
		</span>
	</td><td class="text-pad four sub-columns last textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; min-width: 0px; width: 33.333333%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 0 10px;" align="right" valign="top">
		<xsl:choose>
			<xsl:when test="Discount ='0.00'">
				<xsl:if test="UnitPrice !=''"><strong><xsl:call-template name="currency"/><xsl:value-of select="format-number(Qty * TotalPrice, '###,###,###,###,###.00')"/></strong></xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<xsl:if test="UnitPrice !=''"><strong><del style="text-decoration: line-through;"><xsl:call-template name="currency"/><xsl:value-of select="format-number(Qty * TotalPrice, '###,###,###,###,###.00')"/><br /></del></strong></xsl:if>
				<xsl:if test="UnitPrice !=''"><strong><xsl:call-template name="currency"/><xsl:value-of select="format-number(Qty * (TotalPrice + Discount), '###,###,###,###,###.00')"/></strong></xsl:if>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if test="ItemRefundValue!=''"><xsl:call-template name="currency"/><xsl:value-of select="format-number(ItemRefundValue, '###,###,###,###,###.00')"/></xsl:if>
	</td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td></tr>
	<xsl:if test="Tax !='0.00'">
	<tr>
		<td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: center; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top"></td>
		<td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">
			<xsl:if test="Tax !='0.00'"><strong>Taxes, duties &amp; charges: </strong></xsl:if></td>
			<td class="text-pad four sub-columns last textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; min-width: 0px; width: 33.333333%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 0 10px;" align="right" valign="top">
				<xsl:if test="Tax !='0.00'"><strong><xsl:call-template name="currency"/><xsl:value-of select="format-number(Tax, '###,###,###,###,###.00')"/></strong><br /></xsl:if>
			</td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
		</tr>
	</xsl:if>
	</table></td></tr>

		</xsl:when>

		<xsl:otherwise>

	<tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="wrapper last" style="border-collapse: collapse !important; vertical-align: top; text-align: left; position: relative; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 10px 0px 0px;" align="left" valign="top"><table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; width: 580px; vertical-align: top; text-align: left; Margin: 0 auto; padding: 0;"><tr style="vertical-align: top; text-align: left; padding: 0;" align="left"><td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: center; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="center" valign="top">
			<xsl:if test="thumbnail !=''"><img src="{thumbnail}&amp;$PDP_ALSOLIKE_x10$" style="outline: none; text-decoration: none; image-rendering: auto; -ms-interpolation-mode: nearest-neighbor; width: auto; max-width: 100%; float: none; clear: both; display: inline-block; Margin: 20px auto;" align="none" /></xsl:if>
			<xsl:if test="Thumbnail !=''"><img src="{Thumbnail}&amp;$PDP_ALSOLIKE_x10$" style="outline: none; text-decoration: none; image-rendering: auto; -ms-interpolation-mode: nearest-neighbor; width: auto; max-width: 100%; float: none; clear: both; display: inline-block; Margin: 20px auto;" align="none" /></xsl:if>
	</td><td class="text-pad five sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 41.666666%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">
		<xsl:if test="Brand !=''"><strong><xsl:value-of select="translate(Brand, $special, $translated)"/></strong><br /></xsl:if>
		<xsl:if test="Description !=''"><span><xsl:value-of select="translate(Description, $special, $translated)"/></span><br /></xsl:if>
		<xsl:if test="SkuCode !=''"><small style="font-size: 12px; color: #898989; line-height: 13px;">Product code: <xsl:value-of select="SkuCode"/></small><br /></xsl:if><br />
		<span style="font-size: 12px; line-height: 18px;">
			<xsl:if test="Colour !=''">Colour: <span> <xsl:value-of select="translate(Colour, $special, $translated)"/></span><br /> </xsl:if>
			<xsl:if test="Size !=''">Size: <span> <xsl:value-of select="translate(Size, $special, $translated)"/></span><br /></xsl:if>
			<xsl:if test="Qty !=''">Quantity: <span> <xsl:value-of select="format-number(Qty, '###')"/><br /></span></xsl:if> <xsl:if test="ItemRefundValue !=''"><span> x <xsl:call-template name="currency"/><xsl:value-of select="format-number(ItemRefundValue, '###,###,###,###,###.00')"/></span><br /></xsl:if>
			<xsl:if test="giftMessage !=''">Gift Message: <span> "</span><em><xsl:value-of select="translate(giftMessage, $special, $translated)"/></em><span>"</span><br /></xsl:if>
			<xsl:if test="Personalization/Text !=''"><strong style="font-weight: bold">Your Personalisation <br /></strong></xsl:if>

			<xsl:if test="Personalization/Text !=''">Text: <span> "</span><strong><xsl:value-of select="translate(Personalization/Text, $special, $translated)"/></strong><span>"</span><br /></xsl:if>
			<xsl:if test="Personalization/Font !=''">Font style: <span> "</span><strong><xsl:value-of select="translate(Personalization/Font, $special, $translated)"/></strong><span>"</span><br /></xsl:if>
			<xsl:if test="Personalization/Colour !=''">Font colour: <span> "</span><strong><xsl:value-of select="translate(Personalization/Colour, $special, $translated)"/></strong><span>"</span><br /></xsl:if>
		</span>
	</td><td class="text-pad four sub-columns last textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; min-width: 0px; width: 33.333333%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 0 10px;" align="right" valign="top">
		<xsl:choose>
			<xsl:when test="Discount ='0.00'">
				<xsl:if test="UnitPrice !=''"><strong><xsl:call-template name="currency"/><xsl:value-of select="format-number(Qty * TotalPrice, '###,###,###,###,###.00')"/></strong></xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<xsl:if test="UnitPrice !=''"><strong><del style="text-decoration: line-through;"><xsl:call-template name="currency"/><xsl:value-of select="format-number(Qty * TotalPrice, '###,###,###,###,###.00')"/><br /></del></strong></xsl:if>
				<xsl:if test="UnitPrice !=''"><strong><xsl:call-template name="currency"/><xsl:value-of select="format-number(Qty * (TotalPrice + Discount), '###,###,###,###,###.00')"/></strong></xsl:if>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if test="ItemRefundValue!=''"><xsl:call-template name="currency"/><xsl:value-of select="format-number(ItemRefundValue, '###,###,###,###,###.00')"/></xsl:if>
	</td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td></tr>
	<xsl:if test="Tax !='0.00'">
	<tr>
		<td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: center; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top"></td>
		<td class="text-pad three sub-columns" style="border-collapse: collapse !important; vertical-align: top; text-align: left; min-width: 0px; width: 25%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0px 10px 10px;" align="left" valign="top">
			<xsl:if test="Tax !='0.00'"><strong>Taxes, duties &amp; charges: </strong></xsl:if></td>
			<td class="text-pad four sub-columns last textright" style="border-collapse: collapse !important; vertical-align: top; text-align: right; font-weight: bold; min-width: 0px; width: 33.333333%; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; line-height: 21px; font-size: 14px; Margin: 0; padding: 0 10px;" align="right" valign="top">
				<xsl:if test="Tax !='0.00'"><strong><xsl:call-template name="currency"/><xsl:value-of select="format-number(Tax, '###,###,###,###,###.00')"/></strong><br /></xsl:if>
			</td><td class="expander" style="border-collapse: collapse !important; vertical-align: top; text-align: left; visibility: hidden; width: 0px; color: #545454; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-weight: normal; line-height: 21px; font-size: 14px; Margin: 0; padding: 0;" align="left" valign="top"></td>
		</tr>
	</xsl:if>
	</table></td></tr>

		</xsl:otherwise>

	</xsl:choose>

</xsl:template>
</xsl:stylesheet>