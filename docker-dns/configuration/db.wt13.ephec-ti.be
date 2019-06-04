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
@					IN	NS	ns.wt13.ephec-ti.be.
@               			IN      A       51.77.203.41

@               			IN      MX      1       mx1

; name servers - A record
ns 				    	IN	A	51.77.203.41

; web services
serverWeb				IN	A	51.77.203.41
www				    	IN	CNAME	serverWeb
b2b IN CNAME serverWeb

mx1             			IN      A       51.77.203.49
mail					IN 	A	51.77.203.49
smtp					IN	CNAME	mail
pop3					IN	CNAME	mail
imap 					IN 	CNAME 	mail
