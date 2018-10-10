# Account

## The account object

Retrieve your account to see properties on the account.

### Attributes

Parameter | Description
--------- | -----------
id | **string**
object | **string** *value is "account"*

```shell
<%= JSON.pretty_generate(sample_account_hash) %>
```

## Retrieve account details

```shell
DEFINITION
GET https://api.checklockbox.com/v0/account

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/v0/account \
    -u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(sample_account_hash) %>
```

Retrieves the account details based on the API key used to authenticate the request.

### Arguments

No Arguments

### RETURNS

An account object for the API key used to authenticate the request.
