---
title: test_Snakemake-workflow
date: 2024-12-03
author: Jacques SERIZAY
format:
    html:
        highlight: tango
        toc: true
        toc-depth: 2
        embed-resources: true
execute:
    eval: false
---

## Install snakemake env 

```bash
micromamba create -n sm -c conda-forge -c bioconda -c defaults snakemake
```

## Run Snakemake workflow locally 

```bash
micromamba run -n sm snakemake --cores 1
```

## Run Snakemake workflow on Slurm 

### With salloc 

```bash
salloc -q ultrafast
micromamba run -n sm snakemake
```

### With sbatch

```bash
sbatch -q ultrafast --wrap "micromamba run -n sm snakemake"
```

## Env info 

```
List of packages in environment: "/pasteur/appa/homes/jaseriza/micromamba/envs/sm"

  Name                                  Version      Build                Channel    
───────────────────────────────────────────────────────────────────────────────────────
  _libgcc_mutex                         0.1          conda_forge          conda-forge
  _openmp_mutex                         4.5          2_gnu                conda-forge
  amply                                 0.1.6        pyhd8ed1ab_0         conda-forge
  annotated-types                       0.7.0        pyhd8ed1ab_0         conda-forge
  appdirs                               1.4.4        pyh9f0ad1d_0         conda-forge
  argparse-dataclass                    2.0.0        pyhd8ed1ab_0         conda-forge
  attrs                                 24.2.0       pyh71513ae_0         conda-forge
  brotli-python                         1.1.0        py312h2ec8cdc_2      conda-forge
  bzip2                                 1.0.8        h4bc722e_7           conda-forge
  ca-certificates                       2024.8.30    hbcca054_0           conda-forge
  certifi                               2024.8.30    pyhd8ed1ab_0         conda-forge
  cffi                                  1.17.1       py312h06ac9bb_0      conda-forge
  charset-normalizer                    3.4.0        pyhd8ed1ab_1         conda-forge
  click                                 8.1.7        unix_pyh707e725_1    conda-forge
  coin-or-cbc                           2.10.12      h8b142ea_1           conda-forge
  coin-or-cgl                           0.60.9       h1d3f3f2_0           conda-forge
  coin-or-clp                           1.17.10      h07f2a63_0           conda-forge
  coin-or-osi                           0.108.11     h6514dde_1           conda-forge
  coin-or-utils                         2.11.12      h99da652_1           conda-forge
  coincbc                               2.10.12      1_metapackage        conda-forge
  colorama                              0.4.6        pyhd8ed1ab_1         conda-forge
  coloredlogs                           15.0.1       pyhd8ed1ab_3         conda-forge
  conda-inject                          1.3.2        pyhd8ed1ab_0         conda-forge
  configargparse                        1.7          pyhd8ed1ab_0         conda-forge
  connection_pool                       0.0.3        pyhd3deb0d_0         conda-forge
  datrie                                0.8.2        py312h66e93f0_8      conda-forge
  docutils                              0.21.2       pyhd8ed1ab_1         conda-forge
  dpath                                 2.2.0        pyha770c72_0         conda-forge
  eido                                  0.2.4        pyhd8ed1ab_0         conda-forge
  exceptiongroup                        1.2.2        pyhd8ed1ab_1         conda-forge
  gitdb                                 4.0.11       pyhd8ed1ab_0         conda-forge
  gitpython                             3.1.43       pyhd8ed1ab_0         conda-forge
  h2                                    4.1.0        pyhd8ed1ab_0         conda-forge
  hpack                                 4.0.0        pyh9f0ad1d_0         conda-forge
  humanfriendly                         10.0         pyhd81877a_7         conda-forge
  hyperframe                            6.0.1        pyhd8ed1ab_0         conda-forge
  idna                                  3.10         pyhd8ed1ab_1         conda-forge
  immutables                            0.21         py312h66e93f0_0      conda-forge
  importlib_resources                   6.4.5        pyhd8ed1ab_0         conda-forge
  iniconfig                             2.0.0        pyhd8ed1ab_1         conda-forge
  jinja2                                3.1.4        pyhd8ed1ab_1         conda-forge
  jsonschema                            4.23.0       pyhd8ed1ab_0         conda-forge
  jsonschema-specifications             2024.10.1    pyhd8ed1ab_0         conda-forge
  jupyter_core                          5.7.2        pyh31011fe_1         conda-forge
  ld_impl_linux-64                      2.43         h712a8e2_2           conda-forge
  libblas                               3.9.0        25_linux64_openblas  conda-forge
  libcblas                              3.9.0        25_linux64_openblas  conda-forge
  libexpat                              2.6.4        h5888daf_0           conda-forge
  libffi                                3.4.2        h7f98852_5           conda-forge
  libgcc                                14.2.0       h77fa898_1           conda-forge
  libgcc-ng                             14.2.0       h69a702a_1           conda-forge
  libgfortran                           14.2.0       h69a702a_1           conda-forge
  libgfortran-ng                        14.2.0       h69a702a_1           conda-forge
  libgfortran5                          14.2.0       hd5240d6_1           conda-forge
  libgomp                               14.2.0       h77fa898_1           conda-forge
  liblapack                             3.9.0        25_linux64_openblas  conda-forge
  liblapacke                            3.9.0        25_linux64_openblas  conda-forge
  libnsl                                2.0.1        hd590300_0           conda-forge
  libopenblas                           0.3.28       pthreads_h94d23a6_1  conda-forge
  libsqlite                             3.47.0       hadc24fc_1           conda-forge
  libstdcxx                             14.2.0       hc0a3c3a_1           conda-forge
  libstdcxx-ng                          14.2.0       h4852527_1           conda-forge
  libuuid                               2.38.1       h0b41bf4_0           conda-forge
  libxcrypt                             4.4.36       hd590300_1           conda-forge
  libzlib                               1.3.1        hb9d3cd8_2           conda-forge
  logmuse                               0.2.8        pyhd8ed1ab_0         conda-forge
  markdown-it-py                        3.0.0        pyhd8ed1ab_0         conda-forge
  markupsafe                            3.0.2        py312h178313f_1      conda-forge
  mdurl                                 0.1.2        pyhd8ed1ab_0         conda-forge
  nbformat                              5.10.4       pyhd8ed1ab_0         conda-forge
  ncurses                               6.5          he02047a_1           conda-forge
  numpy                                 2.1.3        py312h58c1407_0      conda-forge
  openssl                               3.4.0        hb9d3cd8_0           conda-forge
  packaging                             24.2         pyhd8ed1ab_2         conda-forge
  pandas                                2.2.3        py312hf9745cd_1      conda-forge
  pephubclient                          0.4.4        pyhd8ed1ab_0         conda-forge
  peppy                                 0.40.7       pyhd8ed1ab_1         conda-forge
  pip                                   24.3.1       pyh8b19718_0         conda-forge
  pkgutil-resolve-name                  1.3.10       pyhd8ed1ab_1         conda-forge
  plac                                  1.4.3        pyhd8ed1ab_0         conda-forge
  platformdirs                          4.3.6        pyhd8ed1ab_0         conda-forge
  pluggy                                1.5.0        pyhd8ed1ab_1         conda-forge
  psutil                                6.1.0        py312h66e93f0_0      conda-forge
  pulp                                  2.8.0        py312h7900ff3_0      conda-forge
  pycparser                             2.22         pyh29332c3_1         conda-forge
  pydantic                              2.10.2       pyh3cfb1c2_0         conda-forge
  pydantic-core                         2.27.1       py312h12e396e_0      conda-forge
  pygments                              2.18.0       pyhd8ed1ab_1         conda-forge
  pyparsing                             3.2.0        pyhd8ed1ab_2         conda-forge
  pysocks                               1.7.1        pyha55dd90_7         conda-forge
  pytest                                8.3.4        pyhd8ed1ab_1         conda-forge
  python                                3.12.7       hc5c86c4_0_cpython   conda-forge
  python-dateutil                       2.9.0.post0  pyhff2d567_1         conda-forge
  python-fastjsonschema                 2.21.0       pyhd8ed1ab_0         conda-forge
  python-tzdata                         2024.2       pyhd8ed1ab_0         conda-forge
  python_abi                            3.12         5_cp312              conda-forge
  pytz                                  2024.1       pyhd8ed1ab_0         conda-forge
  pyyaml                                6.0.2        py312h66e93f0_1      conda-forge
  readline                              8.2          h8228510_1           conda-forge
  referencing                           0.35.1       pyhd8ed1ab_0         conda-forge
  requests                              2.32.3       pyhd8ed1ab_1         conda-forge
  reretry                               0.11.8       pyhd8ed1ab_0         conda-forge
  rich                                  13.9.4       pyhd8ed1ab_0         conda-forge
  rpds-py                               0.21.0       py312h12e396e_0      conda-forge
  setuptools                            75.6.0       pyhff2d567_1         conda-forge
  shellingham                           1.5.4        pyhd8ed1ab_0         conda-forge
  six                                   1.16.0       pyhd8ed1ab_1         conda-forge
  slack-sdk                             3.33.4       pyhff2d567_1         conda-forge
  slack_sdk                             3.33.4       hff2d567_1           conda-forge
  smart_open                            7.0.5        pyhd8ed1ab_1         conda-forge
  smmap                                 5.0.0        pyhd8ed1ab_0         conda-forge
  snakemake                             8.25.5       hdfd78af_0           bioconda   
  snakemake-interface-common            1.17.4       pyhdfd78af_0         bioconda   
  snakemake-interface-executor-plugins  9.3.2        pyhdfd78af_0         bioconda   
  snakemake-interface-report-plugins    1.1.0        pyhdfd78af_0         bioconda   
  snakemake-interface-storage-plugins   3.3.0        pyhdfd78af_0         bioconda   
  snakemake-minimal                     8.25.5       pyhdfd78af_0         bioconda   
  tabulate                              0.9.0        pyhd8ed1ab_1         conda-forge
  throttler                             1.2.2        pyhd8ed1ab_0         conda-forge
  tk                                    8.6.13       noxft_h4845f30_101   conda-forge
  tomli                                 2.2.1        pyhd8ed1ab_0         conda-forge
  traitlets                             5.14.3       pyhd8ed1ab_0         conda-forge
  typer                                 0.14.0       pyhd8ed1ab_0         conda-forge
  typer-slim                            0.14.0       pyhd8ed1ab_0         conda-forge
  typer-slim-standard                   0.14.0       hd8ed1ab_0           conda-forge
  typing-extensions                     4.12.2       hd8ed1ab_1           conda-forge
  typing_extensions                     4.12.2       pyha770c72_1         conda-forge
  tzdata                                2024b        hc8b5060_0           conda-forge
  ubiquerg                              0.8.0        pyhd8ed1ab_0         conda-forge
  urllib3                               2.2.3        pyhd8ed1ab_1         conda-forge
  veracitools                           0.1.3        py_0                 conda-forge
  wheel                                 0.45.1       pyhd8ed1ab_1         conda-forge
  wrapt                                 1.17.0       py312h66e93f0_0      conda-forge
  xz                                    5.2.6        h166bdaf_0           conda-forge
  yaml                                  0.2.5        h7f98852_2           conda-forge
  yte                                   1.5.4        pyha770c72_0         conda-forge
  zipp                                  3.21.0       pyhd8ed1ab_1         conda-forge
  zstandard                             0.23.0       py312hef9b889_1      conda-forge
  zstd                                  1.5.6        ha6fb4c9_0           conda-forge
```