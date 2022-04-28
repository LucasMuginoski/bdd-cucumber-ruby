Dado('que acesso pagina de login') do
    visit "http://parodify.herokuapp.com/"
    click_on "Login"
end
  
Quando('submeto minhas credenciais com: {string} e {string}') do |email, senha|
    find("#user_email").set email
    find("#user_password").set senha
    click_on "Log in"
end

Então('devo ver a mensagem de erro: {string}') do |expected_message|
    message = find(".message-body")
    expect(message.text).to eql expected_message
end