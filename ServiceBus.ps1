#New-AzResourceGroup -Name $resourceGroupName -Location $location
#New-AzResourceGroup -Name 'test-simple-rg' -Location 'UKsouth'


New-AzServiceBusNamespace -ResourceGroup 'test-simple-rg' -Name 'sreenuknamespace' -Location 'UKsouth'
New-AzServiceBusTopic -ResourceGroup 'test-simple-rg' -NamespaceName 'mynamespace-sreenu' -Name 'topic2'
New-AzServiceBusSubscription -ResourceGroup 'test-simple-rg' -NamespaceName 'mynamespace-sreenu' -TopicName 'topic2' -Name 'ksreenusub'
New-AzServiceBusRule -ResourceGroup 'test-simple-rg' -NamespaceName 'mynamespace-sreenu' -TopicName 'topic2' -SubscriptionName 'ksreenusub' -Name 'ksreenusbrule' -FilterType "SqlFilter" -SqlExpression "schema_id IN ('$('ksreenu-id')')"