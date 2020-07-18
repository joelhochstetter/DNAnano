#!/bin/sh
pwd


set oxPath = ~/Documents/DNAnano/oxDNA/
cd $oxPath/NewPore/CinchesvsConnectors1/


#set-up sequences
foreach l ( 120 160 )

    mkdir len$l
    python3 $oxPath/NewPore/Scripts/changeTether.py pore.json $l 6 7 9 8
    mv pore*$l*.json len$l
    cd len$l
    
    mkdir free
    mv pore*$l*.json free    
    cd free    
    

    #generate sequences
    @ P = (242 - $l)    
    python3 $oxPath/MyScripts/generateSeqFile.py pore*$l*.json $oxPath/NewPore/VaryTethLen3/p7249.txt $P
        
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    
    cd ../..
    
    python3 $oxPath/NewPore/Scripts/changeTether.py poreWith1Connector.json $l 6 7 9 8   
    mv poreWith1Connector*$l*.json len$l
    cd len$l
    mkdir connector1
    mv poreWith1Connector*$l*.json connector1    
    cd connector1
    
    #generate sequences
    @ P = (242 - $l)    
    python3 $oxPath/MyScripts/generateSeqFile.py poreWith1Connector*$l*.json $oxPath/NewPore/VaryTethLen3/p7249.txt $P
        
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    
    
    cd ../..
    
    python3 $oxPath/NewPore/Scripts/changeTether.py poreWith3Connectors.json $l 6 7 9 8   
    mv poreWith3Connectors*$l*.json len$l
    cd len$l
    mkdir connector3
    mv poreWith3Connectors*$l*.json connector3    
    cd connector3
    
    #generate sequences
    @ P = (242 - $l)    
    python3 $oxPath/MyScripts/generateSeqFile.py poreWith3Connectors*$l*.json $oxPath/NewPore/VaryTethLen3/p7249.txt $P
        
    #json to oxDNA
    python2.7 $oxPath/UTILS/cadnano_interface.py *.json he 100
    
            
    cd ../..  
    
    @ cl1 = ($l - 36)
    @ cl2 = ($l - 78)        
    
    foreach cl ( $cl1 $cl2 )
        foreach s ( 5 10 )
            python3 $oxPath/NewPore/Scripts/changeTether.py pore.json $l 6 7 9 8
            mv pore*$l*.json len$l
            cd len$l
            mkdir 'cinches_cl'$cl'_s'$s
            mv pore*$l*.json 'cinches_cl'$cl'_s'$s    
            cd 'cinches_cl'$cl'_s'$s
            python3 $oxPath/NewPore/Scripts/addCinches.py pore*$l*.json $l 6 7 9 8 $cl $s
            
            #generate sequences
            @ P = (242 - $l)    
            python3 $oxPath/MyScripts/generateSeqFile.py pore*n*c*s*.json $oxPath/NewPore/VaryTethLen3/p7249.txt $P
        
            #json to oxDNA
            python2.7 $oxPath/UTILS/cadnano_interface.py pore*n*c*s*.json he 100
            cd ../..  
        end
    end
    
    #echo 'Initialising pore'
    #source $oxPath/NewPore/Scripts/init_pore.csh     
end
    
