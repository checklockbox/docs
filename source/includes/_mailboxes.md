# Mailboxes

## The mailbox object

```shell
<%= JSON.pretty_generate(sample_mailbox_hash) %>
```

### Attributes

Parameter | Description
--------- | -----------
id | **string**
object | **string** *value is "mailbox"*
amount | **integer**<br>Amount in cents

## Retrieve an existing mailbox

```shell
DEFINITION
GET https://api.checklockbox.com/v1/mailboxes/{mailbox_ID}

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/v1/mailboxes/mlbox_djkdf983jsls8xn \
    -u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(sample_mailbox_hash) %>
```

Retrieves the details of a mailbox that has previously been created. Supply a unique mailbox ID that was returned in a previous request.

### Arguments

Argument | Description
--------- | -----------
id | **required**<br>The identifier of the mailbox to be retrieved.

### Returns

Returns a mailbox object if a valid identifier was provided, and returns [an error](#errors) otherwise.

## List all mailboxes

```shell
DEFINITION
GET https://api.checklockbox.com/v1/mailboxes

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/v1/mailboxes \
-u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(list_object(sample_mailbox_hash)) %>
```

Returns a list of mailboxes. If no results are found given the arguments, an empty list should be returned.