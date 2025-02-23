# Mediawiki-ext

Custom Mediawiki image with more extensions installed.

Extra extensions:
- [AutoCreateCategoryPages](https://www.mediawiki.org/wiki/Extension:Auto_Create_Category_Pages)
  - automatically creates stub pages for non-existent categories as soon as they are linked to
- [AntiSpoof](https://www.mediawiki.org/wiki/Extension:AntiSpoof)
  - is an extension for preventing confusable usernames from being created. It blocks the creation of accounts with mixed-script, confusing and similar usernames.
- [DynamicPageList](https://www.mediawiki.org/wiki/Extension:DynamicPageList_(Wikimedia))
  - extension allows wiki users to create a list of pages that are listed in a set of categories
  - Add using `wfLoadExtension( 'intersection' );`
- [DynamicSidebar](https://www.mediawiki.org/wiki/Extension:DynamicSidebar)
  - extends the capabilities of the sidebar for logged in users. If allowed, users can add their own custom sidebars via the page "User:<username>/Sidebar"
- [ApprovedRevs](https://www.mediawiki.org/wiki/Extension:Approved_Revs)
  - is an extension that lets administrators mark a certain revision of a page as "approved". The approved revision is the one displayed when users view the page at its main URL.
- [HitCounters](https://www.mediawiki.org/wiki/Extension:HitCounters)
  - extension displays the view count in the page footer and the most viewed pages on a special page called PopularPages.
- [MassMessage](https://www.mediawiki.org/wiki/Extension:MassMessage)
  - allows a user to send a message to a list of pages via special page Special:MassMessage
- [NewUserMessage](https://www.mediawiki.org/wiki/Extension:NewUserMessage)
  - adds a message to the talk pages of newly created wiki accounts
- [Popups](https://www.mediawiki.org/wiki/Extension:Popups)
  - displays page and reference previews when hovering over a link to an article or respectively to a reference
  - Depends on `TextExtracts`, `PageImages`
- [AdvancedSearch](https://www.mediawiki.org/wiki/Extension:AdvancedSearch)
  - enhances Special:Search by providing an advanced parameters form and improving how namespaces for a search query are selected
- [LoginNotify](https://www.mediawiki.org/wiki/Extension:LoginNotify)
  - notifies you when someone logs into your account
- [Cargo](https://www.mediawiki.org/wiki/Extension:Cargo)
  - is an extension to MediaWiki that provides a lightweight way to store and query the data contained within the calls to templates, such as infoboxes.

Preinstalled extensions (Version 1.42.4):
- AbuseFilter
- CategoryTree
- Cite
- CiteThisPage
- CodeEditor
- ConfirmEdit
- DiscusionTools
- Echo
- Gadgets
- ImageMap
- InputBox
- Interwiki
- Linter
- LoginNotify
- Math
- MultimediaViewer
- Nuke
- OATHAuth
- PageImages
- ParserFunctions
- PdfHandler
- Poem
- ReplaceText
- Scribunto
- SecureLinkFixer
- SpamBlacklist
- SyntaxHightlight_GeSHi
- TemplateData
- TextExtracts
- Thanks
- TitleBlacklist
- VisualEditor
- WikiEditor


## Building

```shell
docker buildx build --push --platform linux/arm64/v8,linux/amd64/v3 --tag itstreason/mediawiki-ext:1.43.0.1 .
```
