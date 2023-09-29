# Certified JSON files

## Legacy


### Original certified JSON

This is the list of certified lumisections for the full era provided by CMS <br>
https://cms-service-dqmdc.web.cern.ch/CAF/certification/Collisions17/13TeV/Legacy_2017/
- `Cert_294927-306462_13TeV_UL2017_Collisions17_GoldenJSON.txt`
  - Luminosity: `38963 /pb`

where luminosity is calculated from
```bash
brilcalc lumi \
-c web \
-u /pb \
--normtag /cvmfs/cms-bril.cern.ch/cms-lumi-pog/Normtags/normtag_PHYSICS.json \
-i certified/Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON.txt
```

### Eras 2017C to 2017F

Because the triggers were not available for the full era, below is a compilation of the certified lumisections when MSSM Hbb triggers were available. To do that, CMSS tools for manipulation lumi json files were used (see [here](https://twiki.cern.ch/twiki/bin/view/CMSPublic/SWGuideGoodLumiSectionsJSONFile#filterJSON_py) for more details)

#### Full hadronic

The json `Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON_L1_DoubleJet100etc_Active.txt` is for the full hadronic analysis, for it contains only the certified lumisections when the `L1_DoubleJet100er2p3_dEta_Max1p6` seed was not prescaled to zero, i.e. prescale = 1 (see how this is done [here](https://github.com/desy-cms/analysis-tools#active-l1-seeds)). The luminosity for these lumisections is `31145 /pb`.

For the FH analysis cfg use the following
```
json = tools:2017/certified/Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON_L1_DoubleJet100etc_Active.txt
```

#### Semileptonic

Because the semileptonic was not affected by any prescale it has a different set of certified lumisections given in the file `Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON.txt` with corresponding luminosity `36264 /pb`.

In the analysis cfg file for SL analysis use this line
```
json = tools:2017/certified/Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON.txt
```

#### Split eras
In case one needs to study specific eras
- `Cert_Run2017C_13TeV_UL2017_Collisions17_GoldenJSON.txt`
- `Cert_Run2017D_13TeV_UL2017_Collisions17_GoldenJSON.txt`
- `Cert_Run2017E_13TeV_UL2017_Collisions17_GoldenJSON.txt`
- `Cert_Run2017F_13TeV_UL2017_Collisions17_GoldenJSON.txt`

:warning: These include the LS when `L1_DoubleJet100er2p3_dEta_Max1p6` were prescaled to zero


## ReReco

The certified luminosity for the ReReco campaign
- `Cert_294927-306462_13TeV_EOY2017ReReco_Collisions17_JSON.txt`



