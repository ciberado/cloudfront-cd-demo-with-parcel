# Cloudfront Continuous Deployment demo with Parcel applications

This is probably the most simple possible application that uses [Parcel](https://parceljs.org/). It is intended to be used in demos, and the current
version contains an [upload script](scripts/upload.sh) that can be customized to properly send the application to S3. By default, this script sets
an aggresive caching policy for all components but the `index.html`, offering the browser a better chance of getting the most recent version of the
application.

## Usage

* Install node

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts

node --version
```

* Clone the repo

```bash
git clone https://github.com/ciberado/cloudfront-cd-demo-with-parcel
cd cloudfront-cd-demo-with-parcel
```

* Initialize it

```bash
sudo apt update
sudo apt-get install build-essential -y
npm install
```

* To start the development server

```bash
npm run dev
```

* For building the production version

```bash
npm run build-prod
```

* To upload the application to S3

```bash
npm run upload
```
