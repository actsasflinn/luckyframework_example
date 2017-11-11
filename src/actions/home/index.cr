class Home::Index < BrowserAction
  get "/" do
    redirect to: Widgets::Index
  end
end
