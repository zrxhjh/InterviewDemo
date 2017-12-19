/*
Navicat MySQL Data Transfer

Source Server         : rxliuli
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : interview_demo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-19 12:09:04
*/
DROP DATABASE IF EXISTS interview_demo;
CREATE DATABASE interview_demo;
USE interview_demo;

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id`              BIGINT(20)    NOT NULL
  COMMENT '问题的 id',
  `typeId`          BIGINT(20)    NOT NULL
  COMMENT '题目类型 id',
  `title`           VARCHAR(100)  NOT NULL
  COMMENT '题目的标题',
  `referenceAnswer` VARCHAR(1000) NOT NULL
  COMMENT '题目的参考答案',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COMMENT ='面试题目表';

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('392407827223810048', '392407827047649280', '什么是Java虚拟机？为什么Java被称作是“平台无关的编程语言”？',
                            'Java虚拟机是一个可以执行Java字节码的虚拟机进程。Java源文件被编译成能被Java虚拟机执行的字节码文件。\r\n\r\nJava被设计成允许应用程序可以运行在任意的平台，而不需要程序员为每一个平台单独重写或者是重新编译。Java虚拟机让这个变为可能，因为它知道底层硬件平台的指令长度和其他特性。');
INSERT INTO `topic` VALUES ('392407828574375936', '392407827047649280', 'JDK和JRE的区别是什么？',
                            'Java运行时环境(JRE)是将要执行Java程序的Java虚拟机。它同时也包含了执行applet需要的浏览器插件。Java开发工具包(JDK)是完整的Java软件开发包，包含了JRE，编译器和其他的工具(比如：JavaDoc，Java调试器)，可以让开发者开发、编译、执行Java应用程序。');
INSERT INTO `topic` VALUES
  ('392407828595347456', '392407827047649280', '”static”关键字是什么意思？Java中是否可以覆盖(override)一个private或者是static的方法？',
   '“static”关键字表明一个成员变量或者是成员方法可以在没有所属的类的实例变量的情况下被访问。\r\nJava中static方法不能被覆盖，因为方法覆盖是基于运行时动态绑定的，而static方法是编译时静态绑定的。static方法跟类的任何实例都不相关，所以概念上不适用。');
INSERT INTO `topic` VALUES ('392407828612124672', '392407827047649280', '是否可以在static环境中访问非static变量？',
                            'static变量在Java中是属于类的，它在所有的实例中的值是一样的。当类被Java虚拟机载入的时候，会对static变量进行初始化。如果你的代码尝试不用实例来访问非static的变量，编译器会报错，因为这些变量还没有被创建出来，还没有跟任何实例关联上。');
INSERT INTO `topic` VALUES ('392407828637290496', '392407827047649280', 'Java支持的数据类型有哪些？什么是自动拆装箱？',
                            'Java语言支持的8中基本数据类型是：\r\n\r\nbyte\r\nshort\r\nint\r\nlong\r\nfloat\r\ndouble\r\nboolean\r\nchar\r\n自动装箱是Java编译器在基本数据类型和对应的对象包装类型之间做的一个转化。比如：把int转化成Integer，double转化成double，等等。反之就是自动拆箱。');
INSERT INTO `topic` VALUES
  ('392407828666650624', '392407827047649280', 'Java中的方法覆盖(Overriding)和方法重载(Overloading)是什么意思？',
   'Java中的方法重载发生在同一个类里面两个或者是多个方法的方法名相同但是参数不同的情况。与此相对，方法覆盖是说子类重新定义了父类的方法。方法覆盖必须有相同的方法名，参数列表和返回类型。覆盖者可能不会限制它所覆盖的方法的访问。');
INSERT INTO `topic` VALUES ('392407828691816448', '392407827047649280', 'Java中，什么是构造函数？什么是构造函数重载？什么是复制构造函数？',
                            '当新对象被创建的时候，构造函数会被调用。每一个类都有构造函数。在程序员没有给类提供构造函数的情况下，Java编译器会为这个类创建一个默认的构造函数。\r\n\r\nJava中构造函数重载和方法重载很相似。可以为一个类创建多个构造函数。每一个构造函数必须有它自己唯一的参数列表。\r\n\r\nJava不支持像C++中那样的复制构造函数，这个不同点是因为如果你不自己写构造函数的情况下，Java不会创建默认的复制构造函数。');
INSERT INTO `topic`
VALUES ('392407828721176576', '392407827047649280', 'Java支持多继承么？', '不支持，Java不支持多继承。每个类都只能继承一个类，但是可以实现多个接口。');
INSERT INTO `topic` VALUES ('392407828750536704', '392407827047649280', '接口和抽象类的区别是什么？',
                            'Java提供和支持创建抽象类和接口。它们的实现有共同点，不同点在于：\r\n\r\n接口中所有的方法隐含的都是抽象的。而抽象类则可以同时包含抽象和非抽象的方法。\r\n类可以实现很多个接口，但是只能继承一个抽象类\r\n类如果要实现一个接口，它必须要实现接口声明的所有方法。但是，类可以不实现抽象类声明的所有方法，当然，在这种情况下，类也必须得声明成是抽象的。\r\n抽象类可以在不提供接口方法实现的情况下实现接口。\r\nJava接口中声明的变量默认都是final的。抽象类可以包含非final的变量。\r\nJava接口中的成员函数默认是public的。抽象类的成员函数可以是private，protected或者是public。\r\n接口是绝对抽象的，不可以被实例化。抽象类也不可以被实例化，但是，如果它包含main方法的话是可以被调用的。\r\n也可以参考JDK8中抽象类和接口的区别');
INSERT INTO `topic` VALUES ('392407828767313920', '392407827047649280', '什么是值传递和引用传递？',
                            '对象被值传递，意味着传递了对象的一个副本。因此，就算是改变了对象副本，也不会影响源对象的值。\r\n\r\n对象被引用传递，意味着传递的并不是实际的对象，而是对象的引用。因此，外部对引用对象所做的改变会反映到所有的对象上。\r\n\r\nJava线程');
INSERT INTO `topic` VALUES
  ('392407828792479744', '392407827047649280', '进程和线程的区别是什么？', '进程是执行着的应用程序，而线程是进程内部的一个执行序列。一个进程可以有多个线程。线程又叫做轻量级进程。');
INSERT INTO `topic` VALUES ('392407828813451264', '392407827047649280', '创建线程有几种不同的方式？你喜欢哪一种？为什么？',
                            '有三种方式可以用来创建线程：\r\n\r\n继承Thread类\r\n实现Runnable接口\r\n应用程序可以使用Executor框架来创建线程池\r\n实现Runnable接口这种方式更受欢迎，因为这不需要继承Thread类。在应用设计中已经继承了别的对象的情况下，这需要多继承（而Java不支持多继承），只能实现接口。同时，线程池也是非常高效的，很容易实现和使用。');
INSERT INTO `topic` VALUES ('392407828834422784', '392407827047649280', '概括的解释下线程的几种可用状态。',
                            '线程在执行过程中，可以处于下面几种状态：\r\n\r\n就绪(Runnable):线程准备运行，不一定立马就能开始执行。\r\n运行中(Running)：进程正在执行线程的代码。\r\n等待中(Waiting):线程处于阻塞的状态，等待外部的处理结束。\r\n睡眠中(Sleeping)：线程被强制睡眠。\r\nI/O阻塞(Blocked on I/O)：等待I/O操作完成。\r\n同步阻塞(Blocked on Synchronization)：等待获取锁。\r\n死亡(Dead)：线程完成了执行。');
INSERT INTO `topic` VALUES ('392407828851200000', '392407827047649280', '同步方法和同步代码块的区别是什么？',
                            '在Java语言中，每一个对象有一把锁。线程可以使用synchronized关键字来获取对象上的锁。synchronized关键字可应用在方法级别(粗粒度锁)或者是代码块级别(细粒度锁)。');
INSERT INTO `topic` VALUES ('392407828872171520', '392407827047649280', '在监视器(Monitor)内部，是如何做线程同步的？程序应该做哪种级别的同步？',
                            '监视器和锁在Java虚拟机中是一块使用的。监视器监视一块同步代码块，确保一次只有一个线程执行同步代码块。每一个监视器都和一个对象引用相关联。线程在获取锁之前不允许执行同步代码。');
INSERT INTO `topic` VALUES ('392407828888948736', '392407827047649280', '什么是死锁(deadlock)？',
                            '两个进程都在等待对方执行完毕才能继续往下执行的时候就发生了死锁。结果就是两个进程都陷入了无限的等待中。');
INSERT INTO `topic` VALUES ('392407828922503168', '392407827047649280', '如何确保N个线程可以访问N个资源同时又不导致死锁？',
                            '使用多线程的时候，一种非常简单的避免死锁的方式就是：指定获取锁的顺序，并强制线程按照指定的顺序获取锁。因此，如果所有的线程都是以同样的顺序加锁和释放锁，就不会出现死锁了。\r\n\r\nJava集合类');
INSERT INTO `topic` VALUES ('392407828939280384', '392407827047649280', 'Java集合类框架的基本接口有哪些？',
                            'Java集合类提供了一套设计良好的支持对一组对象进行操作的接口和类。Java集合类里面最基本的接口有：\r\n\r\nCollection：代表一组对象，每一个对象都是它的子元素。\r\nSet：不包含重复元素的Collection。\r\nList：有顺序的collection，并且可以包含重复元素。\r\nMap：可以把键(key)映射到值(value)的对象，键不能重复。');
INSERT INTO `topic` VALUES ('392407828956057600', '392407827047649280', '为什么集合类没有实现Cloneable和Serializable接口？',
                            '集合类接口指定了一组叫做元素的对象。集合类接口的每一种具体的实现类都可以选择以它自己的方式对元素进行保存和排序。有的集合类允许重复的键，有些不允许。');
INSERT INTO `topic` VALUES ('392407828972834816', '392407827047649280', '什么是迭代器(Iterator)？',
                            'Iterator接口提供了很多对集合元素进行迭代的方法。每一个集合类都包含了可以返回迭代器实例的\r\n迭代方法。迭代器可以在迭代的过程中删除底层集合的元素。\r\n\r\n克隆(cloning)或者是序列化(serialization)的语义和含义是跟具体的实现相关的。因此，应该由集合类的具体实现来决定如何被克隆或者是序列化。');
INSERT INTO `topic` VALUES ('392407829002194944', '392407827047649280', 'Iterator和ListIterator的区别是什么？',
                            '下面列出了他们的区别：\r\n\r\nIterator可用来遍历Set和List集合，但是ListIterator只能用来遍历List。\r\nIterator对集合只能是前向遍历，ListIterator既可以前向也可以后向。\r\nListIterator实现了Iterator接口，并包含其他的功能，比如：增加元素，替换元素，获取前一个和后一个元素的索引，等等。');
INSERT INTO `topic` VALUES ('392407829027360768', '392407827047649280', '快速失败(fail-fast)和安全失败(fail-safe)的区别是什么？',
                            'Iterator的安全失败是基于对底层集合做拷贝，因此，它不受源集合上修改的影响。java.util包下面的所有的集合类都是快速失败的，而java.util.concurrent包下面的所有的类都是安全失败的。快速失败的迭代器会抛出ConcurrentModificationException异常，而安全失败的迭代器永远不会抛出这样的异常。');
INSERT INTO `topic` VALUES ('392407829052526592', '392407827047649280', 'Java中的HashMap的工作原理是什么？',
                            'Java中的HashMap是以键值对(key-value)的形式存储元素的。HashMap需要一个hash函数，它使用hashCode()和equals()方法来向集合/从集合添加和检索元素。当调用put()方法的时候，HashMap会计算key的hash值，然后把键值对存储在集合中合适的索引上。如果key已经存在了，value会被更新成新值。HashMap的一些重要的特性是它的容量(capacity)，负载因子(load factor)和扩容极限(threshold resizing)。');
INSERT INTO `topic` VALUES ('392407829069303808', '392407827047649280', 'hashCode()和equals()方法的重要性体现在什么地方？',
                            'Java中的HashMap使用hashCode()和equals()方法来确定键值对的索引，当根据键获取值的时候也会用到这两个方法。如果没有正确的实现这两个方法，两个不同的键可能会有相同的hash值，因此，可能会被集合认为是相等的。而且，这两个方法也用来发现重复元素。所以这两个方法的实现对HashMap的精确性和正确性是至关重要的。');
INSERT INTO `topic` VALUES ('392407829094469632', '392407827047649280', 'HashMap和Hashtable有什么区别？',
                            'HashMap和Hashtable都实现了Map接口，因此很多特性非常相似。但是，他们有以下不同点：\r\nHashMap允许键和值是null，而Hashtable不允许键或者值是null。\r\nHashtable是同步的，而HashMap不是。因此，HashMap更适合于单线程环境，而Hashtable适合于多线程环境。\r\nHashMap提供了可供应用迭代的键的集合，因此，HashMap是快速失败的。另一方面，Hashtable提供了对键的列举(Enumeration)。\r\n一般认为Hashtable是一个遗留的类。');
INSERT INTO `topic` VALUES
  ('392407829119635456', '392407827047649280', '数组(Array)和列表(ArrayList)有什么区别？什么时候应该使用Array而不是ArrayList？',
   '下面列出了Array和ArrayList的不同点：\r\n\r\nArray可以包含基本类型和对象类型，ArrayList只能包含对象类型。\r\nArray大小是固定的，ArrayList的大小是动态变化的。\r\nArrayList提供了更多的方法和特性，比如：addAll()，removeAll()，iterator()等等。\r\n对于基本类型数据，集合使用自动装箱来减少编码工作量。但是，当处理固定大小的基本数据类型的时候，这种方式相对比较慢。');
INSERT INTO `topic` VALUES ('392407829148995584', '392407827047649280', 'ArrayList和LinkedList有什么区别？',
                            'ArrayList和LinkedList都实现了List接口，他们有以下的不同点：\r\n\r\nArrayList是基于索引的数据接口，它的底层是数组。它可以以O(1)时间复杂度对元素进行随机访问。与此对应，LinkedList是以元素列表的形式存储它的数据，每一个元素都和它的前一个和后一个元素链接在一起，在这种情况下，查找某个元素的时间复杂度是O(n)。\r\n\r\n相对于ArrayList，LinkedList的插入，添加，删除操作速度更快，因为当元素被添加到集合任意位置的时候，不需要像数组那样重新计算大小或者是更新索引。\r\n\r\nLinkedList比ArrayList更占内存，因为LinkedList为每一个节点存储了两个引用，一个指向前一个元素，一个指向下一个元素。\r\n\r\n也可以参考ArrayList vs. LinkedList。');
INSERT INTO `topic` VALUES ('392407829178355712', '392407827047649280', 'Comparable和Comparator接口是干什么的？列出它们的区别。',
                            'Java提供了只包含一个compareTo()方法的Comparable接口。这个方法可以个给两个对象排序。具体来说，它返回负数，0，正数来表明输入对象小于，等于，大于已经存在的对象。\r\n\r\nJava提供了包含compare()和equals()两个方法的Comparator接口。compare()方法用来给两个输入参数排序，返回负数，0，正数表明第一个参数是小于，等于，大于第二个参数。equals()方法需要一个对象作为参数，它用来决定输入参数是否和comparator相等。只有当输入参数也是一个comparator并且输入参数和当前comparator的排序结果是相同的时候，这个方法才返回true。');
INSERT INTO `topic` VALUES ('392407829199327232', '392407827047649280', '什么是Java优先级队列(Priority Queue)？',
                            'PriorityQueue是一个基于优先级堆的无界队列，它的元素是按照自然顺序(natural order)排序的。在创建的时候，我们可以给它提供一个负责给元素排序的比较器。PriorityQueue不允许null值，因为他们没有自然顺序，或者说他们没有任何的相关联的比较器。最后，PriorityQueue不是线程安全的，入队和出队的时间复杂度是O(log(n))。');
INSERT INTO `topic` VALUES ('392407829224493056', '392407827047649280', '你了解大O符号(big-O notation)么？你能给出不同数据结构的例子么？',
                            '大O符号描述了当数据结构里面的元素增加的时候，算法的规模或者是性能在最坏的场景下有多么好。\r\n大O符号也可用来描述其他的行为，比如：内存消耗。因为集合类实际上是数据结构，我们一般使用大O符号基于时间，内存和性能来选择最好的实现。大O符号可以对大量数据的性能给出一个很好的说明。');
INSERT INTO `topic` VALUES ('392407829245464576', '392407827047649280', '如何权衡是使用无序的数组还是有序的数组？',
                            '有序数组最大的好处在于查找的时间复杂度是O(log n)，而无序数组是O(n)。有序数组的缺点是插入操作的时间复杂度是O(n)，因为值大的元素需要往后移动来给新元素腾位置。相反，无序数组的插入时间复杂度是常量O(1)。');
INSERT INTO `topic` VALUES ('392407829266436096', '392407827047649280', 'Java集合类框架的最佳实践有哪些？',
                            '根据应用的需要正确选择要使用的集合的类型对性能非常重要，比如：假如元素的大小是固定的，而且能事先知道，我们就应该用Array而不是ArrayList。\r\n有些集合类允许指定初始容量。因此，如果我们能估计出存储的元素的数目，我们可以设置初始容量来避免重新计算hash值或者是扩容。\r\n为了类型安全，可读性和健壮性的原因总是要使用泛型。同时，使用泛型还可以避免运行时的ClassCastException。\r\n使用JDK提供的不变类(immutable class)作为Map的键可以避免为我们自己的类实现hashCode()和equals()方法。\r\n编程的时候接口优于实现。\r\n底层的集合实际上是空的情况下，返回长度是0的集合或者是数组，不要返回null。');
INSERT INTO `topic` VALUES ('392407829291601920', '392407827047649280', 'Enumeration接口和Iterator接口的区别有哪些？',
                            'Enumeration速度是Iterator的2倍，同时占用更少的内存。但是，Iterator远远比Enumeration安全，因为其他线程不能够修改正在被iterator遍历的集合里面的对象。同时，Iterator允许调用者删除底层集合里面的元素，这对Enumeration来说是不可能的。');
INSERT INTO `topic` VALUES ('392407829308379136', '392407827047649280', 'HashSet和TreeSet有什么区别？',
                            'HashSet是由一个hash表来实现的，因此，它的元素是无序的。add()，remove()，contains()方法的时间复杂度是O(1)。\r\n\r\n另一方面，TreeSet是由一个树形的结构来实现的，它里面的元素是有序的。因此，add()，remove()，contains()方法的时间复杂度是O(logn)。\r\n\r\n垃圾收集器(Garbage Collectors)');
INSERT INTO `topic`
VALUES ('392407829325156352', '392407827047649280', 'Java中垃圾回收有什么目的？什么时候进行垃圾回收？', '垃圾回收的目的是识别并且丢弃应用不再使用的对象来释放和重用资源。');
INSERT INTO `topic` VALUES ('392407829346127872', '392407827047649280', 'System.gc()和Runtime.gc()会做什么事情？',
                            '这两个方法用来提示JVM要进行垃圾回收。但是，立即开始还是延迟进行垃圾回收是取决于JVM的。');
INSERT INTO `topic` VALUES ('392407829375488000', '392407827047649280', 'finalize()方法什么时候被调用？析构函数(finalization)的目的是什么？',
                            '在释放对象占用的内存之前，垃圾收集器会调用对象的finalize()方法。一般建议在该方法中释放对象持有的资源。');
INSERT INTO `topic` VALUES
  ('392407829400653824', '392407827047649280', '如果对象的引用被置为null，垃圾收集器是否会立即释放对象占用的内存？', '不会，在下一个垃圾回收周期中，这个对象将是可被回收的。');
INSERT INTO `topic` VALUES ('392407829425819648', '392407827047649280', 'Java堆的结构是什么样子的？什么是堆中的永久代(Perm Gen space)?',
                            'JVM的堆是运行时数据区，所有类的实例和数组都是在堆上分配内存。它在JVM启动的时候被创建。对象所占的堆内存是由自动内存管理系统也就是垃圾收集器回收。\r\n\r\n堆内存是由存活和死亡的对象组成的。存活的对象是应用可以访问的，不会被垃圾回收。死亡的对象是应用不可访问尚且还没有被垃圾收集器回收掉的对象。一直到垃圾收集器把这些对象回收掉之前，他们会一直占据堆内存空间。');
INSERT INTO `topic` VALUES ('392407829446791168', '392407827047649280', '串行(serial)收集器和吞吐量(throughput)收集器的区别是什么？',
                            '吞吐量收集器使用并行版本的新生代垃圾收集器，它用于中等规模和大规模数据的应用程序。而串行收集器对大多数的小应用(在现代处理器上需要大概100M左右的内存)就足够了。');
INSERT INTO `topic`
VALUES ('392407829471956992', '392407827047649280', '在Java中，对象什么时候可以被垃圾回收？', '当对象对当前使用这个对象的应用程序变得不可触及的时候，这个对象就可以被回收了。');
INSERT INTO `topic` VALUES ('392618619214893057', '392618619214893056', '问题的标题', '参考答案');
INSERT INTO `topic` VALUES ('392618819329331201', '392618819329331200', '问题的标题', '参考答案');
INSERT INTO `topic` VALUES ('392619159940370433', '392619159940370432', '问题的标题', '参考答案');
INSERT INTO `topic` VALUES ('392620076026695681', '392620076026695680', '问题的标题', '参考答案');
INSERT INTO `topic` VALUES ('392620247598895105', '392620247598895104', '问题的标题', '参考答案');
INSERT INTO `topic` VALUES ('392620310500872193', '392620310500872192', '问题的标题', '参考答案');