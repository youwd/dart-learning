# 函数、类与运算符
## 1. 函数
   
- 函数也是对象，它的类型叫作`Function`。这意味着函数也可以被定义为变量，甚至可以被定义为参数传递给另一个函数。
- 如果函数只有一行表达式，可以用箭头函数来简化函数
   
    + `bool isZero(int number) => number == 0;`
    + `
        bool isZero(int number) {
            return number == 0;
        }
    `
- 可选命名参数和可选参数

    + 给参数增加{}：`void enable1Flags({bool blod,bool hidden}) => print("$blod,$hidden");`
    + 给参数增加[]：`void enable1Flags2(bool blod,[bool hidden]) => print("$blod,$hidden");`
## 2. 类
   
   类是特定类型的数据和方法的集合，也是创建对象的模版。
- 类的定义与初始化
   
   + Dart中没有public、protected、private这些关键字，只要在变量与方法前加`_`可作为private，否则默认为public
   +  类的定义与使用
        ```dart
        class Point {
            num x, y;
            static num factor = 0;
            // 语法糖，等同于在函数体内：this.x = x;this.y = y;
            Point(this.x,this.y);
            void printInfo() => print('($x, $y)');
            static void printZValue() => print('$factor');
        }

        var p = new Point(100,200); // new 关键字可以省略
        p.printInfo();  // 输出 (100, 200);
        Point.factor = 10;
        Point.printZValue(); // 输出 10
        ```
+ 类的继承和接口实现
    - 继承父类: 子类由父类派生，会自动获取父类的成员变量和方法实现，子类可以根据需要复写构造函数与父类方法
    - 接口实现: 子类获取到仅仅是接口的成员变量符号和方法符号，需要重新实现成员变量，以及方法的申明与初始化，否则编译器**报错**
    - 类的复用（`with`关键字）：混入(`Mixin`)。混入鼓励代码重用，可以被是为具有实现方法的接口。
## 3. 运算符
- `?.`运算符：与angular中html绑定数据时差不多，如果该类中没有某个变量，则可以使用`p?.printInfo()`，避免抛出异常。
- `??=`运算符：如果a为**null**，则给a赋值value，否则跳过。**`a??=value`**.
- `??`运算符：如果a不为null，则返回a的值，否则返回b。类似三元运算符 `a!==null?a:b` => dart: **`a??b`**
- 运算符可以覆写成自定义

