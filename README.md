This is the LSF Website.

If you see any bugs, please send a PR. 

If you can make the site look nicer but <em>without messing up the strict content vs. style separation</em>, please send a PR.

To run locally do the following:
<pre>
1. git clone the repo
2. jekyll serve
</pre>

### Running with Docker Compose

If you have Docker installed, you can start the local development server with LiveReload using:

```bash
docker compose up --build
```

Once running, visit [http://localhost:4000](http://localhost:4000) in your browser. Any changes you make to the source files will automatically rebuild the site and reload the page.
