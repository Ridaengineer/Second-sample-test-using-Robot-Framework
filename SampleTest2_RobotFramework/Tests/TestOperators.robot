*** Settings ***
Documentation    Test all the mathematic operators
Library    BuiltIn
Library    Math

*** Variables ***
${A}    4
${B}    2

*** Test Cases ***
Addition Test
    [Documentation]    Check the addition of the two numbers.
    ${result}=    Evaluate    ${A} + ${B}
    Should Be Equal As Numbers    ${result}    6

Subtraction Test
    [Documentation]    Check the subtraction of the two numbers.
    ${result}=    Evaluate    ${A} - ${B}
    Should Be Equal As Numbers    ${result}    2

Multiplication Test
    [Documentation]    Check the multiplication of the two numbers.
    ${result}=    Evaluate    ${A} * ${B}
    Should Be Equal As Numbers    ${result}    8

Division Test
    [Documentation]   Check the division of the two numbers.
    ${result}=    Evaluate    ${A} / ${B}
    Should Be Equal As Numbers    ${result}    2

Power Test1
    [Documentation]    Check the power of A.
    ${result}=    Evaluate    pow(${A}, 2)
    Should Be Equal As Numbers    ${result}    16

Power Test2
    [Documentation]    Check the power of B.
    ${result}=    Evaluate    pow(${B}, 2)
    Should Be Equal As Numbers    ${result}    4

Square Root Test1
    [Documentation]    Check the square of A.
    ${result}=    Evaluate    math.sqrt(${A})
    Should Be Equal As Numbers    ${result}    2

Square Root Test2
    [Documentation]    Check the square of B.
    ${result}=    Evaluate    round(math.sqrt(${B}),2)
    Should Be Equal As Numbers    ${result}    1.41

