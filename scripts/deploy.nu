# Deploy the built graph → cyberproxy:/var/www/html/cyberia.blog/
#
#   nu scripts/build.nu --public-only
#   nu scripts/deploy.nu

def main [] {
  let root = (
    if ($"($env.PWD)/publish.toml" | path exists) { $env.PWD }
    else { error make {msg: "run from cyberia-blog root"} }
  )
  let build = $"($root)/build"
  if not ($"($build)/index.html" | path exists) {
    error make {msg: "build/index.html missing — run: nu scripts/build.nu --public-only"}
  }

  print "→ rsync → cyberproxy:/var/www/html/cyberia.blog/"
  ^ssh cyberproxy "mkdir -p /var/www/html/cyberia.blog"
  ^rsync -az --delete $"($build)/" "cyberproxy:/var/www/html/cyberia.blog/"
  print "✓ deployed → https://cyberia.blog/"
}
