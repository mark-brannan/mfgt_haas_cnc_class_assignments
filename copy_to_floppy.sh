#!/bin/bash
{
cat <<EOF
SB_SClampSpacer890Op1_v11_15.nc
SB_SClampSpacer625Op1_v11_15.nc
SB_SClampSpacer880Op1_v11_15.nc
SB_SC_spacer12_Op2_v11_15.nc
SB_SC_spacer25_Op2_v11_15.nc
SB_SClampDriveClevisOp1_v11_15.nc
SB_SClampDriveClevisOp2_v11_15.nc
SB_SClampEndClevisOp1_v11_15.nc
SB_SClampEndClevisOp2_v11_15.nc
EOF
} |while read i
do
    o_number=$(grep -o '^O[0-9]*' $i)
    #output_file_name="/Volumes/NO NAME/$o_number.txt"
    output_file_name="/Volumes/CNC/$o_number.txt"
    echo "copying ${i} as '${output_file_name}'"
    cp -v ${i:?} "${output_file_name:?}"
done

#ls -lrta "/Volumes/NO NAME/"*.txt
ls -lrta "/Volumes/CNC/"*.txt
head -3 /Volumes/NO\ NAME/O142*.txt
