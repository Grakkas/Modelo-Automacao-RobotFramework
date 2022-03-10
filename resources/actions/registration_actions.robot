*** Settings ***
Documentation    Actions used on the registration page

*** Keywords ***
Go To Signup Page
    Go To                      ${BASE_URL}/signup
    Wait For Elements State    xpath=//form[@class='signup-form']    visible    5

Fill Signup Form
    [Arguments]    ${user}
    Fill Text      id=name        ${user}[first_name]
    Fill Text      id=lastname    ${user}[last_name]
    Fill Text      id=email       ${user}[email]
    Fill Text      id=password    ${user}[password]

Submit Signup Form
    Click    xpath=//button[contains(.,'Cadastrar')]

User Should Be Registered
    Wait For Elements State    xpath=//p[contains(.,'Agora você faz parte da Getgeeks.')]    visible    5

Email Should Be Already Registered
    Wait For Elements State    xpath=//div[@class='swal2-html-container'][contains(.,'Já temos um Geek com o email informado.')]    visible    5

Email Should Be Invalid
    Wait For Elements State    xpath=//span[contains(.,'O email está estranho')]

Should Inform The Obligated Fields
    Wait For Elements State    xpath=//span[contains(.,'Cadê o seu nome?')]
    Wait For Elements State    xpath=//span[contains(.,'E o sobrenome?')]
    Wait For Elements State    xpath=//span[contains(.,'O email é importante também!')]
    Wait For Elements State    xpath=//span[contains(.,'Agora só falta a senha!')]

