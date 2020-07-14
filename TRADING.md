# Trading Competition 2020 - Trading Tips

Some basic trading tips are described here for your information.  You are encouraged to do your own research and learn as much about the subject as you can to improve your chances of making good trades.

## Menu

[License](LICENSE)

[Main Readme](README.md)

[IB Client Portal](IB-CLIENT-PORTAL.md)

[Investopedia Automation](INVESTOPEDIA.md)

[Capybara Cheat Sheet](https://gist.github.com/zhengjia/428105)

## Basic Market Theory

This repo contains 5 basic strategies.  The ultimate aim of the game is to buy low, sell high.  To do this you will most likely need to purchase some kind of financial security that is likely to go up in value in the near future.

There are several reasons this might happen, which are all based on exploiting inefficiencies in the market place.  These are roughly categorised as:

### Asymmetry of information

In an ideal market, everyone has access to the same information.  This would in theory lead everyone to come to a similar conclusion over the value of the asset, and reduce inaccurate pricing.

To understand where this can fail, imagine buying a second hand car.  The owner maybe knows that this car is a piece of junk, but disguises this to make it look like a solid, reliable car.  Not-knowing this information, the buyer can be persuaded into over-paying for an asset which is not worth as much.

Going the other, a highly knowledgeable antique-dealer, maybe at a garage sale and see a very rare and valuable item for sale for $10.  The seller, not knowing it's real value, may be willing to sell it under-priced, so the antique dealer can then take this item to another market where people under-stand it's value and make a profit.

### Inhomogenous goods

Generally speaking, if a good can be easily substituted for another good, it becomes difficult to over-price it.  If someone is trying to sell potatoes for $100 per potato, obviously buyers will just go elsewhere and purchase an equivlanet item (i.e. a substitute) for much less.

However, if for some reason, this is a special potato, that has some special properties not available elsewhere, then the seller may be able to support the inflated valuation, because they have control of the supply of this special potato.

A good example of this is the company Apple, which has managed to convince everyone that their products are somehow special and so people are willing to pay over-the-odds for them.  The result being that Apple is one of the most cash-rich companies of all time.

### Limited Suppliers or Buyers

If you don't have lots and lots of other sellers in the marketplace, you end up with what's called an 'oligopoly' (i.e. a few large suppliers, like supermarkets for instance), or a 'monopoly' where there is only one supplier of the good

An interesting example of this is the copper-man, who attempted to control the entire world's supply of copper in order to charge above it's real value to make money.

Ultimately his attempt to create a monopoly failed, but it's [an interesting example nonetheless](https://en.wikipedia.org/wiki/Sumitomo_copper_affair)

You can also flip it the other way, if you are the only person purchasing in a market place, you can push the price down.  Supermarkets do this well to bully their suppliers on price, since they purchase the majority of milk for example, the farmers have little choice but to accept whatever price they are offered by the supermarkets

### Barriers to entry

If you have an inefficient market, where someone is making abnormally high profits, you'd expect that someone else would notice, and come in and under-cut them to take a slice of the pie.

You'd expect over time that as more suppliers enter the market, and under-cutting each other, that prices would return to normal levels.

Of course, if there are high barriers to entry into this market place (either large capital investment required, or intense legal regulation, eg setting up a bank), then other sellers cannot come in and undercut and the existing players in the marketplace continue to benefit from charging abnormally high prices

## Some example strategies

So now I will cover some examples of strategies you could use to take advantage of these things, in some different markets

### Arbitrage

Arbitrage is taking advantage of asymmetry of information mainly.  You operate in two markets, where you can buy in one market and sell in another.

The people in the first market do not realise that there is another market they could be trading in and getting a better price.

Ultimately this is what merchants do.  They buy from one country, transport the goods to another country, and sell at a profit.

### Value Investing

This is another manipulation of asymmetry of information.  Due to market perceptions at a particular moment in time, an asset may be underpriced.

It may be a company that has excellent long-term prospects, good growth, but for some reason the majority of people have decided that the company actually is not doing that well and so are selling their stock.

If you are one of the few people that have realised this, you can be buying the stock cheaply.

Later on, when the company continues to grow, and the doomsday scenario that everyone was expecting never occurs, then suddenly everyone realises you were right and starts buying back up the stock.

Now the price goes up and you can cash in and take your profit.

### Speculation / Momentum Trading

Under normal circumstances, prices change due to a change in economic prospects.

Let's say a small company lands a large contract, it is now significantly more valuable as an enterprise compared to before.

Or let's say a drought hits and destorys crops, now the remaining crop commodities are more valuable due to forces of supply and demand.

However, this change in price my cause an increased interest in the asset, and buyers may move into the market.  Other people, noticing that others had made a profit from the price rise, may decide to enter the market also.

This further stimulates interest and the price goes up, not because the underlying asset is more valuable, but the price rises because the price has risen.

As more and more speculators enter the market, the price rises ever higher, creating what is known as a 'bubble', which eventually bursts when everyone realises that the price has deviated way too far from the true value of the underlying asset.

A good example of this are [Trading sardines](https://www.advisorperspectives.com/commentaries/2019/03/27/trading-sardines)

Another interesting example of this is a [short-squeeze](https://en.wikipedia.org/wiki/Short_squeeze#:~:text=A%20short%20squeeze%20is%20a,covering%20(liquidating)%20their%20positions), which happened last year to the Tesla Stock

### Hedging

This is usually combined with another stratgey.  It's a method of risk-transfer (see the section on risk-weighted returns) where you either take short-positions or futures contracts to trade risk.

By buying or selling risk to other parties, but hopefully at a better price than the risk is worth, you can increase your risk-weighted returns.

Insurance is a good example of this.  If you buy a car for $10,000 and an insurance provider is offering insurance of $1 per year, then they are pricing the risk way too low.

You can pay to transfer that risk to them much to your benefit.  If another insurer was charging $5,000 for the year, then they would likely benefit.

Hedging well enables you to under-pay to transfer risk to another party and can increase your risk-weighted returns.

## Risk-Weighted Returns

If you play a game multiple times, you can model your expected winnings in the following way:

* Your probability of winning the game is called p.
* Your probability of losing is therefore 1-p, which we call q.
* Your winnings when you win are called W
* Your losses when you lose, we call L

Then your expected winnings are:

E_w = p * W

and your expected losses are:

E_l = q * L

So your risk-weighted return is:

E = p * W - q * L

### Some examples

Let's say you are paying $1 to play a game.  The game involves a coin-flip of a fair coin.  You win $2 if the coin is heads, and nothing if tails.

So, p = q  = 0.5

Your winnings when you win, are $1.  Since you earn $2 but you paid $1 to play.

Your losses when you lose are also $1, since you pay $1 to play but earn nothing.

So your risk-weighted returns are E = 0.5 * 1 - 0.5 * 1 = 0.  In the long-run, you'd expect to earn nothing from this game.

What you often find, is that when you try to increase p, you end up increasing L as well.  Or trying to increase W may increase L or decrease p.

Or if you try to decrase L or q, you often end up decreasing W.

The goal however, is to trade a smaller loss for a bigger gain.
