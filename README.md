# Basic Flutter projects
- Find basic flutter projects in this Repository


## Flutter :
 - Flutter is not a programming language.
  - It's a software development kit (SDK) with prewritten code
    - consisting of ready-to-use 
        - customizable widgets
        - libraries 
        - tools to build cross-platform apps.
 - Flutter apps are written in the Dart programming language
    - Dart was one of the programming language introduced by Google.
    - Dart is a client-optimized language for developing fast apps on any platform.



<details> 
    <summary> <h2>Flutter Basics :</h2> </summary>
    <br/>

### Text Widget

```dart
body:  Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey[600],
                fontFamily: 'IndieFlower',
              )
            ),
```

### Image Widget🌅

```dart
child: Image(
                  image: AssetImage('Asset/1.webp'),
              ),
          // alternative
child: Image.asset('Asset/1.webp'),
```

### How to make an App Bar

```dart
appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
        ),
```

### How to add Icons 😎

```dart
body:  Center(
            child: Icon(
              Icons.airplane_ticket,
              color: Colors.amberAccent,
              size: 50.0,
            )

        ),
```

### How to add Buttons

```dart
//RaisedButton :

body:  Center(
            child: RaisedButton(
              onPressed: (){
                                        print('Button Clicked');
                                },
              child: Text('Click me'),
              color: Colors.amberAccent ,
            )

//FlatButton :

body:  Center(
            child: FlatButton(
              onPressed: (){},
              child: Text('Click me'),
              color: Colors.amberAccent ,
            )
```

### How to merge Icon & Button widget

```dart
body:  Center(
            child: RaisedButton.icon(
              onPressed: (){},
              icon: Icon(
                Icons.mail,
              ),
              label: Text('Mail Me'),
              color: Colors.amberAccent ,
            )

        ),
```

### How to make an icon Button

```dart
body:  Center(
            child: IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.alternate_email,
              ),
              color: Colors.red[600] ,
            )

        ),
```

### How to Give padding

```dart
// padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
   padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
// padding: EdgeInsets.all(20.0),
```

### How to Give padding & Margin

```dart
body: Container(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
          // padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          // padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(30.0),
            color: Colors.grey[500],
            child: IconButton(
              onPressed: (){
                print('fish');
              },
              icon: Icon(
                Icons.alternate_email,
              ),
              color: Colors.red[600] ,
            )

        ),
```

### How to padding to a single component like text

```dart
//Use Padding widget in this case instead of container widget 
Padding(
          padding: EdgeInsets.all(90.0),
          child: Text('Hello world'),
        ),
```

### How to manage Alignments in [MainAxis] or Horizontal

```dart
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
mainAxisAlignment: MainAxisAlignment.spaceAround, 
mainAxisAlignment: MainAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.end,
```

### How to manage Alignments in [CrossAxis] or Virtical

```dart
crossAxisAlignment: CrossAxisAlignment.end,
crossAxisAlignment: CrossAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.stretch,
```

### How to use Rows to have multiple widget together

```dart
body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Hello world'),
            FlatButton(
                onPressed: (){},
                color: Colors.red[600],
                child: Text('click me')
            ),
            Container(
              color: Colors.green[200],
              padding: EdgeInsets.all(30.0),
              child:
              Text(
                'How is it going on man',
              style: TextStyle(
                color: Colors.green[800],
              ),
            ),
            ),
          ],
        ),
```

### How to use Column

```dart
Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,

          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.green,
              child: Text('1'),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('2'),
            ),
            Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.red,
              child: Text('3'),
            ),
          ],
        ),
```

### How to use Expanded Widgets

```dart
Row(
          children: <Widget>[
            Expanded(
                child: Image.asset('Asset/1.webp'),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.red[600],
                child: Text('1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text('2'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.orange[800],
                child: Text('3'),
              ),
            ),
          ],
        ),
```

    
    
 </details>
