class Login < SitePrism::Page
  set_url "https://www.demoblaze.com/"

  element :btnLogin, 'a[id="login2"]'
  element :usuario, 'input[id="loginusername"]'
  element :senha, 'input[id="loginpassword"]'
  element :btnEntrar, 'button[onclick="logIn()"]'
  element :nameUser, 'a[id="nameofuser"]'

  def login(usu, pass)
    usuario.set(usu)
    senha.set(pass)
    end
=begin
  def name_user
    nameUser.text
  end
=end
end