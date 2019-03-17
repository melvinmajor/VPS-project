$TTL    604800
$ORIGIN wt13.ephec-ti.be.
@       IN      SOA     ns.wt13.ephec-ti.be. root.wt13.ephec-ti.be. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

@		      IN		  NS		      ns.wt13.ephec-ti.be.   ; Serveur dns externe
ns		    IN		  A		        51.77.203.41
serverWeb IN      A           51.77.203.41
b2b		    IN		  CNAME		    serverWeb
www       IN      CNAME       serverWeb
intranet  IN      CNAME       serverWeb
