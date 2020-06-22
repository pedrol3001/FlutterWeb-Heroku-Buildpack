# Flutter Buildpack for Heroku

## Requirements

* [Heroku Tools]
  > Will be needed to start and maintain your heroku project
* [Git]
  > Will be needed to start and maintain a github project
* [Flutter Web]
  > Will be needed to have a website to deploy

## Get started

Firsts things first you will need a project at **[Heroku]** and a compiled **[Flutter SDK URL]**. (Works with **[flutter github project]** (**recommended**), still trying to develop a way to use compiled versions like .tar.gz and .zip files)

```sh
$ heroku create myfirstherokuflutterwebproject
$ heroku config:set FLUTTER_SDK_URL=<flutter git url>
```

To get it actually working you shall use the **[Heroku Static Buildpack]**, set it to load after the flutter buildpack. Your static.json should have this config.

```json
{
 "root": "build/web/"
}
```

Obs: build/web is the directory created by flutter after the build. (Should be in the application root and contains html, css and JS files)

Obs²: Since the flutter build does not provide a server we need to use this buildpack alongside with a server provider. (We used **[Heroku Static Buildpack]** for that)

Then you shall push the app to Heroku. You can learn more about deploying to Heroku with git [in this link].

```sh
$ git push heroku master
```

Then, have fun! Your site should be deployed in any time at the URL given to you trough this last code.

[Heroku]: <https://www.heroku.com>
[Heroku tools]: <https://devcenter.heroku.com/articles/heroku-cli>
[Git]: <https://git-scm.com/downloads>
[Flutter SDK URL]: <https://flutter.dev/docs/get-started/install>
[flutter github project]: <https://github.com/flutter/flutter>
[in this link]: <https://devcenter.heroku.com/articles/git>
[Flutter Web]: <https://flutter.dev/docs/get-started/web>
[Heroku Static Buildpack]: <https://github.com/heroku/heroku-buildpack-static>
