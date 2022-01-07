state("Spectrolite-Win64-Shipping")
{
    int portalNumber: 0x041C75A8, 0x58, 0x200;
    int loadingScreen: 0x041C6728, 0x8, 0x140;
}

start
{   
   if(current.portalNumber == 1){
       return true;
   } 
}

isLoading
{
    if(current.loadingScreen == 123){
        return true;
    }
    if(current.loadingScreen == 0){
        return false;
    }
}

split
{
    if(current.portalNumber > old.portalNumber){
        return true;
    }
}

reset
{
    if(current.portalNumber < old.portalNumber){
        return true;
    }

}
