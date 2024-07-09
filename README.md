# Animation Flutter

A simple matching game built with Flutter. The game involves matching parts of images of fruits to their corresponding halves. The game displays an alert dialog when the player either wins by matching all parts correctly or loses after exhausting all attempts.

## Features

- Drag and match items
- Simple and intuitive UI
- Easy to understand and extend

## Code Sample

```dart
import 'package:flutter/material.dart';

void main() => runApp(MatchingGame());

class MatchingGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Matching Game')),
        body: MatchingGameScreen(),
      ),
    );
  }
}

class MatchingGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Draggable<int>(
            data: 1,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(child: Text('Drag me')),
            ),
            feedback: Container(
              width: 100,
              height: 100,
              color: Colors.blue.withOpacity(0.5),
              child: Center(child: Text('Drag me')),
            ),
            childWhenDragging: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
              child: Center(child: Text('Dragging')),
            ),
          ),
          SizedBox(height: 50),
          DragTarget<int>(
            builder: (context, candidateData, rejectedData) {
              return Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('Target')),
              );
            },
            onAccept: (data) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Matched!'),
              ));
            },
          ),
        ],
      ),
    );
  }
}
```


### 
<h3 align="center"><i>Images</i></h3>

###

<div align="center">

<img src="https://github.com/MauryaAayush/adv_animation_flutter/assets/143180849/cbb2ec4f-bb15-4bab-9e0a-e2d81a5028cd" height=500px hspace=20>
<img src="https://github.com/MauryaAayush/adv_animation_flutter/assets/143180849/35df12c4-7fe9-4cb2-8825-5f867ce31d24" height=500px hspace=20>

</div>

###
<h3 align="center"><i>Video</i></h3>
<div align="center">    
<video src = "https://github.com/MauryaAayush/adv_animation_flutter/assets/143180849/b217e9ca-2d46-40fa-9a34-d6978089a901">
</div>


###
<div align="center">
<a href="https://github.com/MauryaAayush/adv_animation_flutter">-> 👉📚 See The Code 📚 👈<-</a>
</div>
