# conditional-forwarder
Conditional Forwarder Zone Creation Script
Description: This script gathers information necessary to create DNS forwarder on one, or multiple servers.

Tips:

- You can use FQDN or IP of source servers to build the forwarder on. You can have multiple by separating with commas, e.g: 192.168.0.1,192.168.0.2
- You can ONLY use the IP of destination servers to forward to. You can have multiple by separating with commas, e.g: 192.168.0.1,192.168.0.2
- You can only forward one domain per script execution. You cannot comma-separate domains to do multiple.
