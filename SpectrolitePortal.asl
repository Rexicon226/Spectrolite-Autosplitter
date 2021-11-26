state("Spectrolite-Win64-Shipping")
{
    int portalNumber: 0x041C13E8, 0x8, 0x128; 
}

start
{   
   if(current.portalNumber > old.portalNumber){
       return true;
   } 
}

split
{
   if(current.portalNumber > old.portalNumber){
        return true;
   }  
}




