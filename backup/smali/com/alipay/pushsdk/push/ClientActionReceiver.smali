.class public Lcom/alipay/pushsdk/push/ClientActionReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:I

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/alipay/pushsdk/push/NotificationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const/16 v0, 0x12c

    sput v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/ClientActionReceiver;)Lcom/alipay/pushsdk/push/NotificationService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive() action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive() networkInfo.isConnected()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Lcom/alipay/pushsdk/c/c;->b(Landroid/content/Context;)Z

    move-result v9

    new-instance v10, Lcom/alipay/pushsdk/push/o;

    invoke-direct {v10, p1}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isNotificationEnabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isNetConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->v:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v11, 0x0

    add-long/2addr v5, v11

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ClientActionReceiver_onReceive getAction:"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".push.action.KEEPLIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->u()V

    const-string/jumbo v0, "30"

    const-string/jumbo v1, "41"

    const-string/jumbo v2, "3"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "15"

    new-instance v1, Lcom/alipay/pushsdk/push/a;

    invoke-direct {v1, p0, v0}, Lcom/alipay/pushsdk/push/a;-><init>(Lcom/alipay/pushsdk/push/ClientActionReceiver;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v2, "ClientActionReceiver Triger Runnable"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".push.action.CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v10}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Lcom/alipay/pushsdk/push/o;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v8, v0

    :goto_1
    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->m:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->w:Ljava/lang/String;

    const-wide/16 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ClientActionReceiver_PushConnect:settingStatus="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run settingStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    if-nez v9, :cond_5

    invoke-static {}, Lcom/alipay/pushsdk/push/p;->a()I

    move-result v0

    if-gez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->b()V

    const-string/jumbo v0, "30"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "30"

    const-string/jumbo v1, "10"

    const-string/jumbo v2, "6"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".push.action.CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    sget v1, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/NotificationService;->a(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()Lcom/alipay/pushsdk/push/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/a/m;->a()Z

    move-result v0

    :cond_9
    new-instance v1, Lcom/alipay/pushsdk/push/o;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/o;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkPushStatus linkStatus="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", settingStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_b

    const/4 v0, 0x0

    move v8, v0

    :goto_3
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PushCheck checkPushStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->l:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ClientActionReceiver_PushCheck:curStatus="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/j;

    move-result-object v11

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v11}, Lcom/alipay/pushsdk/push/j;->c()V

    const-string/jumbo v0, "16"

    const-string/jumbo v1, "20"

    const-string/jumbo v2, "7"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_c
    const/4 v0, -0x1

    move v8, v0

    goto :goto_3

    :pswitch_1
    invoke-virtual {v11}, Lcom/alipay/pushsdk/push/j;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Lcom/alipay/pushsdk/push/j;->u()V

    const-string/jumbo v0, "16"

    const-string/jumbo v1, "41"

    const-string/jumbo v2, "3"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v11}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v10}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->c()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long v8, v2, v0

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->l:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ClientActionReceiver_onReceive:curWaitTime="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_d

    invoke-virtual {v11}, Lcom/alipay/pushsdk/push/j;->c()V

    invoke-virtual {v11}, Lcom/alipay/pushsdk/push/j;->b()V

    const-string/jumbo v0, "16"

    const-string/jumbo v1, "31"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "16"

    const-string/jumbo v1, "30"

    const-string/jumbo v2, "5"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v11}, Lcom/alipay/pushsdk/push/j;->b()V

    const-string/jumbo v0, "16"

    const-string/jumbo v1, "01"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
