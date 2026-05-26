
  packageName="coriolis-pdk-gf180mcu-c4m"
  venvVersion="2.5.5"
 venvSnapshot="venv-al9-${venvVersion}.tar.gz"
      version="2025.7.28"
    obsCI_CNT="12"
     obsB_CNT="1"

 rpmSources=""
 rpmSources="${rpmSources} packaging/coriolis-pdk-gf180mcu-c4m.spec"
 rpmSources="${rpmSources} packaging/coriolis-pdk-gf180mcu-c4m-rpmlintrc"
 rpmSources="${rpmSources} packaging/patchvenv.sh"
 rpmSources="${rpmSources} ${venvSnapshot}"
 rpmSources="${rpmSources} coriolis-pdk-gf180mcu-c4m-${version}.tar.gz"

 debSources=""
 debSources="${debSources} packaging/coriolis-pdk-gf180mcu-c4m.dsc"
 debSources="${debSources} packaging/debian.changelog"
 debSources="${debSources} packaging/debian.control"
 debSources="${debSources} packaging/debian.copyright"
 debSources="${debSources} packaging/debian.rules"


 source ./packaging/uploadUtils.sh

     doVEnv="false"
   doCommit="false"

 parseArguments $*

 echo "Running uploadOBSs.sh"
 echo "* Using HEAD githash as release: ${githash}."
 if [ "${doSources}" = "true" ]; then
   echo "* Making source file archive from Git HEAD ..."
   ./packaging/git-archive-all.sh -v --prefix coriolis-pdk-gf180mcu-c4m-${version}/ \
                                     --format tar.gz \
                                     coriolis-pdk-gf180mcu-c4m-${version}.tar.gz
 fi

 runDoVEnv
 copyFiles
 buildObs
 buildLocalRpm
