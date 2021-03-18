# GRDB

Xcframework wrapper for GRDB.swift.

iOS, macOS, and watchOS platforms are included.

⚠️ tvOS is excluded due to errors when publishing the CocoaPod (or running `pod spec lint`).  I _think_ this has to do with detecting the proper slice name when selecting the framework to link against from within the xcframework, but I'm not totally sure.  Side note: the xcframework has "tvos" in its folder name, and I'm wondering if the link step is looking for "appletvos" instead.



### Source
GRDB.swift is here: https://github.com/groue/GRDB.swift

This repo clones the source and builds an xcframework for it.



### Updating to a new version

```bash
$ fastlane update_framework
```

The file `GRDB-xcframework.podspec` is used to control how the xcframework is put together.  The `update_framework` lane will only build the platforms listed there, rather than the ones listed in the source `GRDB.podspec` file.  The lane _will_ run a check to make sure that the deployment versions match.

`fastlane update_framework` will:

- update the local copy of the source repo with the latest published version
- re-build the xcframework
- You can then optionally continue to 

  - create a new local branch

  - commit the changes to the new release branch
  - create the tag
- With another optional step of publishing the CocoaPod.

You can manually publish the pod, too:

```bash
$ pod repo push ww-digital --allow-warnings
```



### CocoaPods

Podfile:
```
  pod 'GRDB-xcframework'
```

Swift:
```swift
import GRDB
```



## TODO

- Fix inclusion of tvOS
- Add debug symbols to final xcframework
- Separate fastlane config into own file, then can move the lane into the MobileFastFile
- Create nightly task to check latest published version of 3rd party library
- Make it work with SPM



## Notes

Manual build of xcframework, assumes directory structure:

- 📂 *GRDB-xcframework* <- this repo
  - 📂 *GRDB.swift* <- clone of 3rd party repo
  - 📂 *archives* <- destination of intermediate frameworks
  - 📄 *GRDB-xcframework.podspec*


