.class public Lcom/taobao/securityjni/UtilWX;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/intelface/IAttachImpl;
.implements Lcom/taobao/securityjni/intelface/IUtilWX;


# instance fields
.field private a:Lcom/taobao/securityjni/intelface/IUtilWX;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    new-instance v0, Lcom/taobao/securityjni/impl/CImplUtilWX;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplUtilWX;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;Lcom/taobao/securityjni/intelface/IUtilWX;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    if-nez p2, :cond_0

    new-instance v0, Lcom/taobao/securityjni/impl/CImplUtilWX;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplUtilWX;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    goto :goto_0
.end method


# virtual methods
.method public AttachImplObject(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/taobao/securityjni/intelface/IUtilWX;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/taobao/securityjni/intelface/IUtilWX;

    iput-object p1, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    :cond_0
    return-void
.end method

.method public EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IUtilWX;->EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EncryptData([B[B)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IUtilWX;->EncryptData([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IUtilWX;->Get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IUtilWX;->Get(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get([B)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IUtilWX;->Get([B)[B

    move-result-object v0

    return-object v0
.end method

.method public Get([BLcom/taobao/securityjni/tools/DataContext;)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IUtilWX;->Get([BLcom/taobao/securityjni/tools/DataContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public Put(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IUtilWX;->Put(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Put(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IUtilWX;->Put(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Put([B)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1}, Lcom/taobao/securityjni/intelface/IUtilWX;->Put([B)[B

    move-result-object v0

    return-object v0
.end method

.method public Put([BLcom/taobao/securityjni/tools/DataContext;)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->a:Lcom/taobao/securityjni/intelface/IUtilWX;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/IUtilWX;->Put([BLcom/taobao/securityjni/tools/DataContext;)[B

    move-result-object v0

    return-object v0
.end method
