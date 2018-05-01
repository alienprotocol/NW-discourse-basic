### About

Source files for the custom theme for NerdWallet's user forum (ie Discourse).
- File structure and output file types based on Discourse's [instructions] for custom theming
- Allows us to write the theme using `less` syntax and leveraging NerdWallet's [Base Styles].
- Builds to the `/build` folder, transpiling LESS to SCSS which Discourse expects.
- Deploys built files to a public repo [nerdwallet/discourse-theme-build] for consumption by Discourse.

### Usage

Install dependencies
```
npm install
```

To create built output files:
```
npm run build
```

To deploy built files to `disourse-theme-build`
```
npm run deploy
```

### Development

* Clone this repo
* Install dependencies
* Fork [nerdwallet/discourse-theme-build]
* Update the [deploy command] to push to your github fork:
```
git@github.com:<your-github-name>/discourse-theme-build.git
```
* Load your fork of the repo into your local Discourse by first going to the admin panel, then to the customize tab, then clicking the import button
* Point the deploy script back to Nerdwallet/discourse-theme-build before opening a PR with your changes

### Owners
* @nerdwallet/experimental-projects

[Base Styles]: https://github.com/nerdwallet/base-styles
[instructions]: https://meta.discourse.org/t/how-to-develop-custom-themes/60848
[nerdwallet/discourse-theme-build]: https://meta.discourse.org/t/how-to-develop-custom-themes/60848
[deploy command]: https://github.com/NerdWallet/discourse-theme/blob/master/package.json#L9
