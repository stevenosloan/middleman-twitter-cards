## Middleman Twitter Cards

Implements the meta-tags for twitter cards with the appropriate opengraph fallbacks.

Currently implemented card types:
- summary

## Use

The data for the cards comes from a pages frontmatter, or defaults set in !!data folder!!. A simple example using frontmatter only would look like this:

```ruby
twitter:
	card: summary
	title: Victory of the Daleks
	description: Annihilate? No. No violence. I won't stand for it. Not now, not ever, do you understand me?! I'm the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn't you?
  img_src: http://placehold.it/250x250
  site: @stevenosloan
	creator: @stevenosloan
```

And generate a card that looks like this:

![Card Preview](/docs/card-preview.png)


## Testing


## Contributing

If there is any thing you'd like to contribute or fix, please:

- Fork the repo
- Add tests for any new functionality or uncovered bugs
- Make your changes
- Verify all existing tests work properly
- Make a pull request


## License

The middleman-twitter-cards gem is distributed under the [MIT License](/LICENSE).