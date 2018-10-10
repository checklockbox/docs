# Accounts

## The account object

You will need to use the v1 API. See [Account](#account).

## Retrieve account details

You will need to use the v1 API. See [Account](#retrieve-account-details).

## Create an account

```shell
DEFINITION
POST https://api.checklockbox.com/reseller/accounts

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/reseller/accounts \
    -u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(sample_account_hash) %>
```

Create an account by making a single call to the API.

### Arguments

Argument | Description
--------- | -----------
address_city<br>_string_ | **required**<br>
address_line1<br>_string_ | **required**<br>
address_line2<br>_string_ | **optional**<br>
address_state<br>_string_ | **required**<br>
address_zip<br>_string_ | **required**<br>
bank_account_account_number<br>_integer_ | **required**<br>
bank_account_bank<br>_string_ | **required**<br>The ID of the bank to which this bank account belongs.  You can see a list of supported banks [here](#banks).
bank_account_routing_number<br>_integer_ | **required**<br>
bank_account_verify<br>_boolean_ | **optional**<br>If set to true, you are acknowledging that the bank account information you provided is correct, you have followed all KYC regulations, and you have the right to share this information on behalf of the account owner.
business_doing_business_as<br>_string_ | **optional**<br>
business_legal_name<br>_string_ | **required**<br>
business_phone_number<br>_string_ | **required**<br>

### Returns

Returns an account object or returns [an error](#errors).


## Retrieve account credentials

```shell
DEFINITION
POST https://api.checklockbox.com/reseller/accounts/ACCOUNT_ID/credentials

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/reseller/accounts/ACCOUNT_ID/credentials \
    -u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(sample_credentials_hash) %>
```

Retrieve the credentials for an existing account.

### Arguments

Argument | Description
--------- | -----------
id<br>_string_ | **required**<br>ID of the account

### Returns

Returns a credentials object or returns [an error](#errors).

## Retrieve account status

```shell
DEFINITION
POST https://api.checklockbox.com/reseller/accounts/ACCOUNT_ID/status

EXAMPLE REQUEST
$ curl https://api.checklockbox.com/reseller/accounts/ACCOUNT_ID/status \
    -u sk_test_1234567890:

EXAMPLE RESPONSE
<%= JSON.pretty_generate(sample_status_hash) %>
```

To help when creating an account, we provide a status object that will help you determine what information is missing.

### Arguments

Argument | Description
--------- | -----------
id<br>_string_ | **required**<br>ID of the account

### Returns

Returns a status object or returns [an error](#errors).