Dado('que acesso a pagina de cadastro') do
    visit "http://parodify.herokuapp.com"
    click_on "EXPERIMENTE AGORA" 
end

Quando('submeto meu cadastro com:') do |table|
    user = table.rows_hash
    remove_user user[:email]
    find("input[name*=email]").set user[:email]
    find("input[placeholder='Sua senha secreta']").set user[:senha]
    find("input[placeholder='Confirme a senha']").set user[:senha_confirma]
    click_on "Cadastrar"
end
  
Então('devo ser redirecionado para a area logada') do
    expect(page).to have_css 'section.dashboard' 
end

Então('devo ver a mensagem: {string}') do |expected_message|
    alert = find(".message p")
    expect(alert.text).to eql expected_message
end
