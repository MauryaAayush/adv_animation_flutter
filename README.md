# Animation Flutter

 ##  
  <h2 align = "center">Lecture-1 -> Draggable and DragTarget</h2>

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


 ##  
  <h2 align = "center">Lecture-2 -> Hero Widget </h2>
## Hero Widget
The Hero widget in Flutter is used for creating a smooth and visually appealing transition between two widgets. It's often used when navigating from one screen to another where an element from the first screen transforms into an element on the second screen.

### 
<h3 align="center"><i>Images</i></h3>

###

<div align="center">

<img src="https://github.com/MauryaAayush/adv_animation_flutter/assets/143180849/900f521e-6037-42fa-82f9-4ee2742a0293" height=500px hspace=20>
<img src="https://github.com/MauryaAayush/adv_animation_flutter/assets/143180849/25d903b2-6947-4d4a-8c6e-daab9c2d9a1d" height=500px hspace=20>

</div>

###
<h3 align="center"><i>Video</i></h3>
<div align="center"> 
<video src = "https://github.com/MauryaAayush/adv_animation_flutter/assets/143180849/b02efd2b-5946-4434-9d60-6f286879807b">
</div>

###
<div align="center">
    <a href="https://github.com/MauryaAayush/adv_animation_flutter/tree/master/lib/Daily_task/Day2(Hero)">👉 📚 Go to dart file 📚 👈</a>
</div>
