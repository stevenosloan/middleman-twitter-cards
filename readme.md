## Middleman Twitter Cards

Implements the meta-tags for twitter cards with the appropriate opengraph fallbacks.

Currently implemented:
- summary

## Use

The data for the cards comes from a pages frontmatter, or defaults set in !!data folder!!. A simple example using frontmatter only would look like this:

```ruby
twitter:
	card: summary
	site: @stevenosloan
	title: Victory of the Daleks
	description: Annihilate? No. No violence. I won't stand for it. Not now, not ever, do you understand me?! I'm the Doctor, the Oncoming Storm - and you basically meant beat them in a football match, didn't you?
	creator: @stevenosloan
	img_src: http://placehold.it/250x250
	domain: stevenosloan.com
```

And generate a card that looks like this: