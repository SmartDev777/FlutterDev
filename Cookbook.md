
# Flutter Cookbook

Usefull code would be place in it 


## Rounded Button 

```dart

ElevatedButton(
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30), // <-- Radius
    ),),onPressed: () {},
    child: Text("Login, style: TextStyle(fontSize: 25),))

```



## Add Vertical Space

```dart
SizedBox(height: 50,),
```

## Gradient Color  Container 

```dart
BoxDecoration(gradient: LinearGradient(
begin: Alignment.topRight,
end: Alignment.bottomLeft,
colors: [Colors.blueGrey,Colors.white,]))
```

## Rouned Container 

```dart
BoxDecoration(
    borderRadius: BorderRadius.circular(20), 
    color: Colors.white)

```
## Load image from Network 

```dart
Image.network("<URL>")

```

## Text with Styling 

```dart

Text("Sign In",
  textAlign: TextAlign.start,  //used for alignment 
  style: TextStyle(
  color: Colors.deepPurple,
  fontWeight: FontWeight.bold,
  fontSize: 30))
```

## Text Input field decoration

```
InputDecoration getTextField(hint, icon) {
  return InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.deepPurple,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      filled: true,
      hintStyle: TextStyle(color: Colors.grey),
      hintText: hint,
      fillColor: Colors.white);
}
```
## Width of whole screen 

```
width: MediaQuery.of(context).size.width,

```

## Padding And Margin 

```
//  Symetric for either Vertical or horizontal

 padding: EdgeInsets.only(top: 20)
 padding: EdgeInsets.symmetric(horizontal: 10),
 margin: EdgeInsets.only(top: 20)
```

## Tabs Pager

```
// Add in root of screen

DefaultTabController(length: 4,
        child: Scaffold(appBar: AppBar(
              backgroundColor: AppColors.app_bg_color,
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [Tab(text: "Home",),],),),
            backgroundColor: AppColors.app_bg_color,
            body: TabBarView(
              children: [ <Views>],)),),
```

## Listview Builder

```
ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 5,
          shrinkWrap: true,  //when used in column
          scrollDirection: Axis.horizontal,  //for direction
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],);}),

```
## Circle Image Inside Container 

```
 Container(width: 90.0,height: 90.0,
decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
            fit: BoxFit.fitWidth,
            image: new AssetImage(AppAssets.img_profile))),)
```

## Circle Image 

```
CircleAvatar(
  radius: 30,
  backgroundImage: AssetImage(AppAssets.img_profile),)
```

## Stack Widget

```
Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned(
                    child: CircleAvatar(
                      radius: 3,
                      backgroundColor: AppColors.btn_bg_dark,
                    ),
                    right: 3,
                  ),
                  Image.asset(AppAssets.icon_notification),
                ],
              )
```
## Navigate To Next screen

```
 Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => const NotificationScreen()), );
```

## GridView Count 

```
GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 5,
            // crossAxisSpacing: 30,
            childAspectRatio: 4.0,
            // scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            children: [],),
```


## List Tile 

```
 ListTile(
   leading: Icon(
   Icons.email,
  color: Colors.white,),
  title: Text("All Transactions",
  style: TextStyle(color: AppColors.large_text_color,
  fontSize: 20,fontWeight: FontWeight.w500),),
  trailing: Icon(Icons.arrow_forward, color: Colors.white),)
```

## Make Scrollable

```
 SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(width: 200,height: 300,color: Colors.green,),
    
            ],
          ),
        ),
```

## AppBar
```
AppBar(
        title: Text(""),
        actions: [
          Icon(Icons.ac_unit_outlined)],
      )
```

## Vertical Children (Column)

## horizontal Children (Row)

```

 Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [],
        ),

```

## Back From screen

```
Navigator.of(context).pop();
```

## CLipR Rect 

```

 ClipRRect(
           
            // decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              //  color: Colors.amber,
            // ),
            child:Image.asset('assets/images/image1.jpg')  //load image from assets
          )
```

## Icon 

```
Icon(Icons.edit,color: Colors.white,)
```

## Delay in Flutter

```
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotApp()),
            ));
```

## Firebase Setup 

```
firebase_auth: ^3.4.2
  firebase_core: ^1.19.2

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

```

## Sign in Firebase 

```
 try {
 final credential = await FirebaseAuth.instance
.signInWithEmailAndPassword(
   email: emailControler.text,
      password: pwdController.text);
      Navigator.push(context,
     MaterialPageRoute(builder: (context) => MyHomePage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
     print('No user found for that email.');
     } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
     }
   }
```


## Sign Up Firebase 

```

  signupWithFirebase() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
```
## Dropdown 

```
 DropdownButton(
              // Initial Value
              value: dropdownvalue,

              isDense: true,
              isExpanded: true,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                  print(dropdownvalue);
                });
              },
            ),

```

## Container Shadow 

```

 boxShadow: [
 BoxShadow(
  color: AppColors.line_color,
blurRadius: 4,
offset: Offset(4, 8), // Shadow position
 ),
 ],
```
## Gridview Builder 

```
GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 10,
                itemBuilder: (BuildContext ctx, index) {
                  return Card();
                }),
```
