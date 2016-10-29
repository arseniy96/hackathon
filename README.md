# hackathon

GET    /tasks       tasks#index
    [{"id":1,"name":"first task","description":null,"date":1477736656,"complete":false,"user":{"id":1}},{"id":2,"name":"bla","description":null,"date":null,"complete":null,"user":{"id":1}}]

POST   /tasks       tasks#create
   {"id":1,"name":"first task","description":null,"date":1477736656,"complete":false,"user":{"id":1}}

GET    /tasks/:id   tasks#show
    {"id":1,"name":"first task","description":null,"date":1477736656,"complete":false,"user":{"id":1}}

PATCH  /tasks/:id   tasks#update


PUT    /tasks/:id   tasks#update
    {"id":1,"name":"first task","description":null,"date":1477736656,"complete":false,"user":{"id":1}}

DELETE /tasks/:id   tasks#destroy
    [{"id":1,"name":"first task","description":null,"date":1477736656,"complete":false,"user":{"id":1}},{"id":2,"name":"bla","description":null,"date":null,"complete":null,"user":{"id":1}}]

GET    /serials     serials#index
    {[name: 'Game of Thrones'], [name: 'Wolking dead']}

POST   /serials     serials#create
    {[name: 'Game of Thrones'], [name: 'Wolking dead']}

PATCH  /serials/:id serials#update
    

DELETE /serials/:id serials#destroy
    {[name: 'Game of Thrones'], [name: 'Wolking dead']}

POST   /users       users#create
    {"id":1}

GET    /users/:id   users#show
    {"id":1}

PATCH  /users/:id   users#update


PUT    /users/:id   users#update


DELETE /users/:id   users#destroy