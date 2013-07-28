##Latest Version URLs

[Heroku Demo Link](http://latest-version.herokuapp.com/)

A demo of URLs for objects with multiple versions where the default URL shows the current version.

Two possible ways will be implemented:

1. Documents (2 objects) - Document has_many Versions, each document has a latest version, current version marked by 'current' attribute
2. Blog (1 object) - Post, there is one most recent blog post, sorted by blog_date

It would be easy to extend this using any base.

Additional Information can be found here:

- [Aaron Swartz - A Programmable Web, Ch. 2 Building for Users: Designing URLs](http://www.morganclaypool.com/doi/abs/10.2200/S00481ED1V01Y201302WBE005)


Rake Routes

```
                root GET    /                                              pages#home
               blogs GET    /blogs(.:format)                               blogs#index
                     POST   /blogs(.:format)                               blogs#create
            new_blog GET    /blogs/new(.:format)                           blogs#new
           edit_blog GET    /blogs/:id/edit(.:format)                      blogs#edit
                blog GET    /blogs/:id(.:format)                           blogs#show
                     PATCH  /blogs/:id(.:format)                           blogs#update
                     PUT    /blogs/:id(.:format)                           blogs#update
                     DELETE /blogs/:id(.:format)                           blogs#destroy
        current_blog GET    /blog(.:format)                                blogs#current
   document_versions GET    /documents/:document_id/versions(.:format)     versions#index
                     POST   /documents/:document_id/versions(.:format)     versions#create
new_document_version GET    /documents/:document_id/versions/new(.:format) versions#new
        edit_version GET    /versions/:id/edit(.:format)                   versions#edit
             version GET    /versions/:id(.:format)                        versions#show
                     PATCH  /versions/:id(.:format)                        versions#update
                     PUT    /versions/:id(.:format)                        versions#update
                     DELETE /versions/:id(.:format)                        versions#destroy
           documents GET    /documents(.:format)                           documents#index
                     POST   /documents(.:format)                           documents#create
        new_document GET    /documents/new(.:format)                       documents#new
       edit_document GET    /documents/:id/edit(.:format)                  documents#edit
            document GET    /documents/:id(.:format)                       documents#show
                     PATCH  /documents/:id(.:format)                       documents#update
                     PUT    /documents/:id(.:format)                       documents#update
                     DELETE /documents/:id(.:format)                       documents#destroy
```
