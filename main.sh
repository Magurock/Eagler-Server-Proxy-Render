#!/bin/bash
echo Starting...
cd Velocity

sed -i 's/${SERVER0}/"$SERVER0"/g' velocity.toml
sed -i 's/${SERVER1}/"$SERVER1"/g' velocity.toml
sed -i 's/${SERVER2}/"$SERVER2"/g' velocity.toml
sed -i 's/${SERVER3}/"$SERVER3"/g' velocity.toml
sed -i 's/${SERVER4}/"$SERVER4"/g' velocity.toml
sed -i 's/${SERVER5}/"$SERVER5"/g' velocity.toml
sed -i 's/${SERVER6}/"$SERVER6"/g' velocity.toml
sed -i 's/${SERVER7}/"$SERVER7"/g' velocity.toml
sed -i 's/${SERVER8}/"$SERVER8"/g' velocity.toml
sed -i 's/${SERVER9}/"$SERVER9"/g' velocity.toml

sed -i 's/${MTOD}/"$MTOD"/g' velocity.toml

sed -i 's/${MAXPLAYER}/$MAXPLAYER/g' velocity.toml

cd plugins
cd EaglercraftXServer

sed -i 's/${MTOD}/'$MTOD'/g' listener.yml

cd /
cd Velocity
cd plugins
cd nanolimbovelocity
cd main

sed -i 's/${SLMESSAGE}/$SLMESSAGE/g' settings.yml
sed -i 's/${SLBOSSBAR}/$SLBOSSBAR/g' settings.yml
sed -i 's/${SLTITLE}/$SLTITLE/g' settings.yml
sed -i 's/${SLSUBTITLE}/$SLSUBTITLE/g' settings.yml

cd /
cd Velocity

java -Xmx1024M -Xms1024M -jar Velocity.jar nogui
