# Jekyll App Site

The Jekyll App Site is a small Jekyll template to present an iPhone app with a static site. [Demo](http://jpsim.com/jekyll_app_site)

## Running Locally

### Option 1: Docker (Recommended)

The easiest way to run the site locally is using Docker Compose:

**Start the server:**
```bash
docker-compose up -d
```

**Access the site:**
- Open your browser to `http://localhost:4000/`
- LiveReload is enabled - the browser will automatically refresh when you make changes

**View logs:**
```bash
docker-compose logs -f
```

**Stop the server:**
```bash
docker-compose down
```

**Note:** The Docker setup uses `_config_dev.yml` to override the production `baseurl` setting, allowing the site to run at the root path (`/`) instead of `/bladetracker/` during local development.

### Option 2: Local Jekyll Installation

Make sure you have all the [requirements](#requirements) installed.

There are 4 rake tasks:

* `rake`: same as running `rake:serve`
* `rake serve`: compile and run the site with changes reloaded automatically
* `rake build`: compile the site without running it. Useful for deploying.
* `rake clean`: deletes the `_site` and `assets` directories

To deploy, upload the `_site` directory to your static HTML server (i.e. [AWS S3](http://aws.amazon.com/s3)).

## Requirements

* [Jekyll](http://jekyllrb.com): `gem install jekyll`
* [Sass](http://sass-lang.com): `gem install sass`
* [rsync](http://rsync.samba.org)

## Modifying

You'll probably want to modify the following files for your project:

* `_config.yml` for site constants (name, tagline, etc.)
* `favicon.ico` for the site's favicon
* `index.md` for content
* `press/index.md` for content
* `support/index.md` for content
* `_assets/stylesheets/globals/variables.scss` for colors
* `_assets/images/*` for images

## Credits

* HTML/Sass for this template was originally written for Sinatra by [Sam Soffes](https://github.com/nothingmagical/getcoinsapp.com)
* [Grater](https://github.com/soffes/grater)
* [Bourbon](http://bourbon.io)

## License

MIT licensed.