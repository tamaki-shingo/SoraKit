# SoraKit

Client Library of Sora (ShangriLa Anime API Server) for iOS

<!-- [![CI Status](http://img.shields.io/travis/Shingo Tamaki/SoraKit.svg?style=flat)](https://travis-ci.org/Shingo Tamaki/SoraKit) -->
[![Version](https://img.shields.io/cocoapods/v/SoraKit.svg?style=flat)](http://cocoapods.org/pods/SoraKit)
[![License](https://img.shields.io/cocoapods/l/SoraKit.svg?style=flat)](http://cocoapods.org/pods/SoraKit)
[![Platform](https://img.shields.io/cocoapods/p/SoraKit.svg?style=flat)](http://cocoapods.org/pods/SoraKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SoraKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SoraKit"
```

## Usage

### Cours (cours api)
Returns a list of information for each season of animation information ShangriLa api server has. `cours mean is one season(three month) at japanese tv show.`

Cours api return Cour struct as following.

```
Sora.cours(success: { (cours) in
  // Success
}) { (error) in
  // Error
}
```

#### Cour struct
|name|description|
|---|---|
|id|cours id|
|year| year(YYYY)|
|cours| the season of the year|


### AnimeTitles (year api)
Return the anime title of any year.

```
Sora.animeTitles(OfYear: year, success: { (titles) in
  // Success
}, failure: { (error) in
  // Error
})
```
year api return AnimeTitle struct as following.

#### AnimeTitle struct
|name|description|
|---|---|
|id|cours_id|
|title| anime title|

### AnimeInfo (year/cour api)

Return the anime information of any season of any year.

```
Sora.animeInfo(OfYear: year, season: season, success: { (animeInfoList) in
  // Success
}, failure: { (error) in
  // Error
})
```

year/cour api return AnimeInfo struct as following.

#### AnimeInfo struct

|name|description|
|---|---|
|id|unique id assigned to anime managed by Sora api|
|title|anime title|
|title_short1|anime short title 1|
|title_short2|anime short title 2|
|title_short3|anime short title 3|
|public_url| official site url of anime|
|twitter_account|official site account of twitter|
|twitter_hash_tag|twitter hashtag of anime|
|cours_id|cours id|
|created_at|data creation date|
|updated_at|data updation date|
|sex|for men is 0 / for women is 1|
|sequel|In the case of a sequel, a numerical value of 1 or more is returned|
|city_code|city code of area that was modeled on the anime|
|city_name|name of area that was modeled on the anime|

## Author

Shingo Tamaki, tamaki.shingo@gmail.com

## License

SoraKit is available under the MIT license. See the LICENSE file for more info.
