#!/bin/sh

sdtRoot=$(dirname $0)
antScript=${sdtRoot}/sf-deploy-toolbox/Salesforce_Deploy_Toolbox.xml
buildProperty=${sdtRoot}/configuration/build.properties

arguments=()
for i in "$@"; do
	case "${i}" in
		--*)
			arguments+=("$(echo "${i}" | sed 's/^--/-D/g')")
			;;
		*)
			targetName="${i}"
			;;
	esac
done

case "$targetName" in
	help)
		ant -f "${antScript}" help 2>&1 | \
			grep 'echo' | cut -d']' -f2- | cut -c'2-' | \
			sed -e 's#ant -f <Salesforce_Deploy_Toolbox.xml>#./sdt.sh#' -e 's/-propertyfile <build.properties> //' -e 's/-D/--/g'
		;;
	*)
		ant -f "${antScript}" -propertyfile "${buildProperty}" ${arguments[*]} "$targetName" 2>&1 | \
			sed "s#${antScript}#SDT{ant-script}#g"
		
esac
