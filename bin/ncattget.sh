ncks_version=$(ncks --version 2>&1 | grep ncks | grep -o [0-9].[0-9].[0-9])
ncks_version=${ncks_version: -3}
check_version="${ncks_version} > 6.8"

if [ $(echo $check_version | bc) -eq 1 ]; then
  function ncattget { ncks --trd -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }
else
  function ncattget { ncks -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }
fi