
## Define what to combine: channel_name=datacard.txt"
HGG="hgg_8TeV=hgg_8TeV_MVA_cat0145.txt"
HTT="htt_0_8TeV=htt_mt_0_8TeV.txt htt_1_8TeV=htt_mt_1_8TeV.txt htt_2_8TeV=htt_mt_2_8TeV.txt htt_3_8TeV=htt_mt_3_8TeV.txt htt_5_8TeV=htt_mt_5_8TeV.txt"
HWW="hww0j_8TeV=hwwof_0j_shape_8TeV.txt hww2j_8TeV=hwwof_2j_shape_8TeV.txt"
HZZ="hzz_2e2mu_8TeV=hzz4l_2e2muS_8TeV_0.txt hzz_4mu_8TeV=hzz4l_4muS_8TeV_0.txt hzz_4e_8TeV=hzz4l_4eS_8TeV_0.txt"
HBB="whbb_8TeV=vhbb_Wln_8TeV.txt zhbb_8TeV=vhbb_Znn_8TeV.txt"
TTH="ttH_3l_8TeV_1=ttH_3lBCat_MVA_neg.card.txt tth_3l_8TeV_2=ttH_3lBCat_MVA_pos.card.txt"
HIN="hinv_8TeV=hinv_vbf_8TeV.txt"

## Create combinations by decay mode
combineCards.py $HGG > comb_hgg.txt
combineCards.py $HZZ > comb_hzz.txt
combineCards.py $HWW > comb_hww.txt
combineCards.py $HBB > comb_hbb.txt
combineCards.py $HTT > comb_htt.txt

## Create full combination
combineCards.py $HGG $HZZ $HWW $HBB $HTT $TTH > comb.txt
combineCards.py -S $HGG $HZZ $HWW $HBB $HTT $TTH $HIN > combx.txt
