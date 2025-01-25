



class FarmerSignup {

    final String name ;
    final String villege ;
    final String phoneNum ;
    final String district ;
    final String taluka ;
    final String farmArea ;
    
    const FarmerSignup({required this.name , required this.villege , required this.district , required this.taluka , required this.farmArea , required this.phoneNum});

    Map toMap(){
      return {
        "name":name ,
        "villege":villege,
        "district":district,
        "taluka":taluka,
        "farmArea":farmArea,
        "phoneNum":phoneNum
      };
    }

}