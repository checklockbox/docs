# Times

Check Lockbox uses UTC unix timestamps for all dates and times.  Times are usually attributes ending in `_at`.

## Filter by created_at

```shell
EXAMPLE REQUEST
$ curl https://api.checklockbox.com/v0/transactions?created_at[gt]=1437924748 \
--globoff \
-u sk_test_1234567890:

{
  "id": "check_3fj38099dalkxie",
  "object": "check",
  "amount": 19900,
  "created_at": 1426021736,
  "updated_at": 1426021736
}
```

### Sample Arguments

Argument | Description
--------- | -----------
created_at | **optional**<br>A filter on the list based on the object `created_at` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with the following options, all of which take a string with an integer Unix timestamp:<ul><li>`gt` for greater than</li><li>`gte` for greater than or equal to</li><li>`lt` for less than</li><li>`lte` for less thank or equal to</li>
