version=$1

repository="sra-toolkit"

cd docker-build
wget -c https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/${version}/sratoolkit.${version}-ubuntu64.tar.gz

docker build --build-arg VERSION=${version} -t lyc1995/${repository}:${version} .
docker run -it --name=sra-tmp lyc1995/${repository}:${version} && \
    docker commit sra-tmp lyc1995/${repository}:${version}
docker rm sra-tmp
docker images | grep none | awk '{print $3}' | xargs docker rmi

rm sratoolkit.${version}-ubuntu64.tar.gz
