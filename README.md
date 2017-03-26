# ngIRCd

Small ngircd image, completely configurable with environment variables.

# Configuration

The image uses [confd](http://confd.io) to create `/etc/ngircd/ngircd.conf`
based on environment varibles. The format of the environment variables is
as follows:

* `NGIRCD_<SECTION>_<OPTION>` for all sections that appear only once in
  the configuration (e.g. "global", "options","limits","ssl")
* `NGIRCD_<SECTION>_<IDENTIFIER>_<OPTION>` for all sections that can
  appear multiple times in the configuration (e.h. "operator", "server",
  "channel"). `<IDENTIFIER>` is not used in the resulting configuration
  so it can be choosen at will.

Have a look at the `Dockerfile` for some examples of the config environment
variables.

For a list of available sections / options have a look at [`ngircd.conf`](https://ngircd.barton.de/doc/sample-ngircd.conf)
