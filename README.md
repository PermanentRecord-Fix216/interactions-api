#Interactions API
(Permanent Record)

The goal of this RESTful JSON API is to help community organizations and citizens to provide a _permanent record_ of police interactions within the Cleveland area.

##GET /interactions/

__Response__
```
{ 
  "data": [
    { 
      "badge_num": 1234,
      "zip_code": 44114,
      "comment": "Officer Greg is a great guy"
    },
    { 
      "badge_num": 3402,
      "zip_code": 44101,
      "comment": "Officer Jim is a horrible guy"
    }
}

```

__Errors__
404, 401

##POST /interactions/
`/interactions/?badge_num="124"&zip_code="44101"&v="v1"`

__Errors__
401, 422
