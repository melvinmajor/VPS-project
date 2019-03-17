$TTL    604800
$ORIGIN 203.77.51.in-addr.arpa.
@       IN      SOA     ns.wt13.ephec-ti.be. admin.wt13.ephec-ti.be. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

@		IN		NS		ns.wt13.ephec-ti.be.
ns  IN    A     51.77.203.41
serverWeb IN  A     51.77.203.41
www IN    CNAME     serverWeb
b2b IN    CNAME     serverWeb
