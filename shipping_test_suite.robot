*** Settings ***
Library    shipping.py

*** Test Cases ***
TC1
    [Tags]    Valid
    Set User Type    Valid
    ${shipping_cost}    Calculate Shipping Cost    40    Standard
    Should Be Equal As Integers    ${shipping_cost}    10

TC2
    [Tags]    Valid
    Set User Type    Valid
    ${shipping_cost}    Calculate Shipping Cost    40    Express
    Should Be Equal As Integers    ${shipping_cost}    20

TC3
    [Tags]    Valid
    Set User Type    Valid
    ${shipping_cost}    Calculate Shipping Cost    80    Standard
    Should Be Equal As Integers    ${shipping_cost}    5

TC4
    [Tags]    Valid
    Set User Type    Valid
    ${shipping_cost}    Calculate Shipping Cost    80    Express
    Should Be Equal As Integers    ${shipping_cost}    15

TC5
    [Tags]    Valid
    Set User Type    Valid
    ${shipping_cost}    Calculate Shipping Cost    120    Standard
    Should Be Equal As Integers    ${shipping_cost}    0

TC6
    [Tags]    Valid
    Set User Type    Valid
    ${shipping_cost}    Calculate Shipping Cost    120    Express
    Should Be Equal As Integers    ${shipping_cost}    10

TC7
    [Tags]    Invalid
    Set User Type    Invalid
    ${shipping_cost}    Calculate Shipping Cost    40    Standard
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC8
    [Tags]    Invalid
    Set User Type    Invalid
    ${shipping_cost}    Calculate Shipping Cost    40    Express
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC9
    [Tags]    Invalid
    Set User Type    Invalid
    ${shipping_cost}    Calculate Shipping Cost    80    Standard
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC10
    [Tags]    Invalid
    Set User Type    Invalid
    ${shipping_cost}    Calculate Shipping Cost    80    Express
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC11
    [Tags]    Invalid
    Set User Type    Invalid
    ${shipping_cost}    Calculate Shipping Cost    120    Standard
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC12
    [Tags]    Invalid
    Set User Type    Invalid
    ${shipping_cost}    Calculate Shipping Cost    120    Express
    Should Be Equal    ${shipping_cost}    Error: Invalid User
