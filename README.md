# YKProgressBar

_YKProgressBar _is a simple drop-in progress bar control with rounded edges all-_around_ (ha-ha). Just copy the files YKProgressBar.[hm] into your project and you're good to go.

## Demo

Here's a demo of _YKProgressBar_. The floating things on top are scrolled collection view cards.

![demo](https://github.com/karabatov/YKProgressBar/raw/master/demo.gif "YKProgressBar demo")

## Auto Layout

* Create an instance of _YKProgressBar_.
* Add a width constraint.
* The height constraint is already added, and by default it's 6 points tall. See `kYKProgressBarHeight` in YKProgressBar.m.

## Frame manipulation

* Create an instance of _YKProgressBar_.
* Set its frame like so:

```objc
YKProgressBar* progressBar = [EHDProgressBar new];
[progressBar setTranslatesAutoresizingMaskIntoConstraints:YES];
progressBar.frame = CGRectMake(0, 0, desiredWidth, desiredHeight);
```

## License

The licence is MIT. See the included LICENSE.txt for more details.
