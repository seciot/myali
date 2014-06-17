.class public Lcom/taobao/securityjni/impl/CImplStaticData;
.super Lcom/taobao/securityjni/impl/SESecurity;

# interfaces
.implements Lcom/taobao/securityjni/intelface/IStaticData;


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Lcom/taobao/securityjni/impl/SESecurity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/impl/CImplStaticData;->context:Landroid/content/ContextWrapper;

    iput-object p1, p0, Lcom/taobao/securityjni/impl/CImplStaticData;->context:Landroid/content/ContextWrapper;

    return-void
.end method

.method private InitGlobalData()V
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplStaticData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method private native getAppKeyByte(Lcom/taobao/securityjni/tools/DataContext;)[B
.end method

.method private native getExtraDataByte(Ljava/lang/String;)[B
.end method

.method private native getMMPidByte()[B
.end method

.method private native getTtidByte()[B
.end method


# virtual methods
.method public getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplStaticData;->SOInitCheck()V

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplStaticData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/impl/CImplStaticData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/impl/CImplStaticData;->getAppKeyByte(Lcom/taobao/securityjni/tools/DataContext;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getAppKey"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtraData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplStaticData;->SOInitCheck()V

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplStaticData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/impl/CImplStaticData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/impl/CImplStaticData;->getExtraDataByte(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getExtraData"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMMPid()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplStaticData;->SOInitCheck()V

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplStaticData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/impl/CImplStaticData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/taobao/securityjni/impl/CImplStaticData;->getMMPidByte()[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getMMPid"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplStaticData;->SOInitCheck()V

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplStaticData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/impl/CImplStaticData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/taobao/securityjni/impl/CImplStaticData;->getTtidByte()[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getTtid"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
