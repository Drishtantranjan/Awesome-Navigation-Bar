
# Awesome Navigation Bar

`awesome_navigation_bar` is a Flutter package that provides a  user-friendly bottom navigation bar widget. This widget is designed to simplify the implementation of a bottom navigation bar with icons, labels, and animations for your Flutter applications.

![Awesome Navigation Bar](/gif/awesome_navigation_bar.gif)

## Installation

#### 1. To use this package, add `awesome_navigation_bar` as a dependency in your `pubspec.yaml` file:


```yaml
dependencies:
  awesome_navigation_bar: ^1.0.0
```
#### 2. Import the package and use it in your Flutter App:


```yaml
import 'package:awesome_navigation_bar/awesome_navigation_bar.dart';
```
## Example

```yaml
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Initial index

  void _onNavigationBarItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _getBodyContent(_currentIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic for the floating action button here
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: AwesomeNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onNavigationBarItemTapped,
      ),
    );
  }

  Widget _getBodyContent(int currentIndex) {
    // Add your logic for different pages based on the currentIndex
    switch (currentIndex) {
      case 0:
        return const Center(
          child: Text('Home Page'),
        );
      case 1:
        return const Center(
          child: Text('Template Page'),
        );
      case 2:
        return const Center(
          child: Text('Top Page'),
        );
      case 3:
        return Container(); // Your custom page for index 3
      case 4:
        return const Center(
          child: Text('Settings Page'),
        );
      default:
        return Container();
    }
  }
}
```
### Contributions
Feel free to contribute to this project by creating issues, opening pull requests, or providing feedback. Your input is valuable, and together we can make this package even more awesome!


