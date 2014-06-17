.class public Lcom/alipay/pushsdk/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/c/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Z)Lcom/alipay/pushsdk/data/NotifierInfo;
    .locals 6

    new-instance v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;-><init>()V

    const-string/jumbo v1, "1127"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "snd"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->d(Ljava/lang/String;)V

    const-string/jumbo v1, "uri"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->e(Ljava/lang/String;)V

    const-string/jumbo v1, "style"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->f(Ljava/lang/String;)V

    const-string/jumbo v1, "bizType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->g(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/pushsdk/data/b;

    invoke-direct {v1}, Lcom/alipay/pushsdk/data/b;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "notificationId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/data/b;->b(Ljava/lang/String;)V

    const-string/jumbo v2, "notificationId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/data/b;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->a(Lcom/alipay/pushsdk/data/b;)V

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processMsgList() curPerMsgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", bizType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", uri="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", title="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", content="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string/jumbo v2, "notificationMissionId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/data/b;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "notificationId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/data/b;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "k"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/data/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mService"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getMobileDataEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final a()Lcom/alipay/pushsdk/data/a;
    .locals 5

    new-instance v0, Lcom/alipay/pushsdk/data/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/a;-><init>()V

    iget-object v1, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v1

    const-string/jumbo v2, "pushCfgId"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iput-object v2, v0, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    :cond_0
    const-string/jumbo v2, "XMPP_HOST"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iput-object v2, v0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    :cond_1
    const-string/jumbo v2, "XMPP_PORT"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/alipay/pushsdk/data/a;->c:I

    :cond_2
    const-string/jumbo v2, "PROTOCOL_VERSION"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/alipay/pushsdk/data/a;->f:I

    :cond_3
    const-string/jumbo v2, "SSL_USED"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iput-object v2, v0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    :cond_4
    const-string/jumbo v2, "ZIP_FLAG"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->e:Ljava/lang/String;

    :cond_5
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cfgId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", domain:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alipay/pushsdk/data/a;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ssl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", protoVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alipay/pushsdk/data/a;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p1}, Lcom/alipay/pushsdk/data/NotifierInfo;->g()Lcom/alipay/pushsdk/data/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/alipay/pushsdk/data/f;

    iget-object v2, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/pushsdk/data/f;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v2, Lcom/alipay/pushsdk/push/h;

    iget-object v3, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/data/c;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/data/c;->b(Lcom/alipay/pushsdk/data/NotifierInfo;)V

    sget-object v0, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "processMsgList() will show msg."

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "notifier_parcelable"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "showMsgDetail() sendBroadcast!"

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/data/e;

    iget-object v2, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/pushsdk/data/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    sget-object v2, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "processMsgList() Drop the Packet!"

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processMsgList() curMissionId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", curPerMsgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", curPubMsgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/alipay/pushsdk/data/a;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "pushCfgId"

    iget-object v2, p1, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "XMPP_HOST"

    iget-object v2, p1, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "XMPP_PORT"

    iget v2, p1, Lcom/alipay/pushsdk/data/a;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "PROTOCOL_VERSION"

    iget v2, p1, Lcom/alipay/pushsdk/data/a;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "SSL_USED"

    iget-object v2, p1, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "ZIP_FLAG"

    iget-object v2, p1, Lcom/alipay/pushsdk/data/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/pushsdk/data/a;

    invoke-direct {v1}, Lcom/alipay/pushsdk/data/a;-><init>()V

    iput-object p2, v1, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "domain"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alipay/pushsdk/data/a;->c:I

    const-string/jumbo v2, "ssl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    const-string/jumbo v2, "compress"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/pushsdk/data/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alipay/pushsdk/data/a;->f:I

    const-string/jumbo v2, "ctrlTime"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alipay/pushsdk/push/o;

    iget-object v3, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/o;->b(Ljava/lang/String;)V

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processCfgData() cfgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", domain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", port="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/alipay/pushsdk/data/a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", protoVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/alipay/pushsdk/data/a;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", encryptFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", zipFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/alipay/pushsdk/data/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", timeCtrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/pushsdk/c/b;->a(Lcom/alipay/pushsdk/data/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "processCfgData() cfgData is null!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processMsgList() pubFlag:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", msgLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/alipay/pushsdk/c/b;->a(Lorg/json/JSONObject;Z)Lcom/alipay/pushsdk/data/NotifierInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alipay/pushsdk/c/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "processMsgList() msgData is null!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "Android"

    iget-object v1, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/c/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/i;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/pushsdk/c/i;->c()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "IMEI"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lcom/alipay/pushsdk/push/h;

    iget-object v4, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/h;->c()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "installChannel"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "productVersion"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/h;->d()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "utdId"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/h;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mspTid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/c/i;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "productId"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "pushVersion"

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "osType"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "osVersion"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-class v0, Landroid/os/Build;

    const-string/jumbo v3, "MANUFACTURER"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v3, Landroid/os/Build;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :goto_0
    :try_start_2
    const-string/jumbo v1, "manufacturer"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "connectType"

    iget-object v1, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "mobileStatus"

    iget-object v1, p0, Lcom/alipay/pushsdk/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/c/b;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "regionIP"

    invoke-static {}, Lcom/alipay/pushsdk/c/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/c/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getRequestObj() requestData="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
