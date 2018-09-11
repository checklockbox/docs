# Errors

> **HTTP Status Code Summary**<br>
> <br>
> 200 OK - Everything worked as expected.<br>
> 400 Bad Request - Often missing a required parameter.<br>
> 401 Unauthorized - No valid API key provided.<br>
> 402 Request Failed - Parameters were valid but request failed.<br>
> 403 Forbidden (Rate Limit Exceeded) - You have exceeded the request limit.<br>
> 404 Not Found - The requested item doesn't exist.<br>
> 500, 502, 503, 504 Server errors - something went wrong on Check Lockbox's end.<br>

Check Lockbox API uses regular HTTP response codes.  Not all errors map cleanly to an HTTP response code.  In general, 2xx codes indicate success.  4xx codes indicate an error with supplied parameters.  5xx codes indicate an error with Check Lockbox's servers.

### Attributes

Parameter | Description
--------- | -----------
type | Type of the error returned.  Can be `invalid_request_error` or `api_error`.
message | A human-readable message letting you know exactly what went wrong.
param | **(optional)**<br /> The parameter the error relates to.
