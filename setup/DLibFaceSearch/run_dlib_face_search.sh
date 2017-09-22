#!/bin/bash
# TODO: set this, test or release?
#  should this suffix be set from a parameter?
suffix="_test"
#suffix="_release"

source ~/.bashrc

while getopts r: option
do
  case "${option}"
  in
  r) repo_path=${OPTARG};;
  esac
done

if [ ${repo_path+x} ]; then
  echo "repo_path: "${repo_path}
else
  echo "repo_path not set. Use -r to set repo_path please."
  exit -1
fi

cd ${repo_path}/setup/DLibFaceProcessing

package_name="cufacesearch"
extr_type="dlibface"
conf="conf_search_"${extr_type}${suffix}".json"
# Should these two script be run on different machines?
# extraction_checker could be run on the same machine as the search API? or as the image downloader one?
# Should we have a script that make sure this process are still alive akin to the keep_alive_api.sh scripts...
python ../../${package_name}/www/api.py -c ../../conf/${conf} &> log_searchapi${suffix}_${extr_type}_$(date +%Y-%m-%d).txt &


