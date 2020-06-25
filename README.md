# Bikeshed GitHub Action

This is a [GitHub Action](https://help.github.com/en/actions) that converts [Bikeshed](https://tabatkins.github.io/bikeshed/)
source documents to HTML.  

## Usage

Just add this snippet to your GitHub workflow:

```yaml
      - name: Output to HTML
        uses: netwerk-digitaal-erfgoed/bikeshed-action@v1
```

So, if you follow the rule that [anything in the `master` branch is always deployable](https://guides.github.com/introduction/flow/),
you can automatically convert your Bikeshed source in the master branch and push the result to GitHub Pages like this:

```yaml
name: Publish

on:
  push:
    branches:
      - master

jobs:
  build:
    runs-on: ubuntu-18.04

    steps:
      - uses: actions/checkout@v2

      - name: Output to HTML
        uses: netwerk-digitaal-erfgoed/bikeshed-action@v1

      - name: Publish HTML to GitHub Pages
        if: success()
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
```
