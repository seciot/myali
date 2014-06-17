.class final Lcom/alipay/android/mini/util/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/android/mini/util/MiniSmsReader;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/MiniSmsReader;I[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/e;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    iput p2, p0, Lcom/alipay/android/mini/util/e;->a:I

    iput-object p3, p0, Lcom/alipay/android/mini/util/e;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/mini/util/e;->c:Ljava/lang/String;

    iput p5, p0, Lcom/alipay/android/mini/util/e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v0, p0, Lcom/alipay/android/mini/util/e;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " ReadSms runnable"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->b()V

    iget-object v0, p0, Lcom/alipay/android/mini/util/e;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->g(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/mini/event/MiniReadSmsArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/e;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v1}, Lcom/alipay/android/mini/util/MiniSmsReader;->h(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/lib/phone/SmsReader;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/e;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/mini/util/e;->c:Ljava/lang/String;

    iget v4, p0, Lcom/alipay/android/mini/util/e;->d:I

    iget-object v10, p0, Lcom/alipay/android/mini/util/e;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v10}, Lcom/alipay/android/mini/util/MiniSmsReader;->i(Lcom/alipay/android/mini/util/MiniSmsReader;)Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/alipay/android/mini/util/MiniSmsReader;->a(Lcom/alipay/android/mini/event/MiniReadSmsArgs;Lcom/alipay/android/lib/phone/SmsReader;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJLcom/alipay/android/app/data/ValidatedFrameData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/android/mini/util/e;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->j(Lcom/alipay/android/mini/util/MiniSmsReader;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/mini/util/e;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v0}, Lcom/alipay/android/mini/util/MiniSmsReader;->j(Lcom/alipay/android/mini/util/MiniSmsReader;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/e;->e:Lcom/alipay/android/mini/util/MiniSmsReader;

    invoke-static {v1}, Lcom/alipay/android/mini/util/MiniSmsReader;->j(Lcom/alipay/android/mini/util/MiniSmsReader;)Z

    throw v0
.end method
