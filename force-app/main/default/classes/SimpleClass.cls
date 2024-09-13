public with sharing class SimpleClass {
    
    public String greet(String name) {
        if(String.isBlank(name)) {
            return 'Hello, Guest!';
        } else {
            return 'Hello, ' + name + '!';
        }
    }
}
