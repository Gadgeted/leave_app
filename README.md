# leave_app
Flutter Learning Resource : Asynchronous Programming

## FLutter
Register UI
- firstname
- lastname
- email
- password
- Button (navigate to leave.dart)
parse data as a map. ie:

```dart
Map profile = {
    'firstname' : 'John',
    'lastname' : 'Doe',
    'email' : 'john@gmail.com',
    'password' : '12345'
}
// Remember to validate

```

Leave Page
Show
- 'Good Morning name,
- Username(from email)
Datetime now = datetime.now()
if(now.hour<12){
    return 'Good Morning $name'
} elseif(now.hour>12){
    return 'Good Afternoon $name'
}

add http to pubsec.yaml
