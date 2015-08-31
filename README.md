[![collecticons-banner](https://cloud.githubusercontent.com/assets/1090606/8695447/fdef92fa-2adc-11e5-8979-b61bd96d24ca.png)](https://collecticons.io)

# Collecticons Library

We at [Development Seed](https://developmentseed.org/) use iconography in a lot of projects. Some of the icons were designed/built on top of libraries like [icoMoon by Keyamoon](https://github.com/Keyamoon/IcoMoon-Free) and others were made in house. This [evergrowing collection](http://devseed.com/collecticons) is a set of the icons we've been using so far and are now available for free under the [The MIT License](LICENSE) and the [Creative Commons Attribution License 4.0](https://creativecommons.org/licenses/by/4.0/).

If you feel like contributing to this library checkout the guidelines below:

## Contributing

- The icons in this package are designed on a 16px grid and look best at sizes that are multiples of that value (E.g. 16px, 32px, 48px, etc).
- Download the [template](collecticons-template.svg) file and design your icon on top of the conveniently sized 512px grid - a multiple of 16px. Each cell of the grid equals 1px when downscaled to its root size. Don't worry about the grid on the final product: it will be automatically removed from the production icon.
- The icons should look minimalist, geometric yet functional. Use a 2px stroke for general lines and 1px for details. Round corners should be avoided if their only purpose is decoration.
- It’s of no use designing finely-detailed icons that don’t work at lower resolutions. Do readability tests to ensure that your designs work at different sizes.
- Convert strokes to fills. Unite/combine your fills.
- Instead of using color white for making holes, subtract the foreground shape from the background shape.
- Adding a bitmap image (PNG, JPEG, etc.) to a SVG image does not make it vector. Don’t use bitmap images embedded in SVGs.


### Name conventions
The name of the svg file should follow the pattern:
```
[object]-[classifier]-[index].svg
```
- **object**: Avoid using actions in the object part. Always go with real-world object names, except when there's no real-world counterpart or when the icon describes a specific/ubiquous UI action, like `share` or `download`.
- **classifier**: Additional descriptor, can be simple like `open` or complex like `down-left`.
- **index**: Index for an alternative icon version.

**Examples**:
```
tick.svg
lock-open.svg
lock-open-2.svg
expand-down-left-3.svg
```

#### Groups
It is possible to group icons base on certain characteristics like the `size` or `wrapper`. These should be placed before the name.

```
[size]-[name].svg
-- or --
[wrapper]-[name].svg
```

- **size**: Size only applies when is a small version of an existing icon.
- **wrapper**: Wrapper can be circle, disc, sign, etc.

> Note that `size` and `wrapper` are mutually exclusive. There can't be a small icon with a wrapper since it wouldn't have enough readability at 16px.

**Examples**:
```
circle-xmark.svg
sm-plus.svg
```

### Optical size

Some icons are better expressed at smaller sizes, especially when they are presented alongside text. This means that their design doesn't need to occupy the whole grid. Try to use 80% or less of the grid space instead. Example: `sort`.

## Versions
Collecticons operates similarly to [Semver](http://semver.org/) with the following version convention:

- Major: Breaking changes — removed icons, icon redesigns, name changes
- Minor: Non-breaking changes — new icons, minor icon changes
- Patch: Unnoticeable tweaks — slight visual changes, other updates

When the version changes the version number in the `bower.json` file must be updated as well.
Also, with a merge to `master` a new release should be created.


## Add Collecticons to your project

The compiled version of collecticons is located inside the `collecticons/` folder. There you'll find the font files, css, and the gridless svg icons.

You can also use your usual package manager:

### Bower
1. Create a `bower.json` file if you don't have one (use `bower init`)

2. Install collecticons. The icons styles will be downloaded to *bower_components/collecticons*.
  ```
  bower install --save collecticons
  ```

3. Link to the `icons.css` stylesheet in the `<head>` of your `<html>` page:
  ``` html
  <link rel="stylesheet" href="bower_components/collecticons/collecticons/styles/icons.css">
  ```

4. Simply use an icon in your HTML page:
  ``` html
  <span class="collecticon collecticon-devseed"></span>
  ```

### Webfont

If you are interested in generating a custom webfont and the accompanying css/sass files from the icons we've got you covered! We created a command line util specifically for this purpose.

Check the [collecticons processor](https://github.com/developmentseed/collecticons-processor) repo for usage instructions.
