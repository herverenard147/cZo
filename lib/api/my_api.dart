import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/models/produit/produit.dart';
class CallApi{
  final String _url = 'http://127.0.0.1:8000';
  // http://127.0.0.1:8000"
  final String _imgUrl='http://mark.dbestech.com/uploads/';
  
  var produit = Produit;
  final  bool edit = false;
  // private namespace = "agent";
  // private url = "private/agent";
  // private urlBase = environment.publicUrl;
  getImage(){
    return _imgUrl;
  }
  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl + await _getToken();
    return await http.post(
        Uri.parse(fullUrl),
        body: jsonEncode(data),
        headers: _setHeaders()
    );
  }
  

  add(data) async {
    if (data.uuid) {
      return this.update(data);
    } else {
      return this.create(data);
    }
  }
  update(apiUrl) async {
    var fullUrl = _url + apiUrl + await _getToken();
    // return this.api._post(`${this.url}/${data.uuid}/edit`, data).pipe(
    //   map((response: any) => response),
    //   catchError((error: any) => throwError(error))
    // );
     return await http.post(
        Uri.parse(fullUrl),
        headers: _setHeaders()
    );
  }
  
  create(apiUrl) async {
    var fullUrl = _url + apiUrl + await _getToken();
    // return this.api._post(`${this.url}/new`, data).pipe(
    //   map((response: any) => response),
    //   catchError((error: any) => throwError(error))
    // );
    return await http.post(
        Uri.parse(fullUrl),
        headers: _setHeaders()
    );
  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl + await _getToken() ;
    return await http.get(
        Uri.parse(fullUrl),
        headers: _setHeaders()
    );
  }

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
  };

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return '?token=$token';
  }


  getArticles(apiUrl) async {

  }
  getPublicData(apiUrl) async {

  }

  // setAgent(agent) {
  //   this.agent = agent;
  // }

  // Type getAgent()  {
  //   return this.agent;
  // }


  // Observable<any> update( ArticleInfo data)  {
  //   return this.api._post(`${this.url}/${data.uuid}/edit`, data).pipe(
  //     map((response: any) => response),
  //     catchError((error: any) => throwError(error))
  //   );
  // }

  // getList(): Observable<Agent[]> {
  //   return this.api._get(`${this.url}/`).pipe(
  //     map((response: any) => response),
  //     catchError((error: any) => throwError(error))
  //   );
  // }

  // getSingle(uuid: string): Observable<Agent> {
  //   return this.api._get(`${this.url}/${uuid}/show`).pipe(
  //     map((response: any) => response.data),
  //     catchError((error: any) => throwError(error))
  //   );
  // }

  // getDelete(uuid: string): Observable<any> {
  //   return this.api._delete(`${this.url}/${uuid}/delete`).pipe(
  //     map((response: any) => response),
  //     catchError((error: any) => throwError(error))
  //   );
  // }

  // getPrinter(type: string,  userKey: string, data: any): void {
  //   let url = 'printer/' + this.namespace + '/'  + userKey;
  //   if(type === 'LISTE') {
  //     if(data && data !== undefined) {
  //       for (const k in data) {
  //         if (data.hasOwnProperty(k)) {
  //           if(k !== 'uuid') {
  //             url += '/' + data[k];
  //           }
  //         }
  //       }
  //     } else {
  //       url += '/AGENT/null/'
  //     }
  //   }
  //   if(type === 'SHOW') {
  //     url = (data) ? url +'/' + data : url;
  //   }
  //   window.open(`${this.urlBase}/${url}`, '_blank');
  // }

  // getExport( userKey: string, data: any): void {
  //   let url = 'export/agent/' + userKey;
  //   if(data && data !== undefined) {
  //     for (const k in data) {
  //       if (data.hasOwnProperty(k)) {
  //         if(k !== 'uuid') {
  //           url += '/' + data[k];
  //         }
  //       }
  //     }
  //   } else {
  //     url += '/AGENT/null/null/null/null/null/null/null/DESC/null/null/null/null/10/null'
  //   }
  //   window.open(`${this.urlBase}/${url}`);
  // }
}