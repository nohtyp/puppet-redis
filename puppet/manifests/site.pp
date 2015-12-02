node 'test02.familyguy.local' { 
  include epel
  include redis
  include stdlib
}

node 'test.familyguy.local' { 
  include epel
  include redis
  include stdlib
}
