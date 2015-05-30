#Interactions API (Permanent Record)

The goal of this RESTful JSON API is to assist community organizations and citizens with keeping a safe, transparent, and _permanent record_ of police interactions within the Cleveland area. It conforms to the [JSON API Spec](http://jsonapi.org/).

##GET /interactions/

__Response__
```
{ 
  "data": [
    {
      "id": 10
      "types": "interactions" 
      "incident_type": "Traffic Patrol"
      "incident_location": "gps log/address"
      "incident_duration": "01:34:00"
      "incident_time": "3:40 PM"
      "incident_date": "06-25-2015"
      "incident_impact": "Single Person"
      "incident_urgency": "immidiate"
      "incident_priority": "low"
      "incident_rating": 8
      "incident_frequency": "isolated"
      "incident_media": "cop_selfie.jpg"
      "incident_attachments":"Report.pdf"
      "incident_event_association": "rockin in the park 2015"
      "incident_witness": "Jerry Jams"
      "public_servant_name": "John Wayne"
      "public_servant_id": 1234,
      "public_servant_age": 45
      "public_servant_sex": "Male"
      "public_servant_race": "White"
      "public_servant_organization": "CDP"
      "public_servant_behavior": "Nice"
      "public_servant_use_force": "No"
      "public_servant_charge_citation": "J walking"
      "reporter_name": "Johan Davies"
      "reporter_phone": 216-555-5555
      "reporter_race": "Native American"
      "reporter_sex":"Male"
      "reporter_age":35
      "reporter_disable_status": "Wheelchair"
      "reporter_zip_code": 44114
      "reporter_comment": "Officer Jonh is a great guy. Even gave me a high-five!"
      
    },
  ]
}

```

__Errors__  
404, 401

##GET /interactions/

__Response__  
```
{ 
  "data":
    {
      "id": 123
      "types": "interactions"
      "incident_type": "Traffic Patrol"
      "incident_location": "gps log/address"
      "incident_duration": "01:34:00"
      "incident_time": "3:40 PM"
      "incident_date": "06-25-2015"
      "incident_impact": "Single Person"
      "incident_urgency": "immidiate"
      "incident_priority": "low"
      "incident_rating": 8
      "incident_frequency": "isolated"
      "incident_media": "cop_selfie.jpg"
      "incident_attachments":"Report.pdf"
      "incident_event_association": "rockin in the park 2015"
      "incident_witness": "Jerry Jams"
      "reporter_name": "Johan Davies"
      "reporter_phone": 216-555-5555
      "reporter_race": "Native American"
      "reporter_sex":"Male"
      "reporter_age":35
      "reporter_disable_status": "Wheelchair"
      "reporter_zip_code": 44114
      "reporter_comment": "Officer Jonh is a great guy. Even gave me a high-five!"
    }
}

```

__Errors__  
404, 401

##POST /interactions/
  
__Parameters__  
The following optional parameters are accepted for logging:

"incident_type", "incident_location", "incident_duration", "incident_time", "incident_date", "incident_impact", "incident_urgency", "incident_priority", "incident_rating", "incident_frequency", "incident_media", "incident_attachments", "incident_event_association", "incident_witness", "public_servant_name", "public_servant_id", "public_servant_age", "public_servant_sex", "public_servant_race", "public_servant_organization", "public_servant_behavior", "public_servant_use_force", "public_servant_charge_citation", "reporter_name", "reporter_phone", "reporter_race", "reporter_sex", "reporter_age", "reporter_disable_status", "reporter_zip_code", "reporter_comment",

__Response__ 
201, object in question  

__Errors__  
401, 422  

##GET/interactions/search

__current__  
"officer_name" - (string)  
"zip_code" - (string)  
"start_date" && "end_date" - (string, "2015-05-30 18:50:27") - both are required if used    
"reporter_sex" - (male, female, other)  

__desired__  
"incident_type", "reporter_name", "public_servant_name", "incident_location", "incident_time", "incident_date", "incident_media", "incident_impact", "incident_urgency", "incident_priority", "incident_event_association", "incident_rating", "public_servant_organization", "reporter_race", "reporter_age", "reporter_sex", "reporter_zip_code", "reporter_comment"

__Errors__  
[] - empty set if no items found  
