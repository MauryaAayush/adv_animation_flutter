import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Color?> _colorAnimation;
  bool _isAnimated = false;
  double _opacity = 1.0;
  AlignmentGeometry _alignment = Alignment.center;
  bool _isFirst = true;
  bool _isSwitched = false;
  double _size = 100.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _colorAnimation = ColorTween(
      begin: Colors.orange,
      end: Colors.pink,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: _isAnimated ? 200.0 : 100.0,
              height: _isAnimated ? 200.0 : 100.0,
              color: _isAnimated ? Colors.blue : Colors.red,
              child: Center(child: Text('AnimatedContainer')),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isAnimated = !_isAnimated;
                });
              },
              child: Text('Toggle AnimatedContainer'),
            ),
            const SizedBox(height: 20.0),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
                child: Center(child: Text('AnimatedOpacity')),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacity = _opacity == 1.0 ? 0.0 : 1.0;
                });
              },
              child: Text('Toggle AnimatedOpacity'),
            ),
            const SizedBox(height: 20.0),
            AnimatedAlign(
              alignment: _alignment,
              duration: Duration(seconds: 1),
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.purple,
                child: Center(child: Text('AnimatedAlign')),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _alignment = _alignment == Alignment.center
                      ? Alignment.topRight
                      : Alignment.center;
                });
              },
              child: Text('Toggle AnimatedAlign'),
            ),
            const SizedBox(height: 20.0),
            AnimatedCrossFade(
              duration: Duration(seconds: 1),
              firstChild: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.orange,
                child: Center(child: Text('First')),
              ),
              secondChild: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.pink,
                child: Center(child: Text('Second')),
              ),
              crossFadeState: _isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFirst = !_isFirst;
                });
              },
              child: Text('Toggle AnimatedCrossFade'),
            ),
            const SizedBox(height: 20.0),
            AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: _isSwitched
                  ? Container(
                key: ValueKey(1),
                width: 100.0,
                height: 100.0,
                color: Colors.teal,
                child: Center(child: Text('Switched')),
              )
                  : Container(
                key: ValueKey(2),
                width: 100.0,
                height: 100.0,
                color: Colors.lime,
                child: Center(child: Text('Not Switched')),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isSwitched = !_isSwitched;
                });
              },
              child: Text('Toggle AnimatedSwitcher'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _startAnimation,
              child: Text('Start Fade and Color Transition'),
            ),
            const SizedBox(height: 20.0),
            FadeTransition(
              opacity: _animation,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: _colorAnimation.value,
                child: Center(child: Text('Fade and Color Transition')),
              ),
            ),
            const SizedBox(height: 20.0),
            AnimatedSize(
              duration: Duration(seconds: 1),

              child: Container(
                width: _size,
                height: _size,
                color: Colors.blueGrey,
                child: Center(child: Text('AnimatedSize')),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _size = _size == 100.0 ? 200.0 : 100.0;
                });
              },
              child: Text('Toggle AnimatedSize'),
            ),
          ],
        ),
      ),
    );
  }
}
