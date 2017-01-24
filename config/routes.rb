Rails.application.routes.draw do
  get '/students/:id' => 'students#show'
  get '/students/:id/progress' => 'students#progress'
  patch '/students/:id/progress' => 'students#update_progress', as: 'update_student_progress'
  get '/teachers/:id/reports' => 'teachers#reports'
end
