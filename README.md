# myner
My Miner

### Usage
1. Validate available stratum

```bash
bash ping.sh
```
2. Change configuration

```bash
vim config.env
```

3. Start miner

```bash
docker-compose -f miner.yaml up -d --build
```

4. Logs

```bash
docker-compose -f miner.yaml logs -f
```