.class public Lcom/taobao/securityjni/DynamicDataStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/intelface/IAttachImpl;
.implements Lcom/taobao/securityjni/intelface/IDynamicData;


# instance fields
.field private dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    new-instance v0, Lcom/taobao/securityjni/impl/CImplDynamicData;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplDynamicData;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;Lcom/taobao/securityjni/intelface/IDynamicData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    if-nez p2, :cond_0

    new-instance v0, Lcom/taobao/securityjni/impl/CImplDynamicData;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplDynamicData;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    goto :goto_0
.end method

.method static getStringValue(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/taobao/securityjni/DynamicDataStore;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/DynamicDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AttachImplObject(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/taobao/securityjni/intelface/IDynamicData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/taobao/securityjni/intelface/IDynamicData;

    iput-object p1, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0}, Lcom/taobao/securityjni/intelface/IDynamicData;->clearAll()V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IDynamicData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IDynamicData;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IDynamicData;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IDynamicData;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IDynamicData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IDynamicData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IDynamicData;->putBoolean(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public putByteArray(Ljava/lang/String;[B)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IDynamicData;->putByteArray(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IDynamicData;->putFloat(Ljava/lang/String;F)I

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IDynamicData;->putInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/securityjni/intelface/IDynamicData;->putLong(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->dynDataImpl:Lcom/taobao/securityjni/intelface/IDynamicData;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IDynamicData;->putString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
