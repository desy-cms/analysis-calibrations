# Pileup weights 2018 (ReReco)

The recommended pileup weight file to be used in the configuration file for the 2018 analyses with ReReco datasets is
```
calibrations/2018/pileup/PileupWeight_Run2018ABCD_DeepCSV_mix_2018_25ns_JuneProjectionFull18.root
```

* [Validation plots](#validation-plots)
* [How to produce pileup weights](#how-to-produce-pileup-weights)

## Validation plots

### Pileup weights

Linear             |  Log
:-------------------------:|:-------------------------:
![](pileup_weight_lin.png?raw=true) | ![](pileup_weight_log.png?raw=true)


### Data versus MC

Linear             |  Log
:-------------------------:|:-------------------------:
![](pileup_data_mc_lin.png?raw=true) | ![](pileup_data_mc_log.png?raw=true)




### Monte Carlo datasets

Signal MC versus mixing configuration | Madgraph QCD MC versus mixing configuration | Madgraph QCD bEnriched MC versus mixing configuration | Madgraph QCD BGenFilter MC versus mixing configuration
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](mc/pileup_plots_signal.png?raw=true) | ![](mc/pileup_plots_qcd.png?raw=true) | ![](mc/pileup_plots_qcd_benriched.png?raw=true) | ![](mc/pileup_plots_qcd_bgenfilter.png?raw=true)


----

## How to produce pileup weights

See also this [README.md](blob/master/README.md) for installation, in case it was not done yet.

The production of pileup weights follow the recommendations of the CMS Collaboration. See [Utilities for Accessing Pileup Information for Data](https://twiki.cern.ch/twiki/bin/viewauth/CMS/PileupJSONFileforData) for more details

Setup and go to the calibrations directory, and prepare a git branch if necessary.

```bash
cd  $CMSSW_BASE/src
cmsenv
Analysis/Tools/data/calibrations
git checkout [-b] <some-branch-name>
```

### Data pileup profile

Go to the pileup data directory and run the script as recommended in the [official documentation](https://twiki.cern.ch/twiki/bin/view/CMS/PileupJSONFileforData).

```bash
cd 2018/pileup/data
```

If the script [create_data_pileup.sh](blob/master/2018/pileup/data/create_data_pileup.sh) is executed

```bash
./create_data_pileup.sh
```

it will produce the data pileup histograms for 2018 ABCD eras for MSSM Hbb triggers using online DeepCSV. If a different certified JSON file is required the modification is straightforward. Below is an example for the central value of the cross section:


```bash
pileupCalc.py -i ../../certified/Cert_314472-325175_13TeV_17SeptEarlyReReco2018ABC_PromptEraD_DeepCSV_Collisions18_JSON.txt \
--inputLumiJSON /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions18/13TeV/PileUp/pileup_latest.txt \
--calcMode true \
--minBiasXsec 69200 \
--maxPileupBin 100 \
--numPileupBins 100 \
MyDataPileupHistogram_Run2018ABCD_DeepCSV.root
```

* The analysis certified JSON file is expected to be available in `Analysis/Tools/data/calibrations/2018/certified`
* The central pileup file (inputLumiJSON) is provided by CMS [here](https://twiki.cern.ch/twiki/bin/viewauth/CMS/PileupJSONFileforData#Location_of_central_pileup_files)
* The recommended value for minimum bias cross section and its uncertainties are provided by CMS [here](https://twiki.cern.ch/twiki/bin/viewauth/CMS/PileupJSONFileforData#Recommended_cross_section)
