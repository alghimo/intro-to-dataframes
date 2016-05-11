FROM alghimo/docker-zeppelin-standalone:latest
MAINTAINER Albert Giménez <albert.gimenez.morales@gmail.com>

COPY notebook/intro-to-spark /zeppelin/notebook/2BKE3N99M
COPY notebook/intro-to-scala/1_basics /zeppelin/notebook/2BJ5EXM41
COPY notebook/intro-to-scala/2_collections_and_type_inference /zeppelin/notebook/2BJNYS7B3
COPY notebook/intro-to-scala/3_oop_basics /zeppelin/notebook/2BGZKZQZB
COPY notebook/intro-to-scala/4_functions /zeppelin/notebook/2BGU1NN4F
COPY notebook/intro-to-scala/5_pattern_matching /zeppelin/notebook/2BG791231
COPY notebook/intro-to-scala/6_extras /zeppelin/notebook/2BHNQ5VW4
COPY notebook/home /zeppelin/notebook/2BGF7ZF2F
COPY zeppelin-env.sh /zeppelin/conf/
COPY notebook/intro-to-df/0_setup_data /zeppelin/notebook/2BJ7UV53P
COPY notebook/intro-to-df/1_exploring_dataframes /zeppelin/notebook/2BGJMERQ3
COPY notebook/intro-to-df/2_transformations /zeppelin/notebook/2BFMDMV28
COPY notebook/intro-to-df/3_actions /zeppelin/notebook/2BJFVHAMG
COPY notebook/intro-to-df/4_troubleshooting /zeppelin/notebook/2BH3KHM9W

ENTRYPOINT ["/etc/bootstrap.sh"]
