# AppCenter dSYM upload

This Bitrise step uploads dSYM to Microsoft AppCenter using official CLI.  
It is relevant only for iOS project (including Xamarin.iOS).

## Required Variables

- **dsym_path**: a path to dSYM file, by default it's `$BITRISE_DSYM_PATH` which is usually generated by the build phase
- **app_id**: an application identifier that is a combination of your Organization/OwnerName and Application Name. For example: `MyOrganization/MyApplication`
- **api_token**: AppCenter API Token. It should be stored in Secrets. Can be obtained here: https://appcenter.ms/settings/apitokens
