import 'dart:convert';
import 'package:esigstagran/api/EsigApi.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'HomeStore.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {

  ObservableList<EsigApi> esigApi;

  @observable
  bool isLoaded = true;

  @action
  Future<Map> getApi() async{
    esigApi = ObservableList();
    var response = await http.get("https://jsonplaceholder.typicode.com/posts");
    if(response.statusCode == 200){
      var decode = json.decode(response.body);
      decode.forEach((item){
        esigApi.add(EsigApi.fromJson(item));
      });
    }else{
      print("erro no carregamento da lista");
      return null;
    }
  }

}