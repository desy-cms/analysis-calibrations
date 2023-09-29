# Pileup weights for 2017 Run2 Legacy analyses

The information about the certified lumisections used for the weights calculations can be found [here](https://github.com/desy-cms/analysis-calibrations/blob/30799f00f970e9d82a4cca3657c362aca4c31aa8/2017/certified/README.md)

The root files contain the follwing structure for the weights:
```
  KEY: TH1D     weight;1        pileup weight nominal
  KEY: TH1D     weight_1up;1    pileup weight +1#sigma
  KEY: TH1D     weight_2up;1    pileup weight +2#sigma
  KEY: TH1D     weight_1down;1  pileup weight -1#sigma
  KEY: TH1D     weight_2down;1  pileup weight -2#sigma
```

Additional histograms with the pileup histograms from data and true MC, used to obtain the weights, can be found in the files as well.

## Full hadronic

The file `PileupWeightMC_MSSMHbb_FH_mix_2017Legacy.root` contains the pileup weights to be used in the 2017 Run2 Legacy MC samples for the full hadronic analysis. The weights were obtained for the lumisection where the L1 seed `L1_DoubleJet100er2p3_dEta_Max1p6` was not prescaled to zero. 

In the analysis cfg file use:
```
[Corrections.Pileup]
reweight  = tools:2017/pileup/run2_legacy/PileupWeightMC_MSSMHbb_FH_mix_2017Legacy
```

## Semileptonic

The file `PileupWeightMC_MSSMHbb_SL_mix_2017Legacy.root` contains the pileup weights to be used in the 2017 Run2 Legacy MC samples for the semileptonic analysis. The weights were obtained for the full period of data taking the triggers were in place, i.e. 2017C to 2017F.


In the analysis cfg file use:
```
[Corrections.Pileup]
reweight  = tools:2017/pileup/run2_legacy/PileupWeightMC_MSSMHbb_FH_mix_2017Legacy
```

## Data pileup

This information is contained in the `pileup_brilcalc_goldenjson.csv`. It is used to re-weight the data from control triggers, whose pileup weights are available in the `control_triggers` directory. Such re-weight is necessary when the pileup distribution of a trigger differs from the physics one.

The pileup per lumisection is obtained with the command
```bash
brilcalc lumi \
-c web \
--byls \
--normtag /cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_PHYSICS.json \
-i certified/Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON.txt \
-o pileup_brilcalc_goldenjson.csv
```
The csv file is then skimmed to contain the run number, lumisection and average pileup in that lumisection.
