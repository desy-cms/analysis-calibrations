# Certified JSON files

## Legacy


### Original certified JSON

This is the list of certified lumisections for the full era provided by CMS <br>
https://cms-service-dqmdc.web.cern.ch/CAF/certification/Collisions17/13TeV/Legacy_2017/
- `Cert_294927-306462_13TeV_UL2017_Collisions17_GoldenJSON.txt`

### Eras C to F

**MSSM Hbb triggers available**

Because the triggers were not available for the full era, below is a compilation of the certified lumisections when MSSM Hbb triggers were available. To do that, CMSS tools for manipulation lumi json files were used (see [here](https://twiki.cern.ch/twiki/bin/view/CMSPublic/SWGuideGoodLumiSectionsJSONFile#filterJSON_py) for more details)

The first JSON file is to be used for the semileptonic analysis. The second one is for the full hadronic analysis, for it contains only the certified lumisections when the `L1_DoubleJet100er2p3_dEta_Max1p6` seed was not prescaled to zero (see how this is done [here](https://github.com/desy-cms/analysis-tools#active-l1-seeds)).
- `Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON.txt`
- `Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON_L1_DoubleJet100etc_Active.txt`

In your analysis cfg file for SL analysis use this line
```
json = tools:2017/certified/Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON.txt
```
or, for FH analysis, use
```
json = tools:2017/certified/Cert_Run2017CDEF_13TeV_UL2017_Collisions17_GoldenJSON_L1_DoubleJet100etc_Active.txt
```

#### Split eras
In case one needs to study specific eras
- `Cert_Run2017C_13TeV_UL2017_Collisions17_GoldenJSON.txt`
- `Cert_Run2017D_13TeV_UL2017_Collisions17_GoldenJSON.txt`
- `Cert_Run2017E_13TeV_UL2017_Collisions17_GoldenJSON.txt`
- `Cert_Run2017F_13TeV_UL2017_Collisions17_GoldenJSON.txt`

:warning: These include the LS when `L1_DoubleJet100er2p3_dEta_Max1p6` were prescaled to zero


## ReReco

- `Cert_294927-306462_13TeV_EOY2017ReReco_Collisions17_JSON.txt`



