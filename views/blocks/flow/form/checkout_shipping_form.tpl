[{assign var="oDeliveryAddress" value=$oView->getDeliveryAddressAsObj()}]
[{if $oViewConf->isAmazonActive() && $oViewConf->isAmazonSessionActive() && $oDeliveryAddress}]
    [{include file="amazonpay/flow_filtered_delivery_address.tpl" delivadr=$oDeliveryAddress}]
[{else}]
    [{$smarty.block.parent}]
[{/if}]