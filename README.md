# FontCustom Worker

> A dockerized version of FontCustom to prevent version/OS mismatches

## Usage

```
docker run -i -t -v $(pwd):/app/project telor/fontcustom-worker fontcustom compile
```

## DIY

```
docker build -t my-awesome-fontcustom-worker .
```

```
docker run -i -t -v $(pwd):/app/project my-awesome-fontcustom-worker fontcustom compile
```
