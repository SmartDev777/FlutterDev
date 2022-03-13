void main(List<String> args) {
  
Map<dynamic,dynamic> data=
{'name':'touseeq',
'occupation':'developer',
'lang':['english','urdu']
};
print(data);
print(data.keys);  //only get keys
print(data.values); //only get values

print(data['name']);  //get value from name key 
print(data['lang'][0]);

//Store the map into the list

List arr=[1,2,4,data];
print(arr[3]['lang'][1]);

}