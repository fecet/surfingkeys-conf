name := `basename "$PWD"`

cache:
  # mkdir -p ~/.cache/{{name}}/node_modules && ln -sf ~/.cache/{{name}}/node_modules ./node_modules
  # mkdir -p ~/.cache/{{name}}/.yarn && ln -sf ~/.cache/{{name}}/.yarn ./.yarn
  rsync -avP "$PWD"/ ~/{{name}}/

build:
  npm install
  npm run gulp install
