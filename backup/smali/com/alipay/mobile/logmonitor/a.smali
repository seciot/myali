.class final Lcom/alipay/mobile/logmonitor/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/logmonitor/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/b;-><init>(Lcom/alipay/mobile/logmonitor/a;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v3, 0x493e0

    sub-long/2addr v0, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/LogMonitorUtil;->currentTime()J

    move-result-wide v7

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    const-string/jumbo v4, "logmonitor"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14

    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/lang/Process;)Ljava/lang/Process;

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/LogMonitorUtil;->currentDate()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "logmonitor-"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, ".log"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "logmonitor-"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/alipay/mobile/logmonitor/util/LogMonitorUtil;->getSpecifiedDay(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, ".log"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "logmonitor-"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, -0x2

    invoke-static {v9, v10}, Lcom/alipay/mobile/logmonitor/util/LogMonitorUtil;->getSpecifiedDay(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, ".log"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_5

    array-length v3, v5

    if-lez v3, :cond_5

    array-length v10, v5

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_5

    aget-object v11, v5, v3

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "logmonitor-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/alipay/mobile/logmonitor/model/LogFileModel;

    invoke-direct {v9, v3}, Lcom/alipay/mobile/logmonitor/model/LogFileModel;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v10, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v10}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Lcom/alipay/mobile/logmonitor/model/LogFileModel;)Lcom/alipay/mobile/logmonitor/model/LogFileModel;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "logcat -v time"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/lang/Process;)Ljava/lang/Process;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->c()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-wide v3, v0

    move-object v0, v5

    :goto_4
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_13

    :goto_5
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->f()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x3e8

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f

    :goto_6
    :try_start_a
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/LogMonitorConstans;->GLOBAL_LOCK:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    :cond_7
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->c()Z

    invoke-static {v5}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {v5}, Lcom/alipay/mobile/logmonitor/Logcat;->b(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v11, v0, v3

    if-lez v11, :cond_15

    invoke-virtual {v9, v5, v10}, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->a(Ljava/lang/String;Ljava/io/BufferedWriter;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    move-result v11

    if-nez v11, :cond_c

    add-int/lit8 v2, v2, -0x1

    move-wide v0, v3

    move-object v3, v5

    :goto_7
    if-nez v3, :cond_e

    :try_start_b
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    :goto_8
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_c
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_12

    :cond_8
    :goto_9
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/lang/Process;)Ljava/lang/Process;

    goto/16 :goto_2

    :catch_0
    move-exception v3

    :try_start_d
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception v3

    :goto_a
    const-wide/16 v3, 0xfa0

    :try_start_e
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_b

    :goto_b
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v3

    if-eqz v3, :cond_9

    :try_start_f
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    :cond_9
    :goto_c
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/lang/Process;)Ljava/lang/Process;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_10
    monitor-exit v1

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    :catch_2
    move-exception v0

    move-wide v0, v3

    :goto_d
    :try_start_11
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1

    :goto_e
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_12
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    :cond_b
    :goto_f
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/lang/Process;)Ljava/lang/Process;

    goto/16 :goto_2

    :cond_c
    :try_start_13
    invoke-virtual {v9}, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->b()Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/LogMonitorUtil;->currentTime()J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    move-result-wide v11

    cmp-long v11, v7, v11

    if-gez v11, :cond_15

    :cond_d
    :try_start_14
    invoke-static {v9, v10}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Lcom/alipay/mobile/logmonitor/model/LogFileModel;Ljava/io/BufferedWriter;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/LogMonitorUtil;->currentTime()J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    move-result-wide v3

    cmp-long v3, v7, v3

    if-gez v3, :cond_13

    add-int/lit8 v2, v2, -0x1

    move-object v3, v5

    goto/16 :goto_7

    :cond_e
    :try_start_15
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    :goto_10
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v3

    if-eqz v3, :cond_f

    :try_start_16
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    :cond_f
    :goto_11
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/lang/Process;)Ljava/lang/Process;

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v3

    :goto_12
    :try_start_17
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_10

    :catch_4
    move-exception v3

    goto :goto_10

    :catchall_1
    move-exception v3

    move-object v13, v3

    move-wide v3, v0

    move-object v0, v13

    :goto_13
    :try_start_18
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_5

    :goto_14
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_5

    :catch_5
    move-exception v0

    move-wide v0, v3

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v1

    if-eqz v1, :cond_11

    :try_start_1a
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->d()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    :cond_11
    :goto_15
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->b()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/Logcat;->a(Ljava/lang/Process;)Ljava/lang/Process;

    :cond_12
    throw v0

    :catch_6
    move-exception v0

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_8

    :catch_8
    move-exception v3

    goto :goto_10

    :catch_9
    move-exception v0

    goto/16 :goto_e

    :catch_a
    move-exception v1

    goto :goto_14

    :catch_b
    move-exception v3

    goto/16 :goto_b

    :catch_c
    move-exception v1

    goto :goto_15

    :catch_d
    move-exception v3

    goto/16 :goto_c

    :catch_e
    move-exception v3

    goto :goto_11

    :catchall_3
    move-exception v0

    goto :goto_13

    :catch_f
    move-exception v0

    move-wide v0, v3

    goto :goto_12

    :catch_10
    move-exception v0

    goto/16 :goto_f

    :catch_11
    move-exception v3

    goto/16 :goto_d

    :catch_12
    move-exception v0

    goto/16 :goto_9

    :catch_13
    move-exception v0

    goto/16 :goto_5

    :catch_14
    move-exception v0

    goto/16 :goto_1

    :cond_13
    move-wide v3, v0

    move-object v0, v5

    goto/16 :goto_4

    :cond_14
    move-object v3, v5

    goto/16 :goto_7

    :cond_15
    move-object v0, v5

    goto/16 :goto_4

    :cond_16
    move-wide v0, v3

    move-object v3, v5

    goto/16 :goto_7

    :cond_17
    move-object v13, v0

    move-wide v0, v3

    move-object v3, v13

    goto/16 :goto_7
.end method
