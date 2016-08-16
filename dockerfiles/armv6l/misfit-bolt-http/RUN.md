docker run -d
           -it
           --name misfit-bolt-http
           --restart=always
           --privileged
           --net=host
           -p 3000:3000
           -v /var/run/dbus:/var/run/dbus
          flochtililoch/armv6l-misfit-bolt-http