@isTest
private class SimpleClassTest {

    @isTest
    static void testGreetWithName() {
        // Arrange
        SimpleClass simpleClass = new SimpleClass();
        
        // Act
        String result = simpleClass.greet('John');
        
        // Assert
        System.assertEquals('Hello, John!', result, 'Greeting with name should match.');
    }
    
    @isTest
    static void testGreetWithoutName() {
        // Arrange
        SimpleClass simpleClass = new SimpleClass();
        
        // Act
        String result = simpleClass.greet('');
        
        // Assert
        System.assertEquals('Hello, Guest!', result, 'Greeting without name should default to Guest.');
    }
}
//comment