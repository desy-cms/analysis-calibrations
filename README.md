# analysis-calibrations

**This repository contains the relevant information on calibrations for analyses.**

## Framework installation

Fork the https://github.com/desy-cms/analysis-calibrations repository

```bash
cmsrel CMSSW_X_Y_Z
cd CMSSW_X_Y_Z/src
cmsenv
git clone https://github.com/desy-cms/analysis-tools.git Analysis/Tools
git clone https://github.com/<your-github-name>/analysis-calibrations.git Analysis/Tools/data/calibrations
scram b -j4 USER_CXXFLAGS="-Wno-misleading-indentation"
```

### Prepare calibrations directory structure

```bash
cd Analysis/Tools/data/calibrations
git checkout -b <new branch name>
mkdir <year>
cd <year>
mkdir btag
mkdir certified
mkdir jer
mkdir pileup
mkdir pileup/data
mkdir pileup/mc
```

### Add calibrations

Add the relevant files in the corresponding  directories. Commit your changes and, if needed, make a pull request.

For more detailed information see the README files in the subdirectories of thes package.
