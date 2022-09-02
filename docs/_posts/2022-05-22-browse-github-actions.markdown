---
layout: post
title:  "Ghaaa! Browse Github Actions!"
date:   2022-05-20 17:45:19 +0000
categories: github
---
We are moving away from an older CI/CD setup into using Github Actions.
My team provides standard workflows to the rest of the R&D organization.
We want it to be easy for teams to have a good setup, and a way
for us to improve the flows for all teams.

The only file needed to get CI is a short github action file, like this, that
supplies a few parameters to a shared workflow. Then we have a similar
setup for deployments.

A typical file, `service-repo.git/.github/workflows/validate-pr.yml`would contain:
```
name: Validate PR

on:
   pull_request

jobs:
  validate-pr:
     uses: ourorg/shared-workflows.git/.github/workflows/shared-validate-pr.yml
	 with:
	   some_setting: true
	   another_setting: false
...
```

And that in turn, is composed out of both standard actions, like the
ones from Github and Amazon, as well as tailor made ones from my
team.

```
actions/checkout@v3
internal-action-1@v1
internal-action-2@v1
...
```
When troubleshooing, or just wanting to understand the
build chain, it would be so convenient to be able to follow
links from one workflow into each and every action. Unfortunately
Github have not turned them into links.

Initially I thought about reaching out to github and ask
about it, but then I got a better idea. Just do it!
This is an excellent reason to try to do a chrome
extension - [ghaaa](https://gitlab.com/rolwi/ghaaa)!

Writing Javascript is not my home turf, and I opted to do
it without any extra dependencies in order to have less things
to worry about. It was fun, and quick, to get something
that works good enough for me. Done is, definitely, better
than perfect!

This is what it looks like - each reference to a workflow
or action is turned into a link:

![ghaaa screenshot](/assets/ghaa.png)

Now I will reach out to github and ask for it to
be available in github. After using it, it's really
useful! And I'm sure, many have already asked for it!

