echo -text "AW configuration installation start ..."
#
# create environment variable
#setenv -Name "FUNCPACK" -value $BOOTPATH
## 
setstr -strvar $TMP_ARC -value $BOOTPATH
setstr -strvar $BOOTPATH -value "$HOME/OptConfig"
# 
#setenv -Name "FUNCPACK" -value $BOOTPATH
# 
# Make required directories
mkdir -path $HOME/ApplData
mkdir -path $HOME/ApplConf
mkdir -path $HOME/ApplSys
#
# Register path for FlexPendant dlls, images etc.
#
# The contents of the following folder will be copied
# to the FlexPendant unit during every FlexPendant restart.
register -type option -description fpdefault -path $BOOTPATH/FP/default
#
mkdir -path $HOME/ApplData/ROB1
mkdir -path $HOME/ApplConf/ROB1
mkdir -path $HOME/ApplSys/ROB1
# 
echo -text "Installing Customer built A based on MU"

# 
config -filename $BOOTPATH/MOC/MOC_GantryXYZ_MU433_M789DM1.cfg -domain MOC
config -filename $BOOTPATH/MOC/mocMoutIRB140_0.81_6.cfg -domain MOC -replace
# 

# 
setstr -strvar $BOOTPATH -value "$TMP_ARC"
# 