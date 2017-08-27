# NginxSharedCache

This repository is sample script of shared cache with multiple nginx in vagrant environment

## Summary

## Usage

### Prepareration

- Add Vagrant Box file

```
$ vagrant box add centos67 https://github.com/CommanderK5/packer-centos-template/releases/download/0.6.7/vagrant-centos-6.7.box
$ vagrant box list
centos67 (virtualbox, 0)
```

- change your website

You should change **'proxy_pass "https://example.com";'** in **'files/cache/usr/local/nginx/conf/conf.d/cache.conf'** to confirm shared cache state.

For example

```
        .         
        .
        proxy_cache_lock_timeout 5s;
        proxy_cache_use_stale updating;

        proxy_pass "https://www.nginx.com/";
    }
        .
        .
```

### Instration

- how to install

You can install shared cache environment with multiple nginx easily.

```
$ vagrant.exe up
```

### Browse

- Via loadbalancer server

You can browse this environment by accessing localhost(http://127.0.0.1).

- Shared cache server directly

You can confirm shared cache server state by accessing localhost:9001(http://127.0.0.1:9001) or localhost:9002(http://127.0.0.1:9002)

## See Also

- [Shared Caches with NGINX Plus Cache Clusters, Part 1](https://www.nginx.com/blog/shared-caches-nginx-plus-cache-clusters-part-1/)
- [nginx.org](http://nginx.org/)
- [ngx_cache_purge](https://github.com/FRiCKLE/ngx_cache_purge)
- [Documentation - Vagrant by HashiCorp](https://www.vagrantup.com/docs/index.html)
