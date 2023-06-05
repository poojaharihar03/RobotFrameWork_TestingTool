# RobotFrameWork_TestingTool
Software Testing using Python in Jupyter Notebook and RobotFrameWork

## RobotFrameWork tool:
# Shipping Calculator

The Shipping Calculator is a Python class that calculates the shipping cost based on the user type, total order cost, and shipping option. This README file provides an overview of the Shipping Calculator and describes the test cases used to validate its functionality.

## Usage

1. Instantiate the ShippingCalculator class.
2. Set the user type using the set_user_type method
3. Calculate the shipping cost by providing the total order cost and shipping option using the calculate_shipping_cost method.

## Example

```python
# Instantiate the ShippingCalculator
calculator = ShippingCalculator()

# Set the user type
calculator.set_user_type("Valid")

# Calculate the shipping cost
total_order_cost = 80
shipping_option = "Standard"
shipping_cost = calculator.calculate_shipping_cost(total_order_cost, shipping_option)

# Print the shipping cost
print(f"The shipping cost is: {shipping_cost}")
```

## testcases

| Test Case | User Type | Total Order Cost | Shipping Option | Expected Shipping Cost |
|-----------|-----------|-----------------|-----------------|----------------------- |
| TC1       | Valid     | 40              | Standard        | 10                     |
| TC2       | Valid     | 40              | Express         | 20                     |
| TC3       | Valid     | 80              | Standard        | 5                      |
| TC4       | Valid     | 80              | Express         | 15                     |
| TC5       | Valid     | 120             | Standard        | 0                      |
| TC6       | Valid     | 120             | Express         | 10                     |
| TC7       | Invalid   | 40              | Standard        | Error: Invalid User    |
| TC8       | Invalid   | 40              | Express         | Error: Invalid User    |
| TC9       | Invalid   | 80              | Standard        | Error: Invalid User    |
| TC10      | Invalid   | 80              | Express         | Error: Invalid User    |
| TC11      | Invalid   | 120             | Standard        | Error: Invalid User    |
| TC12      | Invalid   | 120             | Express         | Error: Invalid User    |
| TC13      | Valid     | 150             | Standard        | 0                      |
| TC14      | Valid     | 150             | Express         | 10                     |
| TC15      | Invalid   | 150             | Standard        | Error: Invalid User    |
| TC16      | Invalid   | 150             | Express         | Error: Invalid User    |
| TC17      | Valid     | 0               | Standard        | 10                     |
| TC18      | Valid     | 0               | Express         | 20                     |
| TC19      | Invalid   | 0               | Standard        | Error: Invalid User    |
| TC20      | Invalid   | 0               | Express         | Error: Invalid User    |


## Running the Tests

The test cases can be executed using a test framework like Robot Framework. The Robot Framework test script is provided in the shipping_calculator_tests.robot file. To run the tests:
1)Make sure Robot Framework is installed.
2)Open a terminal or command prompt.
3)Navigate to the directory containing the test script.
4)Run the following command: robot shipping_calculator_tests.robot

The test results will be displayed in the terminal, indicating the pass or fail status of each test 
We can also view the report it will be saved in the same director as the files you have created.
NOTE- please keep the .robot file and .ipymb..py file in same directory 
## Here is the output report:
![image](https://github.com/poojaharihar03/RobotFrameWork_TestingTool/assets/88924201/15d0fee0-69be-4370-8e15-ccddeb2be6fc)

## The log snip:
![image](https://github.com/poojaharihar03/RobotFrameWork_TestingTool/assets/88924201/516a78e3-4bb3-41ed-b577-b0a9f1f6ef51)


