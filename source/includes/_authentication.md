# Authentication

The Check Lockbox API is organized around REST. You will need your API key to access all routes.

You authenticate to the Check Lockbox API by supplying your API keys in the request. Your API key gives you full access to the API, so be sure to keep it secret!

We use HTTP Basic Auth for the Check Lockbox API. Provide your API key as the basic auth username. Do not need to provide a password.

You must authenticate for all requests and may only make requests over HTTPS. Calls made over plain HTTP will fail.


```shell
$ curl https://api.checklockbox.com/v0/account \
   -u sk_test_1234567890:
```

<aside class="notice">
You must replace `sk_test_1234567890` with your personal API key.
</aside>
