# 属性详解
属性是属于Objective-C的一个新机制，主要的作用是用来封装对象中的数据；

##1.属性简介
        @property = ivar(实例变量) + getter + setter
        完成属性定以后，编译器会自动生成该属性对应的一个实例变量（_<key>）,以及该属性的getter方法和setter方法，此过程叫“自
    动合成”，是在编译期完成的。属性定义完成后，实例变量就通过存取方法（seeter，getter）方法来访问。
##2.属性的实现
        属性在实现的过程中，大致生成了5个东西
        ① OBJC_IVAR_$类名$属性名称：该属性的偏移量，表示该属性距存放对象的内存区域的起始地址有多远；
        ② setter与getter方法对应的实现函数；
        ③ ivar_list: 成员变量列表；
        ④ method_list：方法列表；
        ⑤ prop_list：属性列表；
        每次增加一个属性，系统都会在ivar_list中增加一个成员变量的描述，在method_list中增加setter和getter方法的描述，在prop_
    list中增加一个属性的描述，然后计算出该属性的偏移量，给出setter和getter方法的实现（setter方法中从偏移量的位置开始赋值，在
    getter方法中从偏移量的位置开始取值）。
##3.在protocol与category中使用属性
        ① 在protocol中使用属性，只会生成setter与getter方法的声明，而遵守该协议的对象必须实现该属性；
        ② 在category中使用属性，也只会生成setter与getter方法的声明，而且也不会生成属性对应的实例变量，如果要增加属性的实现，
    需借助俩那个方法
            objc_setAssociatedObject
            objc_getAssociatedObject
