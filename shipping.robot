*** Settings ***
Library    OperatingSystem
Library    Collections

*** Variables ***
${user_type}             ""
${total_order_cost}      0
${shipping_option}       ""
${shipping_cost}         0

*** Test Cases ***
TC1
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    40    Standard
    Should Be Equal As Integers    ${shipping_cost}    10

TC2
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    40    Express
    Should Be Equal As Integers    ${shipping_cost}    20

TC3
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    80    Standard
    Should Be Equal As Integers    ${shipping_cost}    5

TC4
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    80    Express
    Should Be Equal As Integers    ${shipping_cost}    15

TC5
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    120    Standard
    Should Be Equal As Integers    ${shipping_cost}    0

TC6
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    120    Express
    Should Be Equal As Integers    ${shipping_cost}    10

TC7
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    40    Standard
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC8
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    40    Express
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC9
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    80    Standard
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC10
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    80    Express
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC11
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    120    Standard
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC12
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    120    Express
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC13
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    150    Standard
    Should Be Equal As Integers    ${shipping_cost}    0

TC14
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    150    Express
    Should Be Equal As Integers    ${shipping_cost}    10

TC15
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    150    Standard
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC16
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    150    Express
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC17
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    0    Standard
    Should Be Equal As Integers    ${shipping_cost}    10

TC18
    [Tags]    Valid
    Set User Type    Valid
    Calculate Shipping Cost    0    Express
    Should Be Equal As Integers    ${shipping_cost}    20

TC19
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    0    Standard
    Should Be Equal    ${shipping_cost}    Error: Invalid User

TC20
    [Tags]    Invalid
    Set User Type    Invalid
    Calculate Shipping Cost    0    Express
    Should Be Equal    ${shipping_cost}    Error: Invalid User

*** Keywords ***
Set User Type
    [Arguments]    ${type}
    Set Global Variable    ${user_type}    ${type}

Calculate Shipping Cost
    [Arguments]    ${order_cost}    ${option}
    Set Global Variable    ${total_order_cost}    ${order_cost}
    Set Global Variable    ${shipping_option}    ${option}
    Run Keyword If    '${user_type}' == 'Valid'    Calculate Valid Shipping Cost
    ...    ELSE    Calculate Invalid Shipping Cost

Calculate Valid Shipping Cost
    Run Keyword If    ${total_order_cost} < 50    Set Shipping Cost    10
    ...    ELSE IF    50 <= ${total_order_cost} <= 100    Set Shipping Cost    5
    ...    ELSE IF    ${total_order_cost} > 100    Set Shipping Cost    0

Calculate Invalid Shipping Cost
    Set Shipping Cost    Error: Invalid User

Set Shipping Cost
    [Arguments]    ${cost}
    Set Global Variable    ${shipping_cost}    ${cost}
