# YouTube_Video_Display
<img src="https://user-images.githubusercontent.com/73152930/100314065-d999a300-2fdb-11eb-8553-3527340d555c.gif" width="300">

### YouTube like Picture-In-Picture interface in Flutter.

## How to Use
#### Add dependencies to pubspec.yaml file :- 
   ```
dependencies:
          easy_pip: ^0.1.0
```
Import to main.dart :-
     `import 'package:easy_pip/easy_pip.dart';`
     
Add these codes inside the **body** of the **Scaffold** :-

```
PIPStack(
        backgroundWidget: Center(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                isEnabled = !isEnabled;
              });
            },
            child: Text('Click here to enable PIP'),
          ),
        ),
        pipWidget: isEnabled
            ? Container(
                color: Colors.pink,
              )
            : Container(),
        pipEnabled: isEnabled,
        pipExpandedContent: Card(
          color: Colors.white,
          child: Column(
            children: [
              Text(
                'Sannidhya Kushwaha',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(),
            ],
          ),
        ),
        onClosed: () {
          setState(() {
            isEnabled = !isEnabled;
          });
        },
      ),
```

