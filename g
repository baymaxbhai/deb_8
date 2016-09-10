
 $TTL 86400
my-name.com.          IN     SOA    debns1.my-name.com. \
                                    joe.my-name.com. {       
                   2004011522     ; Serial no., based on date
                        21600     ; Refresh after 6 hours
                         3600     ; Retry after 1 hour
                       604800     ; Expire after 7 days
                         3600     ; Minimum TTL of 1 hour
)
;Name servers
debns1                IN     A       192.168.1.41
debns2.joescuz.com.   IN     A       192.168.1.42

@                     IN     NS      debns1
my-name.com.          IN     NS      debns2.my-name.com.


;Mail servers
debmail1              IN     A       192.168.1.51
debmail2.my-name.com. IN     A       192.168.1.52

@                     IN     MX      10 debmail1
my-name.com.          IN     MX      20 debmail2.my-name.com.


;Aliased servers
debhp                 IN     A       192.168.1.61
debdell.my-name.com.  IN     A       192.168.1.62

www                   IN     CNAME   debhp
ftp.my-name.com.      IN     CNAME   debdell.my-name.com.

