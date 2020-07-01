#!/bin/sh
pwd


set oxPath = ~/Documents/DNAnano/oxDNA/
cd $oxPath/NewPore/VaryTethLen4AssymetricBarrel/


#set-up sequences
foreach l ( 15 30 45 60 75 90 105 120 135 150 )
    mkdir len$l
    python3 $oxPath/NewPore/Scripts/changeTether.py pore.json $l 6 7 9 8
    mv pore*$l*.json len$l
    cd len$l
    
    mkdir ogSeq
    cp pore*$l*.json ogSeq    
    cd ogSeq    
    

    #generate sequences
    @ P = (242 - $l)    
    python3 $oxPath/MyScripts/generateSeqFile.py pore*$l*.json $oxPath/NewPore/VaryTethLen3/p7249.txt $P
        
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    
    cd ..
    mkdir shiftSeq700
    cp pore*$l*.json shiftSeq700    
    cd shiftSeq700
    
    #generate sequences
    @ P = (942 - $l)    
    python3 $oxPath/MyScripts/generateSeqFile.py pore*$l*.json $oxPath/NewPore/VaryTethLen3/p7249.txt $P
        
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100    


    cd ..
    mkdir tethAllT
    cp pore*$l*.json tethAllT    
    cd tethAllT
    
    #generate sequences
    @ P = (242 - $l)    
    python3 $oxPath/MyScripts/generateSeqFile.py pore*$l*.json $oxPath/NewPore/VaryTethLen3/p7249.txt $P
    python3 $oxPath/MyScripts/rowSqsSameNt.py caca.sqs pore*$l*.json T 6 7 8 9    
        
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100    

    
    #echo 'Initialising pore'
    #source $oxPath/NewPore/Scripts/init_pore.csh     
    cd ../..
end
    
