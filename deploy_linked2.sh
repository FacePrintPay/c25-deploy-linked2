#!/data/data/com.termux/files/usr/bin/bash
echo "🌐 Linking Planetary Agent Nodes..."
for agent in ~/AiKre8tiveGenesis/platform/backend/agents/*.py; do
  name=$(basename "$agent" .py)
  nohup python "$agent" > ~/AiKre8tiveGenesis/platform/logs/${name}.log 2>&1 &
  echo "✅ Launched $name agent"
done

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=deploy_linked2.sh
