umask 0777

wait 30

echo "Facebook preloads started"

/system/bin/pm install "/system/third_app/instagram-stub.apk"
/system/bin/pm install "/system/third_app/whatsapp-stub.apk"
/system/bin/pm install "/system/third_app/fblite-full.apk"

echo "Facebook preloads done"
