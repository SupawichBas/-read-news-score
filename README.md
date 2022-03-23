# อ่านข่าวให้คะแนน

A new Flutter project.

## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

### IMPORTANT:

For projects with Firestore integration, you must first run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

### Use Case Diagram:

![62020741 - Page 1 (1)](https://user-images.githubusercontent.com/86650262/159618180-723cdd44-9ef2-48bb-bff5-086c354bf72c.jpg)

### User Interface Design:

หน้าล็อกอิน

![1](https://user-images.githubusercontent.com/86650262/159619021-5a56b59b-20ef-4c66-ba8e-30af0535203b.png)

หน้าแรก

![2](https://user-images.githubusercontent.com/86650262/159619449-ff9eb5c5-e349-46b7-9d08-26b93170cd12.png)

หน้าค้นหา

![3](https://user-images.githubusercontent.com/86650262/159619471-08f139d1-bad6-4394-a357-2e85b6fa0c24.png)

หน้าติดตาม

![4](https://user-images.githubusercontent.com/86650262/159619513-4d45c7b7-8bf1-40ea-88b5-349aaf2cb72e.png)

หน้าตั้งค่า

![5](https://user-images.githubusercontent.com/86650262/159619530-96322186-e382-4e61-8007-da250b8e4951.png)

หน้าเขียนบทความ

![6](https://user-images.githubusercontent.com/86650262/159619533-414ad272-aa68-4d88-a531-2a6282cd0a80.png)

หน้าเพิ่มบทความ

![7](https://user-images.githubusercontent.com/86650262/159619547-52081ade-c512-4909-863c-7e0339ca221b.png)
