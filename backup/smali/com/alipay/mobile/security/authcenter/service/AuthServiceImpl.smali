.class public Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# instance fields
.field a:Z

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    return-void
.end method

.method private a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f00\u59cb\u5524\u8d77\u767b\u9646\u754c\u9762"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000008"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "innerAuth \u7ebf\u7a0b key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6dfb\u52a0\u7b49\u5f85\u7ebf\u7a0b key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "wait"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rpc\u767b\u5f55\u524d\u68c0\u67e5\u5f53\u524d\u7528\u6237\u662f\u5426\u5df2\u7ecf\u767b\u5f55  loginContext.isSkipCheckIsLogin()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->isLogin()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "canceled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u767b\u5f55\u5b8c\u6210\u4e14\u767b\u5f55\u5931\u8d25\uff0c\u8bbe\u7f6e\u7b49\u5f85\u7ebf\u7a0b \u4e3a\u53d6\u6d88\u72b6\u6001 key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    const-string/jumbo v5, "canceled"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    invoke-static {}, Lcom/alipay/mobile/common/utils/ThreadUtil;->checkMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call Auth Service ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f00\u59cb\u767b\u5f55\u3002loginContext="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->f()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->b()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->b()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v0

    :goto_1
    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showAppflag ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isLoginSucess="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " loginContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/service/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/service/c;-><init>(Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u767b\u5f55\u7ed3\u679c\u3002context="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    return v0

    :cond_3
    move v1, v0

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v3, "false"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto/16 :goto_1

    :cond_6
    move v1, v2

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->b()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->b()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method private d(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->f(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized e(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->isLogin()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "canceled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->f(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/authcenter/service/d;->b()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v0, 0x3e8

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;->queryUserInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    move v0, v6

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u514d\u767b\u670d\u52a1\u5931\u8d25 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6e05\u9664\u672c\u5730\u6240\u4ee5\u7528\u6236\u514d\u767b\u72c0\u614b userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateUserAutoLoginFlag(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    move v0, v6

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Ljava/lang/Boolean;)V

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public auth()Z
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->auth(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public auth(Landroid/os/Bundle;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/service/d;

    invoke-direct {v1}, Lcom/alipay/mobile/security/authcenter/service/d;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    return v0
.end method

.method public autoAuth()Z
    .locals 5

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->clearAuthLoginFlag()V

    invoke-static {}, Lcom/alipay/mobile/common/utils/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call Auth Service ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5ba2\u6237\u7aef\u514d\u767b\u8bf7\u6c42\u7ebf\u7a0b "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6dfb\u52a0\u7b49\u5f85\u7ebf\u7a0b (\u514d\u767b\u767b\u5f55)key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "wait"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/alipay/mobile/security/authcenter/service/d;

    invoke-direct {v1}, Lcom/alipay/mobile/security/authcenter/service/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e(Lcom/alipay/mobile/security/authcenter/service/d;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b(\u514d\u767b\u767b\u5f55) key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b(\u514d\u767b\u767b\u5f55) key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->e:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelLogin()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->notifyUnlockLoginApp(ZZ)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000008"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearAuthLoginFlag()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    return-void
.end method

.method public clearLoginUserInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method public gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v2

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginState()Z

    move-result v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->clearAuthLoginFlag()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method public isLogin()Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginState()Z

    move-result v0

    return v0
.end method

.method public notifyUnlockGestureApp()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyUnlockLoginApp(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public queryLatelyLoginUser()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u7528\u6237 currentUserLoginId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u7528\u6237 currentUserId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_2
    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public rpcAuth()Z
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->clearAuthLoginFlag()V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/service/d;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/service/d;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/d;->e()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    return v0
.end method

.method public showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->clearAuthLoginFlag()V

    new-instance v0, Lcom/alipay/mobile/security/authcenter/service/d;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/service/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/authcenter/service/d;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/d;->g()V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/d;->i()V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/d;->c()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->a(Lcom/alipay/mobile/security/authcenter/service/d;)Z

    move-result v0

    return v0
.end method
