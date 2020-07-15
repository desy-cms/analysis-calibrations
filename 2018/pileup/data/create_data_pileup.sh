# https://twiki.cern.ch/twiki/bin/view/CMS/PileupJSONFileforData


pileupCalc.py -i Cert_314472-325175_13TeV_17SeptEarlyReReco2018ABC_PromptEraD_DeepCSV_Collisions18_JSON.txt \
--inputLumiJSON /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions18/13TeV/PileUp/pileup_latest.txt \
--calcMode true \
--minBiasXsec 69200 \
--maxPileupBin 100 \
--numPileupBins 100 \
MyDataPileupHistogram_Run2018ABCD_DeepCSV.root


pileupCalc.py -i Cert_314472-325175_13TeV_17SeptEarlyReReco2018ABC_PromptEraD_DeepCSV_Collisions18_JSON.txt \
--inputLumiJSON /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions18/13TeV/PileUp/pileup_latest.txt \
--calcMode true \
--minBiasXsec 66017 \
--maxPileupBin 100 \
--numPileupBins 100 \
MyDataPileupHistogram_Run2018ABCD_DeepCSV_down1sig.root

pileupCalc.py -i Cert_314472-325175_13TeV_17SeptEarlyReReco2018ABC_PromptEraD_DeepCSV_Collisions18_JSON.txt \
--inputLumiJSON /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions18/13TeV/PileUp/pileup_latest.txt \
--calcMode true \
--minBiasXsec 62834 \
--maxPileupBin 100 \
--numPileupBins 100 \
MyDataPileupHistogram_Run2018ABCD_DeepCSV_down2sig.root

pileupCalc.py -i Cert_314472-325175_13TeV_17SeptEarlyReReco2018ABC_PromptEraD_DeepCSV_Collisions18_JSON.txt \
--inputLumiJSON /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions18/13TeV/PileUp/pileup_latest.txt \
--calcMode true \
--minBiasXsec 72383 \
--maxPileupBin 100 \
--numPileupBins 100 \
MyDataPileupHistogram_Run2018ABCD_DeepCSV_up1sig.root

pileupCalc.py -i Cert_314472-325175_13TeV_17SeptEarlyReReco2018ABC_PromptEraD_DeepCSV_Collisions18_JSON.txt \
--inputLumiJSON /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions18/13TeV/PileUp/pileup_latest.txt \
--calcMode true \
--minBiasXsec 75567 \
--maxPileupBin 100 \
--numPileupBins 100 \
MyDataPileupHistogram_Run2018ABCD_DeepCSV_up2sig.root


