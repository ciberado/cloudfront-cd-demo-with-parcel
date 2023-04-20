# Cloudfront Continuous Deployment demo with Parcel applications

This is probably the most simple possible application that uses [Parcel](https://parceljs.org/). It is intended to be used in demos, and the current
version contains an [upload script](scripts/upload.sh) that can be customized to properly send the application to S3. By default, this script sets
an aggresive caching policy for all components but the `index.html`, offering the browser a better chance of getting the most recent version of the
application.

## Usage

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
