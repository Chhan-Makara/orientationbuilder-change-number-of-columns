#orientationbuilder
To determine the app's current Orientation, use the OrientationBuilder widget. The OrientationBuilder calculates the current Orientation by comparing the width and height available to the parent widget, and rebuilds when the size of the parent changes.

Using the Orientation, build a list that displays two columns in portrait mode, or three columns in landscape mode
#examplecode
body: OrientationBuilder(
  builder: (context, orientation) {
    return GridView.count(
      // Create a grid with 2 columns in portrait mode,
      // or 3 columns in landscape mode.
      crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
    );
  },
),

![Screenshot 2025-02-26 145151](https://github.com/user-attachments/assets/1ce1f1e5-7aab-4a24-a695-f67f098fe7d4)
![Screenshot 2025-02-26 145214](https://github.com/user-attachments/assets/463ed660-3b0c-460c-bb51-425452de3d9a)
