@isTest
private class Calculator_Tests {

    @isTest static void testPositive() {
        Test.startTest();
        System.assertEquals(Calculator.addition(3,5), 8, 'Expected to get 8');
        System.assertEquals(Calculator.subtraction(5,3), 2, 'Expected to get 2');
        System.assertEquals(Calculator.multiply(5,3), 15, 'Expected to get 15');
        System.assertEquals(Calculator.divide(15,3), 5, 'Expected to get 5');
        Test.stopTest();
    }
    @isTest static void testNegative() {
        Boolean exception1 = false;
        Boolean exception2 = false;
        Boolean exception3 = false;
        Test.startTest();
        try{
          Calculator.divide(15,0);
        } catch (Calculator.CalculatorException ce){
          if(ce.getMessage().equalsIgnoreCase('you still can\'t divide by zero')){
            exception1 = true;
          }
        }
        try{
          Calculator.divide(15,-5);
        } catch (Calculator.CalculatorException ce){
          if(ce.getMessage().equalsIgnoreCase('Division returned a negative value.-3')){
            exception2 = true;
          }
        }
        try{
          Calculator.multiply(15,0);
        } catch (Calculator.CalculatorException ce){
          if(ce.getMessage().equalsIgnoreCase('It doesn\'t make sense to multiply by zero')){
            exception3 = true;
          }
        }
        Test.stopTest();
        System.assertEquals(exception1, true, 'Expected to get you still can\'t divide by zero');
        System.assertEquals(exception2, true, 'Expected to get Division returned a negative value.-3');
        System.assertEquals(exception3, true, 'Expected to get It doesn\'t make sense to multiply by zero');
     }
}