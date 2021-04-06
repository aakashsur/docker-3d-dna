# 3d-dna in Docker

  [3d-dna](https://github.com/aidenlab/3d-dna) is a popular Hi-C scaffolding method. The container is available via Docker Hub.

## Usage

```
docker pull \
  aakashsur/3d-dna

docker run \
  --rm \
  --volume $PWD:/root/results \
  --workdir /root/results \
  aakashsur/3d-dna \
  3d-dna \
  alignment.bam \
  assembly.fasta
```

