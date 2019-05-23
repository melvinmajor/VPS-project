$ORIGIN wt13.ephec-ti.be.
$TTL	43200
@	IN	SOA	ns.wt13.ephec-ti.be. admin.wt13.ephec-ti.be. (
		 	     1  	; Serial
			 43200		; Refresh
			  7200		; Retry
			2419200		; Expire
			  43200 )	; Negative Cache TTL
;
; name servers - NS record
@				IN	NS			ns.wt13.ephec-ti.be.



; name servers - A record
ns 				    IN	A		51.77.203.41

; web services
serverWeb			IN	A		51.77.203.41
www				    IN	CNAME	 	serverWeb
b2b IN CNAME serverWeb
