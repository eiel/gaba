# 我馬を応援するためのライブラリ

[我馬](http://www.gaba-2000.com/)を応援するためのライブラリを提供します。

## Installation

Add this line to your application's Gemfile:

    gem 'gaba'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gaba

## Usage

我馬の新着情報をコマンドラインに表示できます。

```
$ gaba
```

```
$ ruby -r gaba -r pp -e 'pp Gaba.new.to_hash'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gaba/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
