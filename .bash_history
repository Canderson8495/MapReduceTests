sudo apt-get update
sudo apt-get install -y default-jdk
sudo apt-get install -y python
sudo addgroup hadoop
sudo adduser --ingroup hadoop hduser
sudo adduser --ingroup hadoop yarn
sudo usermod -a -G hadoop $(whoami)
sudo su - hduser
sudo su - yarn
cd
wget https://archive.apache.org/dist/hadoop/common/hadoop-2.10.1/hadoop-2.10.1.tar.gz
tar xvfz hadoop-2.10.1.tar.gz
sudo mv hadoop-2.10.1 /usr/local/hadoop
sudo mkdir -p /usr/local/hadoop/data/namenode
sudo mkdir -p /usr/local/hadoop/data/datanode
sudo mkdir -p /usr/local/hadoop/logs
sudo chown -R hduser:hadoop /usr/local/hadoop
sudo su - hduser
vim .bashrc
source ~/.bashrc
sudo su - hduser
sudo su - yarn
cd /usr/local/hadoop/etc/hadoop
sudoi vim core-site.xml 
sudo vim core-site.xml 
sudo vim hdfs-site.xml 
sudo su hduser
vim mapred-site.xml
sudo vim mapred-site.xml
vim yarn-site.xml 
sudo vim yarn-site.xml 
vim hadoop-env.sh 
sudo vim hadoop-env.sh 
vim mapred-env.sh 
sudo vim mapred-env.sh 
sudo su - hduser
sudo su -p - hduser -c $HADOOP_INSTALL/sbin/start-dfs.sh
sudo su -p - yarn -c $HADOOP_INSTALL/sbin/start-yarn.sh
hdfs dfs -mkdir /user
hdfs dfs -mkdir /user/$(whoami)
cd
wget http://cobweb.cs.uga.edu/~kim/classes/S22-CSCI4795-6795/PA3/WordCntmapper.py
chmod 755 WordCntmapper.py
wget http://cobweb.cs.uga.edu/~kim/classes/S22-CSCI4795-6795/PA3/WordCntreducer.py
chmod 755 WordCntreducer.py
hdfs dfs -put /usr/local/hadoop/etc/hadoop CSCI4795input
hdfs dfs -ls CSCI4795input/
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py
-mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input CSCI4795input -
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input CSCI4795input -output py_wc_out
hdfs dfs -cat py_wc_out/part-00000 | more
ls
vim WordCntmapper.py 
mkdir p1
ls
cp WordCnt* p1/
ls
cd p1/
ls
vim WordCnt
vim WordCntmapper.py 
vim WordCntreducer.py 
vim WordCntmapper.py 
vim WordCntreducer.py 
vim WordCnt
vim WordCntreducer.py 
vim WordCntmapper.py 
vim WordCntreducer.py 
vim ~/WordCntreducer.py 
vim WordCntreducer.py 
ls
wget 
wget http://cobweb.cs.uga.edu/~kim/classes/S22-CSCI4795-6795/PA3/HVAC.csv
ls
hdfs dfs -put HVAC.csv HVACData
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad_out
ls
vim HVAC.csv 
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad_out
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out
ls
vim WordCnt
vim WordCntmapper.py 
./WordCntmapper.py < HVAC.csv
python WordCntmapper.py < HVAC.csv
vim WordCntmapper.py 
python WordCntmapper.py < HVAC.csv
vim WordCntmapper.py 
python WordCntmapper.py < HVAC.csv
vim ~/WordCntmapper.py 
vim WordCntmapper.py 
python WordCntmapper.py < HVAC.csv
vim WordCntmapper.py 
python WordCntmapper.py < HVAC.csv
vim WordCntmapper.py 
python WordCntmapper.py < HVAC.csv
ls
vim WordCntmapper.py 
vim ~/WordCntmapper.py 
vim WordCntmapper.py 
python WordCntmapper.py < HVAC.csv
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out2
python WordCntmapper.py < HVAC.csv
python WordCntmapper.py < HVAC.csv > out
vim out
python WordCntreducer.py < out
ls
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out3
la
ls
vim WordCntmapper.py 
vim WordCntreducer.py 
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out4
ls
vim WordCntreducer.py 
ls
vim WordCntreducer.py 
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out4
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out5
ls
vim HVAC.csv 
ls
python WordCntreducer.py < out
hdfs dfs -cat py_wc_ouiit/part-00000 | more
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out6
ls
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out5
hdfs dfs -cat py_bad2_out5/part-00000 | more
ls
vim WordCntmapper.py 
ls
python WordCntmapper.py < HVAC.csv 
python WordCntmapper.py < HVAC.csv > out
python WordCntreducer.py < out
ls
vim WordCntreducer.py 
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out6
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out7
ls
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out8
hdfs dfs -ls HVACData
hdfs dfs -cat HVACData
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out9
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_bad2_out10
cd .. 
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input CSCI4795input -output py_wc_out5
ls
vim WordCntmapper.py 
ls
vim WordCntreducer.py 
cd p1/
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out5
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out9
ls
vim WordCntreducer.py 
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out9
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out11
ls
vim WordCntMapper.py
vim WordCntmapper.py 
ls
vim WordCntreducer.py 
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out11
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out12
ls
vim ~/WordCntreducer.py 
vim WordCntreducer.py 
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out12
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out14
ls
python3 WordCntreducer.py < out
vim WordCntreducer.py 
python3 WordCntreducer.py < out
vim WordCntreducer.py 
python3 WordCntreducer.py < out
ls
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out16
ls
python3 WordCntmapper.py < HVAC.csv 
vim WordCntmapper.py 
python3 WordCntmapper.py < HVAC.csv 
python3 WordCntmapper.py < HVAC.csv > out
python3 WordCntreducer.py < out
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out16
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out17
ls
la
ls
rm out
vim HVAC.csv 
ls
rm HVAC.csv 
wget http://cobweb.cs.uga.edu/~kim/classes/S22-CSCI4795-6795/PA3/HVAC.csv
python3 WordCntmapper.py < HVAC.csv > out
ls
vim WordCntmapper.py 
python3 WordCntmapper.py < HVAC.csv > out
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out17
hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.10.1.jar -file WordCntmapper.py -mapper WordCntmapper.py -file WordCntreducer.py -reducer WordCntreducer.py -input HVACData -output py_wc_out18
ls
python3 WordCntmapper.py < HVAC.csv > out
cat out
ls
python3 WordCntreducer.py < out
