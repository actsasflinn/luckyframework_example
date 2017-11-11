require "./server"

LuckyWeb::Session::Store.configure do
  settings.key = "lucky_test"
  settings.secret = LuckyWeb::Server.settings.secret_key_base
end
