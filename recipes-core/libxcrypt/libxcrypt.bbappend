oe_runconf_prepend() {
	for file in $(grep -rl '\-V -qversion' ${S}) ; do
		sed -i 's/ -V -qversion/ /g' $file
	done
}

CPPFLAGS_remove_class-nativesdk = "-Wno-error=missing-attributes"
TARGET_CPPFLAGS_remove = "-Wno-error=missing-attributes"
