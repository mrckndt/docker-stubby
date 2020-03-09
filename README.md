## stubby

This runs stubby primarily for DoT client use at port 53. A config yaml needs to be provided.

### Running the container
#### Using defaults
```docker run --name stubby --rm -p 53:53 -p 53:53/udp -v ./data:/data flexo3001/stubby:latest```

The default options are (which you can override with -e option):

```
LOG_LEVEL 0
```
