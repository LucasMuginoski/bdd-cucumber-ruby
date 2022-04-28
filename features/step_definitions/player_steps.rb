Dado('Login com {string} e {string}') do |email, senha|
    visit "http://parodify.herokuapp.com/"
    click_on "Login"
    find("#user_email").set email
    find("#user_password").set senha
    click_on "Log in"
end

Dado('que quero ouvir {string}') do |genero|
    find("nav a[href='/search/new']").click
    find("img[src$='#{genero.downcase}.png']").click
end
  
Quando('toca a musica:') do |table|
    @music = table.rows_hash
    
    find('a', text: @music[:banda]).click
    song = find('.song-item', text: @music[:musica])
    song.find('.fa-play-circle').click
end
  
Então('essa parodia deve ficar em modo de reprodução') do
    song_play = find('.playing')
    expect(song_play).to have_text @music[:musica]
end