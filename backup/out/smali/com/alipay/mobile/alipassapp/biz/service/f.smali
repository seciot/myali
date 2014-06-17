.class public Lcom/alipay/mobile/alipassapp/biz/service/f;
.super Landroid/os/Handler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/alipassapp/biz/a/a;

.field private c:Lcom/alipay/mobile/alipassapp/biz/common/a;

.field private d:Lcom/alipay/mobile/alipassapp/biz/a;

.field private e:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/service/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->d:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getPassId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v3, "1501"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v2, "1502"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setStatus(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;)Z

    move-result v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alipass\u7f13\u5b58\u5220\u9664\u6210\u529f\uff0c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const-string/jumbo v1, "\u66f4\u65b0\u72b6\u6001\u6210\u529f"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; AlipassListCache is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getId()I

    move-result v0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const-string/jumbo v1, "\u66f4\u65b0\u72b6\u6001\u5931\u8d25"

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->c:Lcom/alipay/mobile/alipassapp/biz/common/a;

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/a;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->d:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-boolean v1, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setStatus(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)Z

    move-result v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alipass\u79bb\u7ebf\u5220\u9664\u6210\u529f\uff0c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    const-string/jumbo v1, "\u66f4\u65b0\u72b6\u6001\u6210\u529f"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; AlipassOffline is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getId()I

    move-result v0

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "\u66f4\u65b0\u72b6\u6001\u5931\u8d25"

    goto :goto_2

    :cond_8
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setStatus(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)Z

    move-result v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alipass\u79bb\u7ebf\u5220\u9664\u6210\u529f\uff0c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    const-string/jumbo v1, "\u66f4\u65b0\u72b6\u6001\u6210\u529f"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; AlipassOffline is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v1, "\u66f4\u65b0\u72b6\u6001\u5931\u8d25"
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, -0x3e8

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v3, p1, v1, p2}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/biz/service/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/service/f;->a(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string/jumbo v0, "userId"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->c:Lcom/alipay/mobile/alipassapp/biz/common/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/common/a;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alipay/mobile/alipassapp/biz/common/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->c:Lcom/alipay/mobile/alipassapp/biz/common/a;

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->d:Lcom/alipay/mobile/alipassapp/biz/a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v5}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->d:Lcom/alipay/mobile/alipassapp/biz/a;

    :cond_4
    const-string/jumbo v0, "action"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->f:I

    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->f:I

    if-nez v0, :cond_5

    :try_start_0
    const-string/jumbo v0, "delaytime"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->e:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v5, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/alipassapp/biz/service/d;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/service/d;

    const-string/jumbo v5, "support_interval"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/service/d;->a(Z)V

    :cond_5
    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->f:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->f:I

    if-ne v0, v2, :cond_8

    :cond_6
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v0, v4

    :goto_3
    add-int/lit8 v5, v0, 0x1

    const/16 v4, 0x3e8

    if-gt v0, v4, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, v6, v2, v3}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;J)Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getTimestamp()J

    move-result-wide v3

    invoke-direct {p0, v6}, Lcom/alipay/mobile/alipassapp/biz/service/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "alipass:\u4e0a\u4f20\u5931\u8d25\uff0c\u4e0d\u5408\u6cd5\u7528\u6237\uff0c\u6587\u4ef6\u8def\u5f84\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    :cond_8
    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->f:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->f:I

    if-ne v0, v9, :cond_a

    :cond_9
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-direct {p0, v6, v0}, Lcom/alipay/mobile/alipassapp/biz/service/f;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-direct {p0, v6, v0}, Lcom/alipay/mobile/alipassapp/biz/service/f;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    :cond_a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_b
    move v0, v4

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :cond_c
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "alipass\u5f00\u59cb\u4e0a\u4f20\uff1a"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->c:Lcom/alipay/mobile/alipassapp/biz/common/a;

    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/alipassapp/biz/common/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_11

    :try_start_2
    iget-object v7, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->d:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/alipay/mobile/alipassapp/biz/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v7, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;->success:Z

    if-eqz v7, :cond_e

    sget-object v7, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "alipass\u4e0a\u4f20\u6210\u529f\uff0cpassId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;->getPassId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setStatus(I)V

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)Z

    move-result v0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "alipass:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_d

    const-string/jumbo v0, "\u66f4\u65b0\u79bb\u7ebf\u6570\u636e\u72b6\u6001\u6210\u529f"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v5

    move-wide v10, v3

    move-wide v2, v10

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v0, "\u66f4\u65b0\u79bb\u7ebf\u6570\u636e\u72b6\u6001\u5931\u8d25"

    goto :goto_6

    :cond_e
    if-eqz v0, :cond_f

    iget-boolean v7, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;->success:Z

    if-nez v7, :cond_f

    const-string/jumbo v7, "1511"

    iget-object v8, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    sget-object v7, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "alipass:\u670d\u52a1\u5668\u8fd4\u56de\u5931\u8d25\uff0c\u4e0a\u4f20\u5931\u8d25\uff0c\u5220\u9664\u672c\u5730\u6570\u636e\uff0cResultCode="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setStatus(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)Z

    move-result v0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "alipass:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_10

    const-string/jumbo v0, "\u66f4\u65b0\u79bb\u7ebf\u6570\u636e\u72b6\u6001\u6210\u529f"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_f
    move v0, v5

    move-wide v10, v3

    move-wide v2, v10

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v0, "\u66f4\u65b0\u79bb\u7ebf\u6570\u636e\u72b6\u6001\u5931\u8d25"

    goto :goto_7

    :cond_11
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setStatus(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/f;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)Z

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u4e0a\u4f20\u5931\u8d25\uff0c\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u6587\u4ef6\u8def\u5f84\uff1a"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    move v0, v5

    move-wide v10, v3

    move-wide v2, v10

    goto/16 :goto_3

    :catch_2
    move-exception v0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rpc\u5f02\u5e38\uff0c\u4e0a\u4f20\u5931\u8d25\uff0ccode="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v5

    move-wide v10, v3

    move-wide v2, v10

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move v0, v5

    move-wide v10, v3

    move-wide v2, v10

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move v0, v5

    move-wide v10, v3

    move-wide v2, v10

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_1

    :cond_12
    move-object v0, v1

    goto/16 :goto_5
.end method
