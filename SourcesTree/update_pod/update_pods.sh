REPO_PATH=$1;cd ${REPO_PATH};
readonly REPO_PATH;Pods_zip=${REPO_PATH}"/Pods.zip";cd $REPO_PATH;unzip -o ${Pods_zip};
open puzzleApp.xcworkspace;
MACOXDir="${REPO_PATH}/__MACOSX";
if [ -d "${MACOXDir}" ];then
echo "移除多余文件:${MACOXDir}"
rm -r "${MACOXDir}";
fi

