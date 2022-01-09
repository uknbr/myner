# myner
My Miner

### Usage
1. Validate available stratum

```bash
bash ping.sh
```

2. Build base image

```bash
bash setup.sh
```

3. Change configuration

```bash
ls -l config.env
```

4. Start miner

```bash
docker-compose -f miner.yaml up -d --build
```