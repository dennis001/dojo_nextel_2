Dado('que eu esteja no site') do
  Login.new.load
end

Quando('digitar os dados de login') do
  Login.new.btnLogin.click
  Login.new.login("will", "will")
  Login.new.btnEntrar.click
end

Entao('confirmo que meu login foi efetuado com sucesso') do
  #assert_text("Welcome will")
  puts Login.new.nameUser.text if expect(Login.new.nameUser.text).to eq("Welcome will")
end