tenant_id       = "b4ed2179-1a61-42b5-a53c-57caf85b095e"
subscription_id = "853b653b-9b38-421e-a550-8025ac9f02f8"
global-tags  = { project = "MOMA", businessowner = "IBK", environment = "prod" }
global-abreviations = { company = "IBK", region = "eus", subscription = "Free Trial", environment = "prod", cloud = "a"}
location            = "eastus"

##########################################################################
integration_vnet_address   = ["10.130.0.0/20"]
integration_subnet_address = ["10.130.9.0/25", "10.130.8.0/25", "10.130.0.0/21"]
integration_subnet_name    = ["ag", "api", "aks"]
integration_subnet_nsg = [false, true, false]

privatelink_vnet_address   = ["10.132.0.0/20"]
privatelink_subnet_address = ["10.132.0.0/23", "10.132.2.0/23", "10.132.4.0/23", "10.132.6.0/23", "10.132.8.0/23", "10.132.10.0/23", "10.132.12.0/27"]
privatelink_subnet_name    = ["mysql", "postgres", "sqlserver", "storage", "functions", "appservices", "keyvault"]
privatelink_subnet_nsg = [false, false, false, false, false, false, false]

db_vnet_address   = ["10.134.0.0/20"]
db_subnet_address = ["10.134.0.0/23", "10.134.2.0/23", "10.134.4.0/23", "10.134.6.0/23"]
db_subnet_name    = ["mysql", "postgres", "sqlserver", "db"]
db_subnet_nsg = [false, false, false, false]

frontend_vnet_address   = ["10.136.0.0/23"]
frontend_subnet_address = ["10.136.1.0/24", "10.136.0.0/26"]
frontend_subnet_name    = ["frontend", "bastion"]
frontend_subnet_nsg = [false, false]

backend_vnet_address   = ["10.138.0.0/23"]
backend_subnet_address = ["10.138.0.0/23"]
backend_subnet_name    = ["backend"]
backend_subnet_nsg = [false]

scaleset_vnet_address   = ["10.140.0.0/21"]
scaleset_subnet_address = ["10.140.0.0/23"]
scaleset_subnet_name    = ["scaleset"]
scaleset_subnet_nsg = [false]


#Variables de api gateway
frontend_port_var = 80
cookie_based_affinity_var = "Disabled"
backend_http_setting_path_var = "/path1/"
backend_http_setting_port_var = 80
backend_http_setting_protocol_var = "Http"
backend_http_setting_request_timeout_var = 60
frontend_protocol_var = "Http"
request_routing_rule_priority_var = 9
request_routing_rule_type_var = "Basic"
waf_firewall_mode_var = "Prevention"
waf_rule_set_type_var = "OWASP"
waf_rule_set_version_var = "3.2"

#Variables de AKS
aks_version = "1.28.3"
aks_sku = "Free"
#aks_system_node_count = 1
aks_system_node_size = "Standard_DS2_v2"
# aks_app_node_count = 2
# aks_app_node_size = "Standard_B4ms"