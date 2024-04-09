# IntronSeeker conda build

## Install conda build

Install conda build in base environment

```
conda install -n base conda-build
```

## Set build dir as conda channel

Edit the `~/.condarc` file with following content to add a [local channel](https://docs.conda.io/projects/conda/en/latest/user-guide/concepts/channels.html)

```
channels:
  - ...
  - file:///<absolute-path-to-conda-install>/conda-bld/
  - ...
```

Where you replace `<absolute-path-to-conda-install>` by the place conda-build packages are stored

## Build packages

Run the following command

```
build.sh
```

Failure can be cleanned with:

```
conda build purge
```

## Install packages

```
conda install intronseeker
```