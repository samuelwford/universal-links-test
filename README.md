#  Universal Links Testing

This project defines two apps both of which register to handle universal links for the domain, `samuelwford-public.s3.amazonaws.com`. This site was chosen because it's already a public facing site controlled by me.

Using the instructions outlined on the documentation page and video linked below, both apps are configured to accept any link for the domain above and display the last path component as a "tag" in the UI.

* [Allowing Apps and Websites to Link to Your Content](https://developer.apple.com/documentation/xcode/allowing_apps_and_websites_to_link_to_your_content)
* [What's New in Universal Links](https://developer.apple.com/wwdc20/10098)

On the site is an `apple-app-site-association` file (AASA) that points both apps at any path on that site. Both apps are configured to use "developer mode" which avoids going through the Apple AASA CDN and using the URL directly. This requires that you enable "Associated Domains Development" in the "Developer" section of the Settings app.
