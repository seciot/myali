.class public final Lcom/alipay/pushsdk/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/pushsdk/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    new-instance v0, Lcom/alipay/pushsdk/push/o;

    iget-object v1, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    const-class v3, Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "stopService is called."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->g:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->D:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    const-string/jumbo v7, "ServiceManager_stopService"

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/pushsdk/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b;-><init>(Lcom/alipay/pushsdk/a;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/alipay/pushsdk/push/o;

    iget-object v1, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isNotificationEnabled="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", triger="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/c/a/d;->a()V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->p:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x2710

    add-long/2addr v5, v9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ServiceManager_startService: triger="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "cur_triger"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    new-instance v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "\u652f\u4ed8\u5b9d-\u9ed8\u8ba4\u6d4b\u8bd5\u6d88\u606f\u9ed8\u8ba4\u6d4b\u8bd5\u6d88\u606f"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "\u79fb\u52a8\u5feb\u6377\u652f\u4ed8\u63a5\u5165Push\u901a\u77e5\u7684\u6d4b\u8bd5\u6d88\u606f\u3002\u76ee\u7684\u662f\u901a\u8fc7\u79fb\u52a8\u5feb\u6377\u5ba2\u6237\u7aef\u5e26\u6765\u652f\u4ed8\u5b9d\u5ba2\u6237\u7aef\u7684\u4e0b\u8f7d\u4f7f\u7528\u3002"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "{\"type\":\"clientUpgrade\",\"params\":{\"url\":\"http\",\"tip\":\"\u652f\u4ed8\u5b9d\u94b1\u53057.6\u65b0\u7248\u7279\u6027\uff1a\\n- \u65b0\u7248\u60c5\u611f\u8f6c\u8d26\uff0c\u80fd\u8bf4\u8bdd\uff0c\u5e26\u8868\u60c5\\n- \u5f53\u9762\u4ed8\u91cd\u8981\u5347\u7ea7\uff0c\u65e0\u7f51\u7edc\u4e5f\u80fd\u8d2d\u7269\"}}"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->e(Ljava/lang/String;)V

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->f(Ljava/lang/String;)V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->g(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/alipay/pushsdk/data/b;

    invoke-direct {v3}, Lcom/alipay/pushsdk/data/b;-><init>()V

    const-string/jumbo v4, "adji8w"

    invoke-virtual {v3, v4}, Lcom/alipay/pushsdk/data/b;->a(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/pushsdk/data/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->a(Lcom/alipay/pushsdk/data/b;)V

    new-instance v1, Lcom/alipay/pushsdk/c/b;

    iget-object v2, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/pushsdk/c/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    iget-object v1, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/a;->a()V

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUserId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    iget-object v1, p0, Lcom/alipay/pushsdk/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "delUserId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", curUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/a;->a()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
