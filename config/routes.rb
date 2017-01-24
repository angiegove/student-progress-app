Rails.application.routes.draw do
  get '/students/:id' => 'students#show'
  get '/students/:id/progress' => 'students#progress'

  get '/teachers/:id/reports' => 'teachers#reports'
end
