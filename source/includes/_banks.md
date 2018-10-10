# Banks

## The bank object

```shell
<%= JSON.pretty_generate(sample_bank_hash) %>
```

### Attributes

Parameter | Description
--------- | -----------
id | **string**
object | **string** *value is "bank"*
name | **string**

## Retrieve an existing bank

```shell
DEFINITION
GET https://api.checklockbox.com/v1/banks/BANK_ID

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/v1/banks/<%= sample_bank_hash[:id] %> \
    -u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(sample_bank_hash) %>
```

Retrieves an existing bank.

### Arguments

Argument | Description
--------- | -----------
id | **required**<br>The identifier of the bank to be retrieved.

### Returns

Returns a bank object if a valid identifier was provided, and returns [an error](#errors) otherwise.

## List all banks

```shell
DEFINITION
GET https://api.checklockbox.com/v1/banks

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/v1/banks \
-u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(list_object(sample_bank_hash)) %>
```

Returns a list of banks.