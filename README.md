# rex-ossec-base

## setup()
Will update the glibc files as are required. 

## check()
Will check the glibc packages as they stand. 



```
task "setup", make {

  Rex::Collectd::Base::setup();

};
```

