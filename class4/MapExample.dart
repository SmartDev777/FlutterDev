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


// Put the value into map if absent otherwise print previous
//fav_os is key 
data.putIfAbsent("fav_os", () => "Android");
print(data);

//remov the value from map 

data.remove('occupation');
print(data);

//remove where
data.removeWhere((key, value) =>  )
}