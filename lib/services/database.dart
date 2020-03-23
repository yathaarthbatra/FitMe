import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp1/models/database%20model.dart';

class DatabaseService{//created a user defined class


  final String uid;
  DatabaseService({this.uid});//this uid have value when the instance of the
  //database service has called


  final CollectionReference UsersCollection=Firestore.instance.collection('Users');
  //collection reference: A reference to the collection
  //so that we can access it
//we can add ,update and delete data from the collection through collection
// reference.

 Future UpdateUserdata(String email,String gender,var age,var height,var weight) async{
   return await UsersCollection.document(uid).setData({
     'email':email, //on LHs we have keys which are in the document
     'gender':gender,
     'age':age,   // on RHS we have the values whcih we have given
     'height':height,
     'weight':weight,

   });
 }

 //converting the snapshot into list of documents
 List<DatabaseModel> _brewList(QuerySnapshot snapshot){
   return snapshot.documents.map((doc){//map is fn that contains doc as a single document
     return DatabaseModel(
       email: doc.data['email']?? '',
       gender: doc.data['gender']??'',
       age: doc.data['age']?? 0,         //hum apne documents bna rhe hai aur unko list mei bhej rhe hai
       height: doc.data['height']?? 0,
       weight: doc.data['weight']??0
     );
   }).toList();//this will return user defined documents
 }
//

   //inside the database class
   Stream<List<DatabaseModel>> get details{//to access the data we are using streams
   return UsersCollection.snapshots().map(_brewList);//streams are carrying the snapshots of the database
   }//snapshots will return the collection

}