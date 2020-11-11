#  Universal Links Testing

This project defines two apps both of which register to handle universal links for the domain, `samuelwford-public.s3.amazonaws.com`. This site was chosen because it's already a public facing site controlled by me.

Using the instructions outlined on the documentation page and video linked below, both apps are configured to accept any link for the domain above and display the path portion of the link in the UI. In the case of a link coming through an "open url" call, it displays the path as a universal link. In the case of a link coming from a user activity, such as an NFC tag read, it displays the last portion of the path as an "NFC Tag".

* [Allowing Apps and Websites to Link to Your Content](https://developer.apple.com/documentation/xcode/allowing_apps_and_websites_to_link_to_your_content)
* [What's New in Universal Links](https://developer.apple.com/wwdc20/10098)

On the site is an `apple-app-site-association` file (AASA) that points both apps at any path on that site. Both apps are configured to use "developer mode" which avoids going through the Apple AASA CDN and using the URL directly. This requires that you enable "Associated Domains Development" in the "Developer" section of the Settings app.

The best way to test a universal link is to put the test links in a note and tap on those links from the Notes app. Test links:

* https://samuelwford-public.s3.amazonaws.com/tag/123
* https://samuelwford-public.s3.amazonaws.com/tag/ABC
* https://samuelwford-public.s3.amazonaws.com/app-a/test
* https://samuelwford-public.s3.amazonaws.com/app-b/test

## Purpose of the Test Apps

The intent of the apps is to test what happens when two apps on the same device are both registered to receive universal links.

If both apps are installed, what should happen is that paths that match a specific app, like "/app-a/test" or "/app-b/test", should launch the correct app whereas paths that match both apps, like "/tag/123", should offer a choice of which app to launch the first time a tag is scanned. Subsequent tag reads will open the same app.
