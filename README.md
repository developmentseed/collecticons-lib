[![collecticons-banner](https://cloud.githubusercontent.com/assets/1090606/8695447/fdef92fa-2adc-11e5-8979-b61bd96d24ca.png)](https://collecticons.io)

# Collecticons Library

We at [Development Seed](https://developmentseed.org/) use iconography in a lot of projects. Some of the icons were designed/built on top of libraries like [icoMoon by Keyamoon](https://github.com/Keyamoon/IcoMoon-Free) and others were made in house. This [evergrowing collection](http://devseed.com/collecticons) is a set of the icons we've been using so far and are now available for free under the [The MIT License](LICENSE) and the [Creative Commons Attribution License 4.0](https://creativecommons.org/licenses/by/4.0/).

If you feel like contributing to this library checkout the guidelines below:

## Contributing

- The icons in this package are designed on a 16px grid and look best at sizes that are multiples of that value (E.g. 16px, 32px, 48px, etc).
- Download the [template](collecticons-template.svg) file. You'll see a transparent 16px square (named `icon-bound`) being used as a wrapper. This should not be deleted and your artwork must be contained within its limits.
- The icons should look minimalist, geometric yet functional. Use a 2px stroke for general lines and 1px for details. Round corners should be avoided if their only purpose is decoration.
- It's of no use designing finely-detailed icons that don't work at lower resolutions. Do readability tests to ensure that your designs work at different sizes.
- Convert strokes to fills. Unite/combine your fills.
- Instead of using color white for making holes, subtract the foreground shape from the background shape.
- Adding a bitmap image (PNG, JPEG, etc.) to a SVG image does not make it vector. Don't use bitmap images embedded in SVGs.


### Name conventions
The name of the SVG file should follow the pattern:
```
[object]-[classifier]-[index]--[small-modifier].svg
```
- **object**: Avoid using actions in the object part. Always go with real-world object names, except when there's no real-world counterpart or when the icon describes a specific/ubiquitous UI action, like `share` or `download`.
- **classifier**: Additional descriptor, can be simple like `open` or complex like `down-left`.
- **index**: Index for an alternative icon version.
- **small-modifier**: Alternative smaller version of an existing icon.

**Examples**:
```
tick.svg
lock-open.svg
lock-open-2.svg
chevron-down--small.svg
```

#### Groups
It is possible to group icons based on specific criteria, such as if the icon represents an existing `brand` or if it's formally contained within a `wrapper`. These should be placed before the name.

```
[brand]-[name].svg
-- or --
[wrapper]-[name].svg
```

- **brand**: Brand only applies when the icon represents an existing brand (E.g. Facebook, Twitter, etc).
- **wrapper**: Wrapper can be circle, disc, sign, etc.

> Note that `brand` and `wrapper` are mutually exclusive. There can't be a branded icon with a wrapper since brands follow the rules disciplined by their brand guides.

**Examples**:
```
brand-instagram.svg
circle-xmark.svg

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

The compiled version of Collecticons is located inside the `collecticons/` folder. There you'll find the font files, CSS, and the SVG icons.

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
