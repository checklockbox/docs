# Pagination

All major objects in Check Lockbox support list API methods.  All list responses share a common structure.

Check Lockbox supports cursor-based pagination, using the parameter `starting_after` to change where each page starts.  See a full list of pagination parameters below.  **Note that all pagination parameters must be passed in the `pagination` hash.**

### Arguments

Argument | Description
--------- | -----------
pagination[limit] | **optional** *default is 25*
pagination[starting_after] | **optional**<br>An object ID to use in pagination. For example, you receive a list of objects in a request ending with obj_foo, include `pagination[starting_after]=obj_foo` to get the next page.
pagination[ending_before] | **optional**<br>An object ID to use in pagination. For example, you receive a list of objects in a request starting with obj_foo, include `pagination[ending_before]=obj_foo` to get the previous page.
