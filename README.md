# Cool Bool Tools For Bool Fools

because sometimes you need extra help to make `if/unless` instantly clear

```ruby
def can_do_action?
  return no if it_cant
  
  yes
end
```

You can even write your code to be more polite:

```ruby
def should_update_some_attribute
  return no_thanks if some_condition

  yes_please 
end
```
