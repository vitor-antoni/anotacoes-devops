create-traffic-mirror-session
--network-interface-id <value>              # Source
--traffic-mirror-target-id <value>          # Target
--traffic-mirror-filter-id <value>          # Filter
--session-number <value>                    # Session
--virtual-network-id <value>                # Virtual Network ID -- VNI (mesmo no CLI)

create-traffic-mirror-filter 
--ingress-filter
--egress-filter                             # 0.0.0.0/0 all udp
