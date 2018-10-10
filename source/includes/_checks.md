# Checks

## The check object

```shell
<%= JSON.pretty_generate(sample_check_hash) %>
```

### Attributes

Parameter | Description
--------- | -----------
id | **string**
object | **string** *value is "check"*
amount | **integer**<br>Amount in cents
number | **string**

## Retrieve an existing check

```shell
DEFINITION
GET https://api.checklockbox.com/v1/checks/{check_ID}

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/v1/checks/tr_3fj38099dalkxie \
    -u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(sample_check_hash) %>
```

Retrieves the details of a check that has previously been created. Supply a unique check ID that was returned in a previous request.

### Arguments

Argument | Description
--------- | -----------
id | **required**<br>The identifier of the check to be retrieved.

### Returns

Returns a check object if a valid identifier was provided, and returns [an error](#errors) otherwise.

## List all checks

```shell
DEFINITION
GET https://api.checklockbox.com/v1/checks

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/v1/checks \
-u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(list_object(sample_check_hash)) %>
```

Returns a list of checks you've previously created. The checks are returned in sorted order, with the most recent checks appearing first.  If no results are found given the arguments, an empty list should be returned.

### Arguments

Argument | Description
--------- | -----------
created_at | **optional**<br>A filter on the list based on the object `created_at` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with the following options, all of which take a string with an integer Unix timestamp:<ul><li>`gt` for greater than</li><li>`gte` for greater than or equal to</li><li>`lt` for less than</li><li>`lte` for less thank or equal to</li><br>See datetime filter examples [here](#filter-by-created_at).

See [Pagination](#pagination) section for supported pagination arguments.