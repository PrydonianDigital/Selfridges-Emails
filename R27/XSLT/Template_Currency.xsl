<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="currency">
	<!-- main order -->
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='USD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='CAD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='AUD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='SGD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='HKD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='AED'"><span>&#x62f;&#x2e;&#x625;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='SAR'"><span>&#xfdfc;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='KWD'"><span>&#xfeda;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='QAR'"><span>&#xfdfc;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='NOK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='SEK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='DKK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='CHF'"><span>&#x43;&#x48;&#x46;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='JPY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='KRW'"><span>&#x20a9;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='TWD'"><span>&#x24;</span></xsl:if>
	<!-- returned -->
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='GBP'"><span>&#xa3;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='EUR'"><span>&#x20AC;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='USD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CAD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='AUD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='SGD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='HKD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CNY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='AED'"><span>&#x62f;&#x2e;&#x625;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='SAR'"><span>&#xfdfc;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='KWD'"><span>&#xfeda;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='QAR'"><span>&#xfdfc;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='NOK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='SEK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='DKK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CHF'"><span>&#x43;&#x48;&#x46;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='JPY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='KRW'"><span>&#x20a9;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='TWD'"><span>&#x24;</span></xsl:if>
	<!-- refunded -->
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='GBP'"><span>&#xa3;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='EUR'"><span>&#x20AC;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='USD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='CAD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='AUD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='SGD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='HKD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='CNY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='AED'"><span>&#x62f;&#x2e;&#x625;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='SAR'"><span>&#xfdfc;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='KWD'"><span>&#xfeda;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='QAR'"><span>&#xfdfc;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='NOK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='SEK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='DKK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='CHF'"><span>&#x43;&#x48;&#x46;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='JPY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='KRW'"><span>&#x20a9;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='TWD'"><span>&#x24;</span></xsl:if>
	<!-- other -->
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='GBP'"><span>&#xa3;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='EUR'"><span>&#x20AC;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='USD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='CAD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='AUD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='SGD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='HKD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='CNY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='AED'"><span>&#x62f;&#x2e;&#x625;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='SAR'"><span>&#xfdfc;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='KWD'"><span>&#xfeda;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='QAR'"><span>&#xfdfc;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='NOK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='SEK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='DKK'"><span>&#x6b;&#x72;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='CHF'"><span>&#x43;&#x48;&#x46;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='JPY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='KRW'"><span>&#x20a9;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='TWD'"><span>&#x24;</span></xsl:if>
</xsl:template>

</xsl:stylesheet>