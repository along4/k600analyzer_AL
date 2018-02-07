#!/bin/bash

############################################################
#
#	shell script
#	
#
############################################################

rm -rf sortedRun*.root

for i in `seq 047 051`;

do
	if (($i < 10))
		then
		./analyzer -i /afs/crc.nd.edu/group/nsl/ast/vol/astVol02/projects/iThemba/PR242/Midas_Files/run0200$i.mid.gz
		mv output.root sortedRun200$i.root
	fi

	if (($i < 100 )) && (($i > 10))
		then
		./analyzer -i /afs/crc.nd.edu/group/nsl/ast/vol/astVol02/projects/iThemba/PR242/Midas_Files/run020$i.mid.gz
		mv output.root sortedRun20$i.root
	fi

	if (($i > 100 ))
		then
		./analyzer -i /afs/crc.nd.edu/group/nsl/ast/vol/astVol02/projects/iThemba/PR242/Midas_Files/run02$i.mid.gz
		mv output.root sortedRun2$i.root
	fi
done


mv sortedRun* /afs/crc.nd.edu/group/nsl/ast/vol/astVol02/projects/iThemba/PR242/rootFiles/secondWeekend/
