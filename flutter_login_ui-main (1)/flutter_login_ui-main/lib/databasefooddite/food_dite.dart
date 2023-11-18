

import 'package:flutter_login_ui/pages/component/crud.dart';
// ignore: unused_import
import 'package:flutter_login_ui/constant/link.dart';

class myfooddite{
  Crud crud;
  myfooddite(this.crud);
  getData(String id) async{
    
    var response = await  crud.postRequest(linkfooddite,{"id" :id});
    return response.fold((l) => l,(r)=> r);
  }
}