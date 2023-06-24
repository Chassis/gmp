# GMP
A Chassis extension to install and configure [GMP](https://www.php.net/manual/en/book.gmp.php) on your Chassis server.

## Global Installation

We recommend [installing this extension globally](http://docs.chassis.io/en/latest/extend/#globally-installing-extensions) to make it available on every Chassis box.

```
git clone https://github.com/Chassis/gmp ~/.chassis/extensions/xdebug
```

## Project Installation
1. Add this extension to your extensions directory `git clone git@github.com:Chassis/gmp.git extensions/gmp` or alternatively add the following to one of your [`.yaml`](https://github.com/Chassis/Chassis/blob/master/config.yaml) files:
   ```
   extensions:
     - chassis/gmp
   ```
2. Set your `config.local.yaml` PHP version to 5.6 or higher.
3. Run `vagrant provision`.