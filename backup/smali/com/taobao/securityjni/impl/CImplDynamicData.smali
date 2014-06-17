.class public Lcom/taobao/securityjni/impl/CImplDynamicData;
.super Lcom/taobao/securityjni/impl/SESecurity;

# interfaces
.implements Lcom/taobao/securityjni/intelface/IDynamicData;


# instance fields
.field private context:Landroid/content/ContextWrapper;

.field private currentSp:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/taobao/securityjni/impl/SESecurity;-><init>()V

    iput-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    iput-object p1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    const-string/jumbo v2, "DynamicData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method private GetImeiPR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/securityjni/tools/PhoneInfo;->getSecImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetImsiPR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/securityjni/tools/PhoneInfo;->getSecImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    const-string/jumbo v2, "DynamicData"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    :cond_2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private InitGlobalData()V
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method private SetString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    const-string/jumbo v1, "DynamicData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private native getBooleanNative(Ljava/lang/String;)Z
.end method

.method private native getByteArrayNative(Ljava/lang/String;)[B
.end method

.method private native getFloatNative(Ljava/lang/String;)F
.end method

.method private native getIntNative(Ljava/lang/String;)I
.end method

.method private native getLongNative(Ljava/lang/String;)J
.end method

.method private native getStringByte(Ljava/lang/String;)[B
.end method

.method private native putBooleanNative(Ljava/lang/String;Z)I
.end method

.method private native putByteArrayNative(Ljava/lang/String;[B)I
.end method

.method private native putFloatNative(Ljava/lang/String;F)I
.end method

.method private native putIntNative(Ljava/lang/String;I)I
.end method

.method private native putLongNative(Ljava/lang/String;J)I
.end method

.method private native putStringNative(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    const-string/jumbo v1, "DynamicData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->currentSp:Ljava/lang/ref/WeakReference;

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v1, "getBoolean"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "key null"

    invoke-static {v1, v2, v3}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->getBooleanNative(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "getBoolean"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v1, "getByteArray"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "key null"

    invoke-static {v1, v2, v3}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->getByteArrayNative(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "getByteArray"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4

    const/high16 v0, -0x4080

    if-nez p1, :cond_1

    const-string/jumbo v1, "getFloat"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "key null"

    invoke-static {v1, v2, v3}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->getFloatNative(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "getFloat"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_1

    const-string/jumbo v1, "getInt"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "key null"

    invoke-static {v1, v2, v3}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->getIntNative(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "getInt"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_1

    const-string/jumbo v2, "getLong"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "key null"

    invoke-static {v2, v3, v4}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v2, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v2}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->getLongNative(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "getLong"

    invoke-static {v3, v2}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v1, "getString"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "key null"

    invoke-static {v1, v2, v3}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->getStringByte(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "getString"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public putBoolean(Ljava/lang/String;Z)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/impl/CImplDynamicData;->putBooleanNative(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "putBoolean-1"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putByteArray(Ljava/lang/String;[B)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/impl/CImplDynamicData;->putByteArrayNative(Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "putByteArray-1"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/impl/CImplDynamicData;->putFloatNative(Ljava/lang/String;F)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "putFloat-1"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/impl/CImplDynamicData;->putIntNative(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "putInt-1"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/securityjni/impl/CImplDynamicData;->putLongNative(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "putLong-1"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOInitCheck()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplDynamicData;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v1}, Lcom/taobao/securityjni/impl/CImplDynamicData;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/impl/CImplDynamicData;->putStringNative(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "putString-1"

    invoke-static {v2, v1}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
