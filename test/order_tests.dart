import 'package:unittest/unittest.dart';
import 'package:wired/wired.dart';
import 'classes.dart';

main() {
  // First tests!
  ApplicationContext.bootstrap();

  test('order SomeComp', () {
    var bean = ApplicationContext.components.first;
    DoSomeComp dsc = bean;
    expect(dsc.someCalc(), 9);
  });
}

@Config
@Order(2)
class ConfigComp {

  @Bean
  DoSomeComp doSomeComp() {
    return new DoSomeComp();
  }

}

@Config
@Order(1)
class SomeConfig {

  @Bean
  Calc calc() {
    return new Calc();
  }

  @Bean
  Counter counter() {
    return new Counter();
  }

}
