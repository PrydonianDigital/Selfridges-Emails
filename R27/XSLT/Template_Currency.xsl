<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="currency">
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='GBP'"><span>&#xa3;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='EUR'"><span>&#x20AC;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='USD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='CAD'"><span>C&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='AUD'"><span>AU&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='SGD'"><span>S&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='HKD'"><span>HK&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Order/OrderHeader/Currency='CNY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='GBP'"><span>&#xa3;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='EUR'"><span>&#x20AC;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='USD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CAD'"><span>C&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='AUD'"><span>AU&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='SGD'"><span>S&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='HKD'"><span>HK&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/ReturnDetails/ReturnedItems/ReturnedItem/Currency='CNY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='GBP'"><span>&#xa3;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='EUR'"><span>&#x20AC;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='USD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='CAD'"><span>C&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='AUD'"><span>AU&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='SGD'"><span>S&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='HKD'"><span>HK&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/RefundDetails/RefundedItems/RefundedItem/Currency='CNY'"><span>&#xa5;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='GBP'"><span>&#xa3;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='EUR'"><span>&#x20AC;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='USD'"><span>&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='CAD'"><span>C&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='AUD'"><span>AU&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='SGD'"><span>S&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='HKD'"><span>HK&#x24;</span></xsl:if>
	<xsl:if test="/SFEmailMessages/EmailDataArea/Currency='CNY'"><span>&#xa5;</span></xsl:if>
</xsl:template>

</xsl:stylesheet>