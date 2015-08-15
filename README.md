# Kaleidoscope

Kaleidoscope is an open source Bootstrap theme, with some extensions inspired on other UI kits, like Semantic-UI, PureCss and others.

## Install

- Manually:  
  Download the latest release and copy the CSS and font files to your own project.
- With Bower:  
  `$ bower install kaleidoscope --save`

## Usage

The bower package includes source stylus files and the built CSS file. The built CSS file includes all the components.

To customize the theme, import the main stylus file, located at <code>src/index.styl</code>, overriding any component parameter before the import. See the <code>config</code> directory for a reference of what can be overrided. There's no need to alter any file inside the <code>config</code> directory, just define the variables before importing Kaleidoscope and the new values will be applied.

To create a custom buid ommiting some of the components, set to <code>false</code> any of the import directives defined in <code>src/import-config.styl</code>. Again, there's no need to alter the package files, just declare the variables before importing it.

```stylus
// Bower packages directory
$vendorPath = 'assets/vendor/'

// Override anything you want or disable components
$fontsPath         = '../fonts/'
$import-glyphicons = false

@import $vendorPath + 'kaleidoscope/src/index.styl'
```


## Documentation

[Kaleidoscope documents](https://github.com/mosaiqo/kaleidoscope)
